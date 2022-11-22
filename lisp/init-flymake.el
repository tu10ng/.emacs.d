(require 'flymake)
(use-package flycheck)
(use-package flymake-flycheck)

(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers
                (append (default-value 'flycheck-disabled-checkers)
                        '(emacs-lisp emacs-lisp-checkdoc emacs-lisp-package))))

(defun sanityinc/enable-flymake-flycheck ()
  (setq-local flymake-diagnostic-functions
              (append flymake-diagnostic-functions
                      (flymake-flycheck-all-chained-diagnostic-functions))))

(add-hook 'flymake-mode-hook 'sanityinc/enable-flymake-flycheck)
(add-hook 'prog-mode-hook 'flymake-mode)
(add-hook 'text-mode-hook 'flymake-mode)

(setq eldoc-documentation-function 'eldoc-documentation-compose)

(add-hook 'flymake-mode-hook
          (lambda ()
            (setq eldoc-documentation-functions
                  (cons 'flymake-eldoc-function
                        (delq 'flymake-eldoc-function eldoc-documentation-functions)))))


(provide 'init-flymake)
