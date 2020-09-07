;;;

;;; Code:

(use-package markdown-mode
  :ensure t
  :init (setq markdown-command "pandoc")
  :mode (("README\\.md\\'" . gfm-mode)
	 ("\\.md\\'" . gfm-mode)
	 ("\\.markdown\\'" . markdown-mode))
  :hook (
	 (markdown-mode . format-all-mode)
	 )
  )

(use-package markdown-toc
  :ensure t)

(provide 'cool-markdown)
;;; cool-markdown.el ends here
