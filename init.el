(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(setq make-backup-files nil)
(delete-selection-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(setq inhibit-splash-screen 1)
(setq make-backup-files nil)

(load-theme 'nord 1)
(setq default-frame-alist
    '((height . 80) (width . 120) (menu-bar-lines . 10) (tool-bar-lines . 0)))

(add-to-list 'default-frame-alist '(font . "Hack-11" ))
(set-face-attribute 'default t :font "Hack-11" )

;;remove the bacground color in vue-mode
;; (add-hook 'mmm-mode-hook
;;           (lambda ()
;;             (set-face-background 'mmm-default-submode-face nil)))

(setq-default c-basic-offset 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" default))
 '(package-selected-packages '(format-all vue-mode js2-mode web-mode nord-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; web-mode configs
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))

