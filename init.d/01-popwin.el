;;;
;;; for popwin
;;;

;; (el-get-bundle popwin)
(package-install-if-noinstalled 'popwin)

(require 'popwin)
(popwin-mode 1)
(setq display-buffer-function 'popwin:display-buffer)

;; Help
(push '("*Help*") popwin:special-display-config)
;; Completions
(push '("*Completions*") popwin:special-display-config)
;; Warnings
(push '("*Warnings*") popwin:special-display-config)
;; shell
(push '("*shell*") popwin:special-display-config)
;; helm
(push '("*helm mini*") popwin:special-display-config)
;; helm-flycheck
(push '("*helm flycheck*") popwin:special-display-config)
