;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(specifications->manifest
  (list "awscli"
        "emacs-bluetooth"
        "curl"
        "direnv"
        "emacs-with-native-comp"
        "emacs-envrc"
        "emacs-emms"
        "emacs-exiftool"
        "emacs-modus-themes"
        "emacs-request"
        "eshell-prompt-extras"
        "ffmpeg"
        "file"
        "font-hack"
        "freerdp"
        "gdb"
        "google-cloud-sdk"
        "mktorrent"
        "mpd"
        "mpv"
        "openvpn"
        "password-store"
        "emacs-password-store"
        "emacs-password-store-otp"
        "pass-git-helper"
        "pass-otp"
        "pass-rotate"
        "pass-tomb"
        "podman"
        "emacs-powershell"
        "python"
        "rsync"
        "socat"
        "sshfs"
        "wireguard-tools"
        "yt-dlp"))

;;; dev-phone-manifest.scm ends here