;; Increase garbage collection threshold to delay GC during startup.
;; This decreases startup time.
(setq gc-cons-threshold (* 100 (expt 10 6))) ; 100MB

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(dolist (frame-option
         '((undecorated . t) (internal-border-width . 10) (drag-internal-border . 1)))
  (add-to-list 'default-frame-alist frame-option))

;; package
(setq package-native-compile t)
(setq package-check-signature nil)
(setq package-quickstart t)

;; compilations
(setq native-comp-deferred-compilation t)

;; Lower garbage collection threshold after startup to minimize impact
;; of GC during normal use
(add-hook 'after-init-hook
          (lambda ()
            (setq gc-cons-threshold (* 50 (expt 10 6))))) ; 50MB
