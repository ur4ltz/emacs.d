;;; cool-projectile.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  (setq projectile-completion-system 'ivy)
  :bind (:map projectile-mode-map
              ("s-p"   . projectile-command-map)
              ("C-p p" . projectile-command-map)))

(provide 'cool-projectile)
;;; cool-projectile.el ends here
