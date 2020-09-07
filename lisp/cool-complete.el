;;;

;;; Code:

(use-package company
  :ensure t
  :init
  :config
  (setq company-idle-delay 0.2)
  (setq company-show-numbers t)
  (setq company-tooltip-limit 20)
  (setq company-minimum-prefix-length 1)
  (company-tng-configure-default)
  (global-company-mode)
  )


(provide 'cool-complete)
;;; cool-complete.el ends here
