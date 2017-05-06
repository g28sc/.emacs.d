;;;
;;; for package.el
;;;

;; 指定したパッケージがインストールされてなければ, package-installを実行
(defun package-install-if-noinstalled (package)
  (unless (package-installed-p package)
    (package-install package)))

(package-install-if-noinstalled 'package-utils)
