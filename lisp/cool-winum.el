;;; cool-winum.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package winum
  :ensure t
  :config
  (setq winum-auto-assign-0-to-minibuffer nil
	winum-auto-setup-mode-line nil
	winum-ignored-buffers '(" *which-key*"))
  (winum-mode))

(provide 'cool-winum)

;;; cool-winum.el ends here
