;;;
;;; for swiper
;;;

;; (el-get-bundle swiper
;;   :depends ivy)  ;; -> 01-ivy.el

(defun isearch-forward-or-swiper (use-swiper)
  (interactive "P")
  (let (current-prefix-arg)
    (call-interactively (if use-swiper 'swiper 'isearch-forward))))
(global-set-key (kbd "C-s") 'isearch-forward-or-swiper)
