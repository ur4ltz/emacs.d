;;; init.el ---
;;
;;
;;

;;; Commentary:
;; 

;;; Code:
(if (version< emacs-version "27")
    (package-initialize))
(require 'package)
(setq package-archives
      '(
	("melpa" . "http://melpa.org/packages/")
        ("melpa-stable" . "http://stable.melpa.org/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")
	("org" . "http://orgmode.org/elpa/")))

(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package)
  (message "Installl use-package.el")
  (package-refresh-contents)
  (package-install 'use-package))

(setq inhibit-startup-screen t)

(line-number-mode t)
(column-number-mode t)

;; Номера строк
(global-linum-mode t)
;; Парные скобки
(show-paren-mode t)

(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))


(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load-file custom-file))

(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox-dark-hard t))

;(use-package srcery-theme
;  :ensure t)


(use-package smart-mode-line-atom-one-dark-theme
  :ensure t)

;; smart-mode-linne
(use-package smart-mode-line
;;  :ensure t
;;  :defer 1
;;  :functions (sml/setup)
  :config
  (setq sml/theme 'atom-one-dark)
  (sml/setup))

(require 'cool-core)
(require 'cool-ui)
(require 'cool-complete)

;;; init.el ends here
