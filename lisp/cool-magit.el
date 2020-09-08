;;;

;;; Code:

;; Emacs Git integration
(use-package magit
  :ensure t
  :config
  (add-hook 'magit-mode-hook
	    (lambda ()
	      (define-key magit-mode-map (kbd ",o") 'delete-other-windows))))

(provide 'cool-magit)
;;; cool-magit.el ends here
