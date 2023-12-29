(use-modules (gnu) (guix) (guix packages) (srfi srfi-1))
(use-service-modules mcron networking shepherd ssh)
(use-package-modules bootloaders certs package-management)

;;; Code:

(operating-system
  (host-name "network")
  (users (cons* (user-account
                  (name "route")
                  (comment "Routing")
                  (group "users")
                  (shell (file-append bash "/bin/bash"))
                  (home-directory "/home/route")
                  (supplementary-groups
                    '("netdev" "wheel")))
                %base-user-accounts))
  (bootloader
    (bootloader-configuration
      (bootloader grub-efi-bootloader)
      (target "/boot/efi")
      (keyboard-layout keyboard-layout)))
  (mapped-devices
    (list (mapped-device
            (source
              (uuid ""))
            (target "cryptroot")
            (type luks-device-mapping))))
  (file-systems
    (cons* (file-system
             (mount-point "/")
             (device "/dev/mapper/cryptroot")
             (type "bcachefs")
             (dependencies mapped-devices))
           (file-system
             (mount-point "/boot/efi")
             (device (uuid "" 'fat32))
             (type "vfat"))
           %base-file-systems))
  (packages
    (append
      (list
        i2pd
        ppp)
        %my-base-packages))
  (services
    (append
      (list
        (service static-networking-service-type
          (list
            (static-networking
              (addresses
                (list
                 (network-address
                  (device "eno1")
                  (value "10.0.0.1/24"))))
              (routes
                (list
                  (network-route
                   (destination "default")
                   (gateway "10.10.10.10"))))
              (name-servers '("10.10.10.10")))))
        %base-services
        %my-base-services))))

;;; network-config.scm ends here
