(setq inhibit-startup-screen t)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(set-frame-font "FiraCode Nerd Font 14" nil t)

(setq gc-cons-threshold 100000000) ; 100 mb
(setq read-process-output-max (* 1024 1024)) ; 1mb

(global-auto-revert-mode t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq auto-save-file-name-transforms `((".*" "~/.saves/" t)))

(setq custom-file (locate-user-emacs-file "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'package)

(add-to-list 'package-archives
	         '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(use-package vertico
  :ensure t
  :init
  (vertico-mode))


(use-package marginalia
  :after vertico
  :ensure t
  :init
    (marginalia-mode))

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)))

(use-package evil
  :ensure t
  :init
  (evil-mode 1))

(use-package god-mode
  :ensure t)

(use-package modus-themes
  :ensure t
  :init
  (load-theme 'modus-operandi-tinted))

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(use-package org
  :config
  (add-hook 'org-mode-hook
	    (lambda ()
	      (define-key evil-normal-state-local-map
			  (kbd "gd") 'org-open-at-point)
	      (define-key evil-normal-state-local-map
			  (kbd "C-i") 'org-toggle-inline-images))))

(use-package d-mode
  :ensure t)

(use-package eglot)

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs '((d-mode) "~/.local/bin/serve-d" "--loglevel=all")))
