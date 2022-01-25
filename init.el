;;; init.el --- The ma entry for emacs.
;;; Commentary:
;;; Code:
(setq gc-cons-threshold (* 3 1024 1024 1024))

(require 'package)
(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	    ("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq package-enable-at-startup nil     ;what is this?
        use-package-always-ensure t
        use-pfackage-expand-minimally t
        use-package-enable-imenu-support t))
(eval-when-compile
  (require 'use-package))

(setq debug-on-error t)

;; Bootstrap
(org-babel-load-file "~/.emacs.d/myinit.org")





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-cleanup-list
   '(brace-else-brace brace-elseif-brace brace-catch-brace empty-defun-braces one-liner-defun defun-close-semi list-close-comma scope-operator space-before-funcall compact-empty-funcall comment-close-slash))
 '(c-hanging-braces-alist 'set-from-style)
 '(electric-indent-mode t)
 '(exec-path
   '("/usr/local/bin" "/usr/bin" "/usr/local/sbin" "/usr/bin/site_perl" "/usr/bin/vendor_perl" "/usr/bin/core_perl" "/usr/lib/emacs/29.0.50/x86_64-pc-linux-gnu" "/home/qb/.local/bin"))
 '(flycheck-check-syntax-automatically '(idle-change idle-buffer-switch mode-enabled))
 '(flycheck-disabled-checkers '(python-pycompile))
 '(flycheck-display-errors-delay 0)
 '(flycheck-error-list-minimum-level 'error)
 '(flycheck-navigation-minimum-level 'error)
 '(lsp-ui-flycheck-list-position 'right)
 '(magit-commit-ask-to-stage 'stage)
 '(magit-slow-confirm nil)
 '(magit-update-other-window-delay 0.01)
 '(markdown-fontify-code-blocks-natively t)
 '(org-adapt-indentation nil)
 '(org-agenda-files
   '("~/org/homework.org" "/home/qb/org/gtd.org" "/home/qb/org/diary.org" "/home/qb/.emacs.d/myinit.org"))
 '(org-agenda-span 8)
 '(org-capture-templates
   '(("d" "diary" entry
      (file+olp+datetree "~/org/diary.org")
      "* %^{heading|记录|回忆} %U
%?" :tree-type week)))
 '(org-confirm-babel-evaluate nil)
 '(org-mouse-features '(activate-stars activate-bullets activate-checkboxes) t)
 '(org-speed-commands
   '(("Outline Navigation")
     ("n" org-speed-move-safe 'org-next-visible-heading)
     ("p" org-speed-move-safe 'org-previous-visible-heading)
     ("f" org-speed-move-safe 'org-forward-heading-same-level)
     ("b" org-speed-move-safe 'org-backward-heading-same-level)
     ("F" . org-next-block)
     ("B" . org-previous-block)
     ("j" . org-goto)
     ("g" org-refile
      '(4))
     ("Outline Visibility")
     ("c" . org-cycle)
     ("C" . org-shifttab)
     (" " . org-display-outline-path)
     ("s" . org-toggle-narrow-to-subtree)
     ("k" . org-cut-subtree)
     ("=" . org-columns)
     ("Outline Structure Editing")
     ("u" . org-metaup)
     ("d" . org-metadown)
     ("r" . org-metaright)
     ("l" . org-metaleft)
     ("R" . org-shiftmetaright)
     ("L" . org-shiftmetaleft)
     ("i" progn
      (forward-char 1)
      (call-interactively 'org-insert-heading-respect-content))
     ("^" . org-sort)
     ("w" . org-refile)
     ("v" . org-archive-subtree-default-with-confirmation)
     ("@" . org-mark-subtree)
     ("#" . org-toggle-comment)
     ("Clock Commands")
     ("I" . org-clock-in)
     ("O" . org-clock-out)
     ("Meta Data Editing")
     ("t" . org-todo)
     ("," org-priority)
     ("0" org-priority 32)
     ("1" org-priority 65)
     ("2" org-priority 66)
     ("3" org-priority 67)
     (":" . org-set-tags-command)
     ("e" . org-set-effort)
     ("E" . org-inc-effort)
     ("W" lambda
      (m)
      (interactive "sMinutes before warning: ")
      (org-entry-put
       (point)
       "APPT_WARNTIME" m))
     ("Agenda Views etc")
     ("a" . org-agenda)
     ("/" . org-sparse-tree)
     ("Misc")
     ("o" . org-open-at-point)
     ("?" . org-speed-command-help)
     ("<" org-agenda-set-restriction-lock 'subtree)
     (">" org-agenda-remove-restriction-lock)))
 '(org-startup-truncated nil)
 '(org-use-speed-commands t)
 '(package-selected-packages
   '(tldr fanyi separedit diredfl dired valign org-agenda devdocs hl-todo spdx shackle graphviz-dot-mode all-the-icons exa dirvish cape corfu php-mode py-autopep8 lsp-pyright diff-hl speed-type lox-mode counsel-projectile helpful ivy-rich company-lsp helm-lsp lsp-ui yasnippet projectile lsp-java fish-mode benchmark-init flames-of-freedom zone-nyan autotetris-mode autotetris crontab-mode pyim-basedict pyim rime rainbow-fart figlet visible-mark popup-kill-ring js-mode xref dumb-jump magit company-tabnine vue-mode vue-html-mode web-mode fuzzy eslint-fix flymake-eslint linum-relative nlinum-relative ac-js2 ac-html typit minesweeper abyss-theme 2048-game walkman typing-game quickrun haskell-mode wolfram-mode youdao-dictionary zh-align posframe undo-tree smex org-plus-contrib htmlize ox-reveal org-pdftools org-pdfview info-colors rainbow-delimiters ripgrep flycheck pdf-tools hungry-delete org which-key use-package try tangotango-theme restart-emacs org-bullets counsel auto-complete))
 '(projectile-completion-system 'auto)
 '(show-paren-mode t)
 '(truncate-lines nil)
 '(warning-suppress-log-types '((lsp-mode)))
 '(warning-suppress-types '((lsp-mode)))
 '(word-wrap t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-table ((t (:foreground "#a9a1e1" :height 120 :family "Noto Sans Mono CJK SC Regular"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "lime green"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "lime green"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "lime green"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "lime green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "lime green" :inherit rainbow-delimiters-base-face))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#ECBE7B" :inherit rainbow-delimiters-base-face))))
 '(show-paren-match ((t (:background "#1B2229" :foreground "#ffffff" :underline t :weight ultra-bold)))))

;; (defun set-font (english chinese english-size chinese-size)
;;   (set-face-attribute 'default nil :font
;; 		      (format "%s:pixelsize=%d" english english-size))
;;   (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;     (set-fontset-font (frame-parameter nil 'font) charset
;; 		      (font-spec :family chinese :size chinese-size))))

;; (set-font "Source Code Pro" "黑体" 20 17)

