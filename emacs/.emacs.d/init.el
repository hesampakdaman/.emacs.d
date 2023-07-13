(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (require 'use-package-ensure)
  (setq use-package-always-ensure t))

;; follow symlinks without prompt
(setq vc-follow-symlinks t)

;; load emacs settings
(require 'use-package)
(require 'org)
(org-babel-load-file
 (expand-file-name "start.org" user-emacs-directory))
