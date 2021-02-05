;;; cool-lua.el ---

;;; Code:
(use-package company-lua
  :ensure t
  :after (company))

(use-package lua-mode
  :ensure t
  :mode "\\.lua$"
  :interpreter "lua"
  :hook (
	 (lua-mode . set-company-backends-for-lua)
	 )
  :config
  (setq lua-indent-level 4)
  (setq lua-indent-string-contents t)
  (setq lua-prefix-key nil))

(provide 'cool-lua)
;;; cool-lua.el ends here
