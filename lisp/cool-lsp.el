;;; cool-lsp.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  ((go-mode  . lsp-deferred)
   (lua-mode . lsp-deferred)
   (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :config
  ;;(setq lsp-prefer-capf t)
  (setq lsp-completion-provider t
        lsp-idle-delay 0.500))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :hook
  (lsp-mode . lsp-ui-mode))

(use-package lsp-ivy
  :ensure t
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :ensure t
  :after lsp-mode
  :commands lsp-treemacs-error-list)

(provide 'cool-lsp)

;;; cool-lsp.el ends here
