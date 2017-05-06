;;;
;;; for python
;;;

;; (el-get-bundle python-mode)
;; (el-get-bundle jedi-core
;;   :depends (epc python-environment cl-lib))
;; (el-get-bundle company-jedi
;;   :depends (company))
(package-install-if-noinstalled 'python-mode)
(package-install-if-noinstalled 'jedi-core)
(package-install-if-noinstalled 'company-jedi)

(autoload 'python-mode "python-mode" "Python editing mode." t)

;; ;;;;; PYTHONPATHの設定
;; ;; (setenv "PYTHONPATH"
;; ;;         "$HOME/Python/WinPython-32bit-2.7.12.3Zero/python-2.7.12/Lib:$HOME/Python/WinPython-32bit-2.7.12.3Zero/python-2.7.12/Lib/site-packages")

;; ;; jediのsetup
;; (require 'jedi-core)
;; ;(setq python-environment-default-root-name "~/.emacs.d/.python-environments")
;; ;(setq jedi:environment-root "~/.emacs.d/.python-environments/default/")
;; ;(setq python-environment-directory "~/.emacs.d/.python-environments/")
;; ;(setq jedi:server-command '("~/.emacs.d/.python-environments/default/bin/jediepcserver")

;; ;; company-jedi(jediの補完をcompanyに追加)
;; (require 'company-jedi)
;; ;(add-to-list 'company-backends '(company-jedi company-files))

(add-hook 'python-mode-hook
          '(lambda ()
             ;; python common
             (setq python-indent-offset 4)
             (setq indent-tabs-mode nil)
             (setq indent-level 4)
             (setq python-indent 4)
             (setq tab-width 4)
             ;; jedi
             (require 'jedi-core)
             ;; (setq python-environment-default-root-name "~/.emacs.d/.python-environments")
             ;; (setq jedi:server-command '("~/.emacs.d/.python-environments/default/bin/jediepcserver"))
             (setq jedi:server-command (list (executable-find "jediepcserver")))
             (setq jedi:complete-on-dot t)
             (setq jedi:use-shortcuts t)
             ;; (jedi:ac-setup) ;; ac=auto complete
             (jedi:setup)
             ;; company-jedi
             (add-to-list 'company-backends '(company-jedi company-files))
             ))

;; (add-hook 'python-mode-hook
;;           '(lambda ()
;;              ;; python common
;;              (setq python-indent-offset 4)
;;              (setq indent-tabs-mode nil)
;;              (setq indent-level 4)
;;              (setq python-indent 4)
;;              (setq tab-width 4)
;;              ;; elpy
;;              (elpy-enable)
;;              (elpy-mode)))

;; (add-hook 'elpy-mode-hook
;;           '(lambda ()
;;              (elpy-use-ipython)
;;              ;; ;; quickrunをC-cC-cに設定
;;              ;; (define-key elpy-mode-map "\C-c\C-c" 'quickrun)
;;              ;; ;; company-mode + rope/jediを使うためautocompletionをオフ
;;              ;; (auto-complete-mode -1)
;;              (setq elpy-rpc-backend "jedi")
;;              ; companyによる補完のキーマップを設定
;;              (define-key company-active-map (kbd "\C-n") 'company-select-next)
;;              (define-key
;;                company-active-map (kbd "\C-p") 'company-select-previous)
;;              (define-key
;;                company-active-map (kbd "\C-d") 'company-show-doc-buffer)
;;              (define-key
;;                company-active-map (kbd "<tab>") 'company-complete)
;;              ))

