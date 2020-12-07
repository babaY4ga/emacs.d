;;; Code:

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-directory-alist (quote (("." . "~/.backups"))))

(delete-selection-mode 1)
(show-paren-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(setq inhibit-splash-screen 1)
(setq make-backup-files nil)
(setq-default c-basic-offset 4)
(setq default-frame-alist
      '((height . 65) (width . 100) (menu-bar-lines . 10) (tool-bar-lines . 0)))

(add-to-list 'default-frame-alist '(font . "Hack-11" ))
(set-face-attribute 'default t :font "Hack-11" )

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;; personally like this one
(use-package nord-theme
  :ensure t)
(load-theme 'nord 1)

(use-package spacegray-theme
  :ensure t)
;; (load-theme 'spacegray 1)

;; try
(use-package try
  :ensure t)

;; which-key
(use-package which-key
  :ensure t)

(add-to-list 'load-path "path/to/which-key.el")
(require 'which-key)
(which-key-mode)

;; fly-check
(use-package flycheck
  :ensure t)
(global-flycheck-mode)

;; web-mode configs
(use-package web-mode
  :ensure t)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))

(use-package js2-mode
  :ensure t)

;; swiper stuff
;; should install councel before installing swiper
(use-package counsel
  :ensure t)

(use-package swiper
  :ensure t
  :config(progn
	   (ivy-mode 1)
	   (setq ivy-use-virtual-buffers t)
	   (setq enable-recursive-minibuffers t)
	   ;; enable this if you want `swiper' to use it
	   ;; (setq search-default-mode #'char-fold-to-regexp)
	   (global-set-key "\C-s" 'swiper)
	   (global-set-key (kbd "C-c C-r") 'ivy-resume)
	   (global-set-key (kbd "<f6>") 'ivy-resume)
	   (global-set-key (kbd "M-x") 'counsel-M-x)
	   (global-set-key (kbd "C-x C-f") 'counsel-find-file)
	   (global-set-key (kbd "<f1> f") 'counsel-describe-function)
	   (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
	   (global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
	   (global-set-key (kbd "<f1> l") 'counsel-find-library)
	   (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
	   (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
	   (global-set-key (kbd "C-c g") 'counsel-git)
	   (global-set-key (kbd "C-c j") 'counsel-git-grep)
	   (global-set-key (kbd "C-c k") 'counsel-ag)
	   (global-set-key (kbd "C-x l") 'counsel-locate)
	   (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
	   (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
	   ))

;; auto-complete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

;; avy
(use-package avy
  :ensure t
  :bind ("M-g e" . avy-goto-word-0))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a6fc75241bcc7ce6f68dcfd0de2d4c4bd804d0f8cd3a9f08c3a07654160e9abe" "62b5c93e1dab499efc36ed0a1955d21d859efd8582da7bacc74a8f95a86f6c41" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" default))
 '(package-selected-packages
   '(spacegray-theme which-key web-mode use-package try paredit nord-theme js2-mode counsel avy auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
