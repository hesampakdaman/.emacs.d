(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; follow symlinks without prompt
(setq vc-follow-symlinks t)

;; load emacs settings
(org-babel-load-file
 (expand-file-name "start.org" user-emacs-directory))
