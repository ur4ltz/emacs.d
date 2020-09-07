;;;

;;; Code:

(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox-dark-hard t))

;(use-package srcery-theme
;  :ensure t)

(use-package hl-line
  :config
  (global-hl-line-mode +1))

;;(use-package smart-mode-line-atom-one-dark-theme
;;  :ensure t)

;; smart-mode-linne
;;(use-package smart-mode-line
;;  :config
;;  (setq sml/theme 'atom-one-dark)
;;  (sml/setup))

(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode t))

(use-package rainbow-delimiters
  :ensure t)

(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-mode))

(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (progn
    (setq which-key-idle-secondary-delay 0.1
	  which-key-delay 0.3)
    (which-key-mode)))

(setq whitespace-style
      '(spaces tabs newline space-mark newline-mark))

(provide 'cool-ui)
;;; cool-ui.el ends here
