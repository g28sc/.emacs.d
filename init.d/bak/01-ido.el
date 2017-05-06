;;;
;;; for ido
;;;

(el-get-bundle ido-ubiquitous)
(el-get-bundle ido-vertical-mode)
(el-get-bundle idomenu)
(el-get-bundle smex
  :depends ido-ubiquitous)
(el-get-bundle ido-describe-bindings
  :depends (dash))
(el-get-bundle ido-select-window)
(el-get-bundle elpa:flx-ido
  :depends (flx cl-lib))
(el-get-bundle ido-flex-with-migemo)

(ido-mode 1)
(ido-everywhere 1)
(ido-flex-with-migemo-mode 1)  ;;

;;; あいまいマッチ:これを入れないとidoの魅力がガタ落ち
(setq ido-enable-flex-matching t)

;;; 縦に並べる(お好みで)
(when (fboundp 'ido-vertical-mode)
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-and-C-p-only)    ;; C-n/C-pで候補選択する
  (setq ido-vertical-show-count t))

;;; completing-readをido化
(ido-ubiquitous-mode 1)

;; ;;; M-xをido化
;; (when (fboundp 'smex)
;;   (global-set-key (kbd "M-x") 'smex))

;; C-x oでido-select-windowを開く
(when (fboundp 'ido-select-window)
  (global-set-key (kbd "C-x o") 'ido-select-window))

(when (fboundp 'ido-occur)
  (global-set-key (kbd "C-c o") 'ido-occur)
  (define-key isearch-mode-map (kbd "C-o") 'ido-occur-from-isearch))

;;; recentfをidoで開く
(defun my/ido-recentf ()
  (interactive)
  (find-file (ido-completing-read "Find recent file: " recentf-list)))
(global-set-key (kbd "C-x C-r") 'my/ido-recentf)
