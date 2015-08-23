;; install all of the packages!

;; make sure we are fresh
(package-refresh-contents)

;; the list of packages
(setq skon-packages '(web-mode emmet-mode expand-region multiple-cursors))

;; loop through the list and install the packages we haven't installed
(dolist (pkg skon-packages)
    (when (not (package-installed-p pkg))
        (package-install pkg)))
