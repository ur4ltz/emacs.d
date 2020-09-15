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
;;        ("melpa-stable" . "http://stable.melpa.org/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")
	("org" . "http://orgmode.org/elpa/")))

(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package)
  (message "Installl use-package.el")
  (package-refresh-contents)
  (package-install 'use-package))

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
(require 'cool-global-keybindings)
(require 'cool-magit)
(require 'cool-evil)
(require 'cool-complete)
(require 'cool-markdown)

;;; init.el ends here
