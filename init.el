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
;; sets up js2-mode and uses keybindings for its bounce-indent
;; enables ido-mode and its flex matching
;; enables show-paren-mode

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("." . "backups"))))
 '(custom-enabled-themes (quote (wombat)))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(lisp-body-indent 4)
 '(sgml-basic-offset 4)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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

;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)) ;; use js2-mode for js files
(global-set-key (kbd "<C-tab>") 'js2-indent-bounce)
(global-set-key (kbd "<backtab>") 'js2-indent-bounce-backward)

;; enabling disabled things
(put 'downcase-region 'disabled nil)
