;;;
;;; for which-key
;;;

;; (el-get-bundle which-key)
(package-install-if-noinstalled 'which-key)

;; (which-key-setup-side-window-bottom)    ;ミニバッファ
;; (which-key-setup-side-window-right)     ;右端
(which-key-setup-side-window-right-bottom) ;両方使う
(which-key-mode 1)
