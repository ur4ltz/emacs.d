;;; cool-global-keybindings.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

;; Font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; toggle menu-bar visible
(global-set-key (kbd "<f12>") 'menu-bar-mode)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch)

(provide 'cool-global-keybindings)

;;; cool-global-keybindings.el ends here
