;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

;;; Code:

(specifications->manifest
  (list "adb"
        "aflplusplus"
        "ascii"
        "binutils"
        "binwalk"
        "buildah"
        "curl"
        "diffoscope"
        "my-emacs-next"
        "emacs-bluetooth"
        "emacs-dape"
        "emacs-ellama"
        "emacs-ement"
        "emacs-emms"
        "emacs-forge"
        "emacs-hyperbole"
        "emacs-mentor"
        "emacs-modbus"
        "emacs-org-caldav"
        "emacs-org-timeblock"
        "emacs-plz"
        "emacs-x509-mode"
        "emacs-yasnippet"
     ;; "ffmpeg" propagated by mpv
        "file"
        "flashrom"
        "fontconfig"
        "font-iosevka-term-slab"
        "freerdp"
        "gcc"
        "gdb"
        "gnuradio"
        "go"
        "delve" ;; go debugger
        "graphviz"
        "guile-aws"
        "imagemagick"
        "iw"
        "libfaketime"
        "librewolf"
        "mariadb"
        "monero"
        "mpd"
        "mpv"
        "mysql"
        "node"
        "notmuch"
        "emacs-notmuch"
        "emacs-consult-not-much"
        "openjdk"
        "openssh"
        "openvpn"
        "patch"
        "patchelf"
        "poke"
        "emacs-poke-mode"
        "pwntools"
        "python-debugpy"
        "python-ipython"
        "python-scapy"
        "qemu"
        "rust"
        "sigrock-cli"
        "skopeo"
        "socat"
        "sshfs"
        "tesseract-ocr"
        "tiled"
        "tree-sitter-c"
        "tree-sitter-cpp"
        "tree-sitter-go"
        "tree-sitter-lua"
        "tree-sitter-org"
        "tree-sitter-php"
        "tree-sitter-rust"
        "umoci"
        "upx"
        "valgrind"
        "wine64"
        "wireguard-tools"
        "wireshark"
        "yt-dlp"))

;;; dev-phone-manifest.scm ends here
