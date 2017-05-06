;;;
;;; for avy
;;;

;; (el-get-bundle avy
;;   :depends (cl-lib))
;; (el-get-bundle avy-migemo)
(package-install-if-noinstalled 'avy)
(package-install-if-noinstalled 'avy-migemo)

(global-set-key (kbd "C-:") 'avy-goto-char)
;; (global-set-key (kbd "C-'") 'avy-goto-char-2)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)

(avy-migemo-mode 1)
(require 'avy-migemo-e.g.swiper)  ;; swiperをmigemoに対応させるパッケージ
