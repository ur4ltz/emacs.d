;;; cool-ivy.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(use-package ivy
  :config
  (setq ivy-use-virtual-buffers t
        ivy-count-format        "(%d/%d) ")
  (ivy-mode 1))

(use-package swiper
  :config
  (global-set-key "\C-s" 'swiper))

(use-package counsel
  :config
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history))

(provide 'cool-ivy)

;;; cool-ivy.el ends here
