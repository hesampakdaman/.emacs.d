;; Increase garbage collection threshold to 100MB to delay GC during
;; startup
(setq gc-cons-threshold (* 100 (expt 10 6)))

;; Disable package.el initialization
(setq package-enable-at-startup nil)

;; Lower garbage collection threshold to 1MB after startup to minimize
;; impact of GC during normal use
(add-hook 'after-init-hook
          (lambda ()
            (setq gc-cons-threshold (* 1 (expt 10 6)))))
