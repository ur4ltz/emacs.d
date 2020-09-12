;;;

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
  (setq savehist-addifional-variables
	'(search-ring regexp-search-ring)
	savehist-autosave-interval 60
	savehist-file (expand-file-name "savehist" user-emacs-directory))
  (savehist-mode +1))

(use-package recentf
  :config
  (setq recentf-save-file (expand-file-name "recentf" user-emacs-directory)
	recentf-max-saved-items 500
	recentf-max-menu-items 20
	recentf-auto-cleanup 'never)
  (recentf-mode +1))

(provide 'cool-core)
;;; cool-core.el ends here
