;;;
;;; for recentf
;;;

;; (el-get-bundle recentf-ext)
(package-install-if-noinstalled 'recentf-ext)

(recentf-mode 1)
(setq recentf-max-saved-items 2000) ;; 2000ファイルまで履歴保存する
(setq recentf-auto-cleanup 'never)  ;; 存在しないファイルは消さない
(setq recentf-exclude '("/recentf" "COMMIT_EDITMSG" "/.?TAGS" "^/sudo:" "/\\.emacs\\.d/games/*-scores" "/\\.emacs\\.d/\\.cask/"))
(setq recentf-auto-save-timer (run-with-idle-timer 120 t 'recentf-save-list)) ;; 120秒毎に保存
