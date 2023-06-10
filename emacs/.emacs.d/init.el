(load-file (expand-file-name "elpaca.el" user-emacs-directory))
(elpaca use-package)
(elpaca-wait)
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; follow symlinks without prompt
(setq vc-follow-symlinks t)

;; load emacs settings
(require 'org)
(org-babel-load-file
 (expand-file-name "start.org" user-emacs-directory))
