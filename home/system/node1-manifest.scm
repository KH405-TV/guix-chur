;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(use-modules (guix packages) (gcrypt hash))
(use-modules (gnu packages bittorrent))

(define my-libtorrent
  (package
    (inherit libtorrent)
    (version "0.13.8")
    (source (sha256
               (base32
                "10z9i1rc41cmmi7nx8k7k1agsx6afv09g9cl7g9zr35fyhl5l4gd")))))    

(define my-rtorrent
  (package
    (inherit rtorrent)
    (version "0.9.8")
    (source (sha256
               (base32
                "1bs2fnf4q7mlhkhzp3i1v052v9xn8qa7g845pk9ia8hlpw207pwy")))
    (inputs (list my-libtorrent))))

(specifications->manifest
  (list "calibre"
        "podman"
        "qemu"
        "sshfs"
        "my-rtorrent"))

;;; node1-manifest.scm ends here