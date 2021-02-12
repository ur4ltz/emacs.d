;;; cool-magit.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

;; Emacs Git integration
(use-package magit
  :ensure t
  :config
  (add-hook 'magit-mode-hook
            (lambda ()
              (define-key magit-mode-map (kbd ",o") 'delete-other-windows))))

(use-package diff-hl
  :ensure t
  :config
  (global-diff-hl-mode 1)
  (add-hook 'dired-mode-hook 'diff-hl-dired-mode)
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))

(provide 'cool-magit)

;;; cool-magit.el ends here
