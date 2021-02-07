;;; cool-modeline.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package doom-modeline
  :hook
  (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-icon t)
  (setq doom-modeline-height 20))

(provide 'cool-modeline)

;;; cool-modeline.el ends here
