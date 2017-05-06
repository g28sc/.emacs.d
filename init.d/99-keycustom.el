;; C-hをBackspaceに, 初期のC-h(ヘルプ)をM-?に
(keyboard-translate ?\C-h ?\C-?)
(define-key global-map "\C-h" nil)
(define-key global-map "\M-?" 'help-for-help)

;; goto-line
(global-set-key (kbd "\M-g") 'goto-line)

;; comment <-> uncomment
(global-set-key (kbd "\C-c ;") 'comment-region)
(global-set-key (kbd "\C-c :") 'uncomment-region)

;; undo
(global-set-key "\C-z" 'undo)

;; windowをshift+矢印キーで移動
(global-set-key (kbd "S-<left>")  'windmove-left)
(global-set-key (kbd "S-<down>")  'windmove-down)
(global-set-key (kbd "S-<up>")    'windmove-up)
(global-set-key (kbd "S-<right>") 'windmove-right)

;; IMEがoffのときon, onのときoffにする関数
(defun set-ime-on ()
  "Set Input Method On"
  (interactive)
  (if (ime-get-mode)
      nil
    (toggle-input-method)))
(defun set-ime-off ()
  "Set Input Method Off"
  (interactive)
  (if (ime-get-mode)
      (toggle-input-method)))
;; IMEがoffのときon, onのときoffにする関数(isearch用)
(defun set-isearch-ime-on ()
  "Set Input Method On In isearch"
  (interactive)
  (if (ime-get-mode)
      nil
    (isearch-toggle-input-method)))
(defun set-isearch-ime-off ()
  "Set Input Method Off In isearch"
  (interactive)
  (if (ime-get-mode)
      (isearch-toggle-input-method)))

;; そのまま[kanji](変換) [non-convert](無変換)を割り当てると
;; 先にIMEの動作を行うためか, 割り当てがうまくいかないため
;; keyhacで変換/無変換をC-f5/C-f6(使わなさそうなキーバインド)に割り当てて使用する
(global-set-key (kbd "C-<f5>") 'set-ime-on)
(global-set-key (kbd "C-<f6>") 'set-ime-off)
(define-key isearch-mode-map (kbd "C-<f5>")
  'set-isearch-ime-on)
(define-key isearch-mode-map (kbd "C-<f6>")
  'set-isearch-ime-off)
