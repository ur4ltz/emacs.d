;;; cool-flycheck.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode)
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(provide 'cool-flycheck)
;;; cool-flycheck.el ends here
