(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(setq make-backup-files nil)
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
      '((height . 80) (width . 120) (menu-bar-lines . 10) (tool-bar-lines . 0)))

(add-to-list 'default-frame-alist '(font . "Hack-11" ))
(set-face-attribute 'default t :font "Hack-11" )

;;remove the bacground color in vue-mode
;; (add-hook 'mmm-mode-hook
;;           (lambda ()
;;             (set-face-background 'mmm-default-submode-face nil)))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; try
(use-package try
  :ensure t)

;; which-key
(use-package which-key
  :ensure t)

(add-to-list 'load-path "path/to/which-key.el")
(require 'which-key)
(which-key-mode)

;; personally like this one
(use-package nord-theme
  :ensure t)

(load-theme 'nord 1)

(use-package web-mode
  :ensure t)

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
  :ensure t)

;; web-mode configs
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))

