;;; cool-lua.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package lua-mode
  :ensure t
  :mode
  ("\\.lua\\'")
  :hook
  (lua-mode . lsp)
  :interpreter "lua"
  :config
  (setq lua-indent-level                 4
        lua-indent-string-contents       t
        lua-prefix-key                   nil))

(provide 'cool-lua)

;;; cool-lua.el ends here
