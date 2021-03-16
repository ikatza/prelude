;; ;;;; Python stuff:
;; (setq flycheck-python-flake8-executable "flake8")
;; (setq flycheck-python-pylint-executable "pylint")

;; (defvar myPackages
;;   '(elpy
;;     ;;py-autopep8
;;     ))
;;(package-initialize)
;;(elpy-enable)

;; enable autopep8 formatting on save
;;(prelude-require-package 'py-autopep8)
;;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(add-hook 'python-mode-hook
          (lambda()
            (hs-minor-mode t)
            (local-set-key (kbd "C-c <C-SPC>")   'hs-toggle-hiding)
            (local-set-key (kbd "C-c <C-right>") 'hs-show-block)
            (local-set-key (kbd "C-c <C-left>")  'hs-hide-block)
            (local-set-key (kbd "C-c <C-up>")    'hs-hide-all)
            (local-set-key (kbd "C-c <C-down>")  'hs-show-all)))
