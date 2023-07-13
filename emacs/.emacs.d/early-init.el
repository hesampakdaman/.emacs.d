;; Increase garbage collection threshold to 100MB to delay GC during
;; startup
(setq gc-cons-threshold (* 100 (expt 10 6)))

;; package
(require 'package)
(setq package-native-compile t)
(setq package-check-signature nil)
(setq package-quickstart t)

;; compilations
(setq native-comp-deferred-compilation t)

;; Lower garbage collection threshold to 1MB after startup to minimize
;; impact of GC during normal use
(add-hook 'after-init-hook
          (lambda ()
            (setq gc-cons-threshold (* 1 (expt 10 6)))))
