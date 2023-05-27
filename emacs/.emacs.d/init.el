(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)

;; use-package
;; install unless it is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; follow symlinks without prompt
(setq vc-follow-symlinks t)

;; load emacs settings
(require 'org)
(org-babel-load-file
 (expand-file-name "start.org" user-emacs-directory))
