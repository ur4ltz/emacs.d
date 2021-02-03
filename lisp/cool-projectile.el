;;;

;;; Code:

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
	      ("s-p" . projectile-command-map)
	      ("C-p p" . projectile-command-map)))

(provide 'cool-projectile)
;;; cool-projectile.el ends here
