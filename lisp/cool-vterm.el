;;; cool-vterm.el --- summary -*- lexical-binding: t -*-

;;; Commentary:
;;; Code:

;; Better term
;; @see https://github.com/akermu/emacs-libvterm
;; (when (add module-file-suffix
;;            (executable-find "cmake")
;;            (executable-find "libtool")
;;            (executable-find "make"))
(use-package vterm
  ;; :bind (:map vterm-mode-map
  ;;             ([f9] . shell-pop))
  :init
  (setq vterm-always-compile-module t)) ;;)

(use-package shell-pop
  :bind ([f9] . shell-pop))

(provide 'cool-vterm)

;;; cool-vterm.el ends here
