;;;
;;; for undo-tree
;;;

;; (el-get-bundle undo-tree)
(package-install-if-noinstalled 'undo-tree)

(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "M-/") 'undo-tree-redo)
