;;;
;;; for flycheck
;;;

;; (el-get-bundle flycheck
;;   :depends (dash pkg-info let-alist seq))
;; (el-get-bundle flycheck-pos-tip
;;   :depends (pos-tip))
(package-install-if-noinstalled 'flycheck)
(package-install-if-noinstalled 'flycheck-pos-tip)

(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(custom-set-variables
   '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))
