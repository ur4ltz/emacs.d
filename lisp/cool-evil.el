;;;

;;; Code:

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1)

  (use-package evil-magit
    :ensure t
    :config
    (require 'magit)
    (setq evil-magit-state 'normal)
    (setq evil-magit-use-y-for-yank nil))  

  (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode))

  (use-package evil-nerd-commenter
    :ensure t))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide 'cool-evil)
;;; cool-evil.el ends here
