;;;; cool-ui.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(setq inhibit-startup-screen t)

(line-number-mode t)
(column-number-mode t)

;; Выключим tool-bar.
(tool-bar-mode -1)

;; Номера строк
(global-linum-mode t)
;; Парные скобки
(show-paren-mode t)

;;(use-package gruvbox-theme
;;  :ensure t
;;  :config
;;  (load-theme 'gruvbox-dark-hard t))

(use-package srcery-theme
  :ensure t)

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold   t
        doom-themes-enable-italic t)
  (load-theme 'doom-gruvbox t))

(use-package hl-line
  :config
  (global-hl-line-mode +1))

(setq default-frame-alist
      (add-to-list 'default-frame-alist '(font . "Anonymous Pro-9")))

;;(use-package smart-mode-line-atom-one-dark-theme
;;  :ensure t)

;;; smart-mode-linne
;;(use-package smart-mode-line
;;  :config
;;  (setq sml/theme 'atom-one-dark)
;;  (sml/setup))

(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode))

(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-mode))

(use-package whitespace
  :init
  (dolist (hook '(prog-mode-hook text-mode-hook))
    (add-hook hook #'whitespace-mode))
  (add-hook 'before-save-hook #'whitespace-cleanup)
  (setq whitespace-line-column 80)
  (setq whitespace-style
        '(spaces tabs newline space-mark newline-mark)))

(use-package aggressive-indent
  :hook
  (prog-mode-hook . aggressive-indent-mod)
  :config
  (setq-default aggressive-indent-comments-too t
                aggressive-indent-sit-for-time 0.5)
  (global-aggressive-indent-mode 1))

(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (progn
    (setq which-key-idle-secondary-delay 0.1
          which-key-idle-delay           0.3)
    (which-key-mode)))

(use-package windmove
  :bind
  ("C-x <up>" . windmove-up)
  ("C-x <down>" . windmove-down)
  ("C-x <left>" . windmove-left)
  ("C-x <right>" . windmove-right))

(provide 'cool-ui)
;;; cool-ui.el ends here
