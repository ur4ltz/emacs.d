;;; cool-evil.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

(setq evil-want-keybinding nil)

(use-package evil
  :ensure t
  :after evil-collection
  :init
  (setq evil-normal-state-cursor  '("DarkGoldenrod2" box)
        evil-insert-state-cursor  '("chartreuse3" (bar . 2))
        evil-emacs-state-cursor   '("SkyBlue2" box)
        evil-replace-state-cursor '("red" (hbar . 2))
        evil-visual-state-cursor  '("gray" (hbar . 2))
        evil-motion-state-cursor  '("plum3" box)
        evil-want-integration     t
        evil-want-C-u-scroll      t
        evil-undo-system          'undo-tree
        )
  :config
  (evil-mode 1))

(use-package evil-leader
  :ensure t
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
    "e" 'find-file
    "b" 'switch-to-buffer
    "k" 'kill-buffer
    )
  )

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode))

(use-package evil-nerd-commenter
  :ensure t)

(use-package evil-collection
  :after evil-leader
  :custom
  (evil-collection-company-use-tng nil)
  :config
  (evil-collection-init))

(provide 'cool-evil)

;;; cool-evil.el ends here
