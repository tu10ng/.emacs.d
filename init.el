;;; init.el --- The ma entry for emacs.
;;; Commentary:
;;; Code:
(setq gc-cons-threshold (* 10 1024 1024 1024))

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
  (setq package-enable-at-startup t
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
 '(awesome-tray-mode-line-active-color "DarkBlue")
 '(browse-url-browser-function 'eww-browse-url)
 '(c-cleanup-list
   '(brace-else-brace brace-elseif-brace brace-catch-brace empty-defun-braces one-liner-defun defun-close-semi list-close-comma scope-operator compact-empty-funcall comment-close-slash))
 '(c-hanging-braces-alist
   '((defun-open after)
     (class-open after)
     (inline-open)
     (inline-close)
     (block-open after)
     (block-close . c-snug-do-while)
     (statement-cont)
     (substatement-open after)
     (brace-list-open)
     (brace-list-close)
     (brace-entry-open)
     (extern-lang-open after)
     (namespace-open after)
     (module-open after)
     (composition-open after)
     (inexpr-class-open after)
     (inexpr-class-close before)
     (arglist-cont-nonempty)))
 '(eaf-proxy-host "127.0.0.1")
 '(eaf-proxy-port "8889")
 '(eaf-proxy-type "http")
 '(electric-indent-mode t)
 '(exec-path
   '("/usr/local/bin" "/usr/bin" "/usr/local/sbin" "/usr/bin/site_perl" "/usr/bin/vendor_perl" "/usr/bin/core_perl" "/usr/lib/emacs/29.0.50/x86_64-pc-linux-gnu" "/home/qb/.local/bin"))
 '(flycheck-check-syntax-automatically '(idle-change idle-buffer-switch mode-enabled))
 '(flycheck-disabled-checkers '(python-pycompile))
 '(flycheck-display-errors-delay 0)
 '(flycheck-error-list-minimum-level 'error)
 '(flycheck-navigation-minimum-level 'error)
 '(lsp-bridge-lang-server-mode-list
   '(((c-mode c++-mode)
      . "clangd")
     (java-mode . "jdtls")
     (python-mode . "pyright")
     (ruby-mode . "solargraph")
     ((rust-mode rustic-mode)
      . "rust-analyzer")
     (elixir-mode . "elixirLS")
     (go-mode . "gopls")
     (haskell-mode . "hls")
     (lua-mode . "sumneko")
     (dart-mode . "dart-analysis-server")
     (scala-mode . "metals")
     ((js2-mode js-mode rjsx-mode)
      . "javascript")
     (typescript-tsx-mode . "typescriptreact")
     ((typescript-mode)
      . "typescript")
     (tuareg-mode . "ocamllsp")
     (erlang-mode . "erlang-ls")
     ((latex-mode Tex-latex-mode texmode context-mode texinfo-mode bibtex-mode)
      . "texlab")
     ((clojure-mode clojurec-mode clojurescript-mode clojurex-mode)
      . "clojure-lsp")
     ((sh-mode)
      . "bash-language-server")
     ((css-mode)
      . "vscode-css-language-server")
     (elm-mode . "elm-language-server")
     (verilog-mode . "hdl_checker")
     (php-mode . "intelephense")
     (yaml-mode . "yaml-language-server")))
 '(lsp-eldoc-enable-hover t)
 '(lsp-eldoc-render-all t)
 '(lsp-ui-flycheck-list-position 'right)
 '(magit-commit-ask-to-stage 'stage)
 '(magit-no-confirm '(stage-all-changes set-and-push))
 '(magit-slow-confirm nil)
 '(magit-update-other-window-delay 0.01)
 '(markdown-fontify-code-blocks-natively t)
 '(org-adapt-indentation nil)
 '(org-agenda-files
   '("~/org/homework.org" "/home/qb/org/gtd.org" "/home/qb/org/diary.org" "/home/qb/.emacs.d/myinit.org"))
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-span 8)
 '(org-agenda-window-setup 'other-window)
 '(org-capture-templates
   '(("d" "diary" entry
      (file+olp+datetree "~/org/diary.org")
      "* %^{heading|记录|回忆} %U\12%?" :tree-type week)
     ("h" "homework" entry
      (file "~/org/homework.org")
      "* TODO %^{什么课？|数据结构|计组|汇编|逻辑|运筹|模式识别|计图|英语|职业} %?\12DEADLINE: %^{截止日期？}t" :prepend t :empty-lines 1 :time-prompt t)
     ("g" "gtd" entry
      (file "~/org/gtd.org")
      "* TODO %^{gtd?}" :prepend t :immediate-finish t)))
 '(org-confirm-babel-evaluate nil)
 '(org-latex-compiler "xelatex")
 '(org-latex-listings t)
 '(org-latex-packages-alist '("\\usepackage{ctex}"))
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
   '(gcmh elfeed elisp-refs helpful circe gnuplot gnu-plot tree-sitter-langs tree-sitter noflet modern-cpp-font-lock flycheck-posframe csharp-mode json-mode pyvenv cmake-font-lock bison-mode tldr dired valign org-agenda shackle exa py-autopep8 speed-type lox-mode counsel-projectile ivy-rich company-lsp helm-lsp yasnippet flames-of-freedom zone-nyan autotetris-mode autotetris crontab-mode rime rainbow-fart figlet visible-mark popup-kill-ring js-mode xref company-tabnine vue-mode vue-html-mode web-mode fuzzy eslint-fix flymake-eslint linum-relative nlinum-relative ac-js2 ac-html minesweeper abyss-theme 2048-game walkman typing-game quickrun wolfram-mode youdao-dictionary zh-align undo-tree smex org-plus-contrib htmlize ox-reveal org-pdftools org-pdfview info-colors rainbow-delimiters pdf-tools hungry-delete org use-package try tangotango-theme restart-emacs org-bullets auto-complete))
 '(projectile-completion-system 'auto)
 '(show-paren-mode t)
 '(truncate-lines nil)
 '(vi-navigate-key-alist
   '(("j" . next-line)
     ("k" . previous-line)
     ("h" . backward-char)
     ("l" . forward-char)
     ("J" . vi-navigate-scroll-up-one-line)
     ("K" . vi-navigate-scroll-down-one-line)
     ("H" . backward-word)
     ("L" . forward-word)
     ("d" . scroll-down)
     ("SPC" . scroll-up)))
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

(find-file "~/org/gtd.org")
(put 'list-timers 'disabled nil)
