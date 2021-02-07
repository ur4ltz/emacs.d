;;; cool-core.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(setenv "LC_ALL" "ru_RU.UTF-8")
(setenv "LANG" "ru_RU.UTF-8")
(setenv "LC_CTYPE" "ru_RU.UTF-8")

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

(use-package savehist
  :config
  (setq savehist-additional-variables
	'(search-ring regexp-search-ring)
	savehist-autosave-interval 60
	savehist-file (expand-file-name "savehist" user-emacs-directory))
  (savehist-mode +1))

(use-package recentf
  :config
  (setq recentf-save-file (expand-file-name "recentf" user-emacs-directory)
	recentf-max-saved-items 500
	recentf-max-menu-items 30
	recentf-auto-cleanup 'never
	recentf-exclude '("/tmp" "/ssh:" ".*-autoloads\\.el\\'"))
  (recentf-mode +1))

(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)
    (setq undo-tree-auto-save-history t)
    (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/.cache/undo")))))
  
(provide 'cool-core)
;;; cool-core.el ends here
