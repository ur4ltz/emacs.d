;;; cool-go.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:
(use-package go-mode
  :ensure t
  :hook
  (go-mode . lsp-deferred)
  )


(provide 'cool-go)

;;; cool-go.el ends here
