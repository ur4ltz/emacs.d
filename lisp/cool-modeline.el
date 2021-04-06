;;; cool-modeline.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package doom-modeline
  :hook
  (after-init . doom-modeline-mode)
  ;;:custom-face
  ;;(mode-line ((t (:height 0.85))))
  ;;(mode-line-inactive ((t (:height 0.85))))
  :custom
  (setq doom-modeline-icon t)
  (setq doom-modeline-height 10)
  (setq doom-modeline-bar-width 6)
  (setq doom-modeline-lsp t)
  (setq doom-modeline-minor-modes t))

(provide 'cool-modeline)

;;; cool-modeline.el ends here
