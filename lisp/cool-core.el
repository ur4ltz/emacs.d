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

(defconst private-dir (expand-file-name "private" user-emacs-directory))
(defconst temp-dir (format "%s/.cache" private-dir)
  "Hostname-based elisp temp directories")

(setq bookmark-save-flag    t
      bookmark-default-file (concat temp-dir "/bookmarks"))

;; From "Centaur Emacs"
;; https://github.com/seagle0128/.emacs.d/blob/master/lisp/init-basic.el#L172-L175
(setq-default major-mode 'text-mode
              fill-column 80
              tab-width 4
              indent-tabs-mode nil)

(use-package savehist
  :config
  (setq savehist-additional-variables
        '(search-ring regexp-search-ring)
        savehist-autosave-interval 60
        savehist-file (expand-file-name "savehist" user-emacs-directory))
  (savehist-mode +1))

(use-package recentf
  :hook (after-init . recentf-mode)
  :init
  (setq recentf-save-file (expand-file-name "recentf" user-emacs-directory)
        recentf-max-saved-items 500
        recentf-max-menu-items 30
        recentf-auto-cleanup 'never
        recentf-exclude
        '("\\.?cache" "/tmp" "/ssh:" ".*-autoloads\\.el\\'"))
  :config
  (recentf-mode +1))

(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode
  :config
  (progn
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)
    (setq undo-tree-auto-save-history t)
    (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/.cache/undo"))))
  (global-undo-tree-mode))

(provide 'cool-core)
;;; cool-core.el ends here
