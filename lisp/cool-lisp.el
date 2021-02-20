;;; cool-lisp.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

;; use sbcl as the default Lisp REPL
(defvar inferior-lisp-program "sbcl --dynamic-space-size 1024")

(use-package slime-company
  :ensure t
  :after (slime company)
  :config
  (setq slime-company-completion 'fuzzy
        slime-company-after-completion 'slime-company-just-one-space
        slime-company-major-modes '(lisp-mode slime-repl-mode)))

(use-package slime
  :ensure t
  :commands
  (slime slime-lisp-mode-hook)
  :config
  (slime-setup '(slime-fancy slime-company)))

(provide 'cool-lisp)

;;; cool-lisp.el ends here
