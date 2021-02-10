;;; cool-lua.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package lua-mode
  :ensure t
  :mode "\\.lua$"
  :interpreter "lua"
  :config
  (setq lua-indent-level 4)
  (setq lua-indent-string-contents t)
  (setq lua-prefix-key nil))

(provide 'cool-lua)
;;; cool-lua.el ends here
