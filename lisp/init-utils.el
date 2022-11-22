(define-obsolete-function-alias 'after-load 'with-eval-after-load "")

(defun tu10ng/delete-this-file ()
  "move current file to /tmp, and kill the buffer."
  (interactive)
  (unless (buffer-file-name)
    (error "No file is currently being edited"))
  (rename-file (buffer-file-name) "/tmp/")
  (kill-this-buffer))


(use-package restart-emacs)
(defun restart-emacs-reopen-current-file ()
  "restart emacs then reopen the file being visited when casting this command.
if the buffer isn't a file, simply restart emacs."
  (interactive)
  (if (buffer-file-name)
      (restart-emacs (split-string (buffer-file-name)))
    (restart-emacs)))


(provide 'init-utils)
