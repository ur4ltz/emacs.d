;;;

;;; Code:

(use-package all-the-icons
  :ensure t)

(use-package dashboard
  :ensure t
  :config
  (setq dashboard-items	'((recents . 5)
			  (bookmarks . 5)
			  (projects . 5)
			  (registers . 5)))
  (setq dashboard-set-heading-icons t
	dashboard-set-file-icons t)
  (dashboard-setup-startup-hook))

(provide 'cool-dashboard)
;;; cool-dashboard.el ends here
