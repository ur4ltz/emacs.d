;;;

;;; Code:

(use-package company
  :ensure t
  :delight "Ⓐ"
  :init
  :config
  (setq company-idle-delay 0.2)
  (setq company-minimum-prefix-length 1)
  (setq company-show-numbers t)
  (setq company-tooltip-limit 20)
  
  (setq company-tooltip-align-annotations t)
  (setq company-require-match nil)
  (setq company-dabbrev-ignore-case nil)
  
  (company-tng-configure-default)
  (global-company-mode)
  )

(use-package company-quickhelp
  :ensure t
  :after company
  :commands company-quickhelp-mode
;;  :init (csetq company-quickhelp-use-propertized-text t)
  :config (company-quickhelp-mode))

(use-package company-statistics
  :ensure t
  :after company
  :init
  (add-hook 'after-init-hook #'company-statistics-mode))

(use-package yasnippet
  :ensure t
  :commands (yas-global-mode)
  :delight (yas-minor-mode  "Ⓨ")
  )

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(provide 'cool-complete)
;;; cool-complete.el ends here
