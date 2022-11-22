(require 'cl-lib)

(defun tu10ng/add-subdirs-to-load-path (parent-dir)
  (setq load-path
        (append
         (cl-remove-if-not #'file-directory-p
                           (directory-files
                            (expand-file-name parent-dir)
                            t
                            "^[^\\.]"))
         load-path)))

(let ((site-lisp-dir (expand-file-name "site-lisp/" user-emacs-directory)))
  (tu10ng/add-subdirs-to-load-path site-lisp-dir))

(provide 'init-site-lisp)
      


