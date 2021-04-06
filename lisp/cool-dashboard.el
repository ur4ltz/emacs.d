;;; cool-dashboard.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package all-the-icons
  :ensure t)

(use-package dashboard
  :ensure t
  :config
  (setq dashboard-items	'((recents   . 10)
                          ;;(bookmark  . 5)
                          (projects  . 10)
                          ;;(registers . 10)
                          ))

  (setq dashboard-set-init-info     t
        dashboard-set-heading-icons t
        dashboard-set-file-icons    t
        dashboard-center-content    t)
  (dashboard-setup-startup-hook))

(provide 'cool-dashboard)
;;; cool-dashboard.el ends here
