;;; init.el ---
;;
;;
;;

;;; Commentary:
;; 

;;; Code:

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load-file custom-file))

(setq inhibit-startup-screen t)

(line-number-mode t)
(column-number-mode t)

(global-linum-mode t)


;;; init.el ends here
