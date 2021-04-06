;;; cool-selectrum.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package selectrum
  ;;:defer t
  :config
  (selectrum-mode +1))

(use-package ctrlf
  :config
  (ctrlf-mode +1))

(use-package prescient
  :config
  (prescient-persist-mode +1)
  (setq prescient-history-length 1000))

(use-package selectrum-prescient
  ;;:demand t
  :after selectrum
  :config
  (selectrum-prescient-mode +1))

(provide 'cool-selectrum)

;;; cool-selectrum.el ends here
