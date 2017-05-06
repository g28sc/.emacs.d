;; 予約語を色分け
(global-font-lock-mode t)

;; スタートアップメッセージを表示しない
(setq inhibit-startup-message t)

;; tab -> space
(setq-default tab-width 4 indent-tabs-mode nil)

;; ;; 改行コードを表示
;; (setq eol-mnemonic-dos "(CRLF)")
;; (setq eol-mnemonic-mac "(CR)")
;; (setq eol-mnemonic-unix "(LF)")

;; メニューバーを消す
(menu-bar-mode -1)

;; ツールバーを消す
(tool-bar-mode -1)

;; ;; カラム表示
;; (column-number-mode t)

;; ;; 行数表示
;; (global-linum-mode t)

;; カーソルを点滅させない
; (blink-cursor-mode 0)

;; カーソル行をハイライト
(global-hl-line-mode t)

;; 対応する括弧をハイライト
(show-paren-mode 1)

;; ↑がウィンドウ内に収まらないときは括弧内をハイライト
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "grey")
(set-face-foreground 'show-paren-match-face "black")

;; スペース, タブを可視化
(global-whitespace-mode 1)

;; スクロールを1行ずつ
(setq scroll-conservatively 1)

;; C-kで改行含め削除
(setq kill-whole-line t)

;; "yes or no" -> "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;; beep音を鳴らさない
(defun my-bell-function ()
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))
(setq ring-bell-function 'my-bell-function)

;; for abbrev
(setq abbrev-file-name             ;; tell emacs where to read abbrev
      "~/.emacs.d/abbrev_defs")    ;; definitions from...
(setq save-abbrevs t)              ;; save abbrevs when files are saved
                                   ;; you will be asked before the abbreviations are saved
