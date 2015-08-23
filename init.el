;; my config - a whole bunch of copy pastes and random customize options + some of my own code (!)

;; if this is your first time:
;; M-x load-file RET ~/.emacs.d/firstinstall.el
;; to install the packages

;; what this config does:
;; uses 4 spaces for indentation
;; wombat theme
;; enables MELPA
;; sets up web-mode, emmet-mode
;; uses the classic C-= keybinding for expand-region
;; uses "default" keybindings for multiple-cursors

(custom-set-variables
 '(backup-directory-alist (quote (("." . "backups")))) ;; put the backups away nicely
 '(custom-enabled-themes (quote (wombat))) ;; wombat is pretty good
 '(indent-tabs-mode nil) ;; I like spaces
 '(inhibit-startup-screen t)
 '(lisp-body-indent 4)
 '(sgml-basic-offset 4)
 '(tool-bar-mode nil))
(custom-set-faces

 )

;; MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
;;(package-initialize) ;; not (yet) necessary
;; end MELPA

;; web-mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)) ;; load html files with web-mode
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode)) ;; load php files with web-mode

;; emmet
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation
(add-hook 'web-mode-hook 'emmet-mode) ;; emmet for web-mode

;; expand region
(global-set-key (kbd "C-=") 'er/expand-region)

;; multiple-cursors (the "defaults" are fine for me)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;; enabling disabled things
(put 'downcase-region 'disabled nil)
