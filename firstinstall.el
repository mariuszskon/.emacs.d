;; install all of the packages!

;; so that some emacs versions don't complain
(package-initialize)

;; make sure we are fresh
(package-refresh-contents)

;; the list of packages
(setq skon-packages '(web-mode emmet-mode expand-region multiple-cursors js2-mode))

;; loop through the list and install the packages we haven't installed
(dolist (pkg skon-packages)
    (when (not (package-installed-p pkg))
        (package-install pkg)))
