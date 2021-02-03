;;;

;;; Code:


(setq evil-want-keybinding nil)

(use-package evil
  :ensure t
  :init
  (setq evil-normal-state-cursor '("DarkGoldenrod2" box)
	evil-insert-state-cursor '("chartreuse3" (bar . 2))
	evil-emacs-state-cursor '("SkyBlue2" box)
	evil-replace-state-cursor '("red" (hbar . 2))
	evil-visual-state-cursor '("gray" (hbar . 2))
	evil-motion-state-cursor '("plum3" box)
	evil-want-integration t
	evil-want-C-u-scroll t)
  :config
  (evil-mode 1))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode))

(use-package evil-nerd-commenter
  :ensure t)

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide 'cool-evil)
;;; cool-evil.el ends here
