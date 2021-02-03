;;; lisp/cool-lsp.el -*- lexical-binding: t -*-

;;; Code:
(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-error-list)
  
  
(provide 'cool-lsp)
;;; cool-lsp.el ends here
