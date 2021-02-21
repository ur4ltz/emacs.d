;;; init.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(if (version< emacs-version "27")
    (package-initialize))

(setq user-full-name "Andy Shevchenko")
(setq user-mail-address "ur4ltz@gmail.com")

(require 'package)

(setq package-archives
      '(
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ;;("melpa-stable" . "http://stable.melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;; Use 'use-package' to manage packages
(unless (package-installed-p 'use-package)
  (message "Installl use-package.el")
  (package-refresh-contents)
  (package-install 'use-package))

(use-package use-package
  :config
  (setq use-package-always-ensure t
        use-package-always-demand t))

(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-now))

(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load-file custom-file))

(require 'cool-core)
(require 'cool-dashboard)
(require 'cool-ui)
(require 'cool-modeline)
;;(require 'cool-selectrum)
(require 'cool-ivy)
(require 'cool-winum)
(require 'cool-treemacs)
(require 'cool-global-keybindings)
(require 'cool-projectile)
(require 'cool-magit)
(require 'cool-evil)
(require 'cool-complete)
(require 'cool-flycheck)
(require 'cool-lsp)
(require 'cool-vterm)
;;
(require 'cool-telega)
;; Language.
(require 'cool-markdown)
(require 'cool-lua)
(require 'cool-go)
(require 'cool-lisp)

;;; init.el ends here
