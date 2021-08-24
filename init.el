


;; startup adjustments
(setq debug-on-error t
      gc-cons-threshold (* 512 1024 1024)
      inhibit-compacting-font-caches t)



;; Bootstrap config
(require 'package)
(setq package-enable-at-startup nil
      use-package-always-ensure t
      use-pfackage-expand-minimally t
      use-package-enable-imenu-support t)

(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Bootstrap
(org-babel-load-file "~/.emacs.d/myinit.org")















(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(electric-indent-mode t)
 '(flycheck-check-syntax-automatically '(save idle-buffer-switch mode-enabled))
 '(flycheck-disabled-checkers '(python-pycompile))
 '(line-number-mode nil)
 '(linum-relative-current-symbol "")
 '(linum-relative-global-mode t)
 '(org-adapt-indentation nil)
 '(org-agenda-files '("~/ORG/gtd.org" "~/.emacs.d/myinit.org"))
 '(org-confirm-babel-evaluate nil)
 '(org-mouse-features '(activate-stars activate-bullets activate-checkboxes) t)
 '(org-startup-truncated nil)
 '(package-selected-packages
   '(rainbow-fart figlet visible-mark popup-kill-ring js-mode xref dumb-jump magit company-tabnine vue-mode vue-html-mode web-mode fuzzy eslint-fix flymake-eslint linum-relative nlinum-relative ac-js2 ac-html typit minesweeper abyss-theme 2048-game walkman typing-game quickrun haskell-mode wolfram-mode youdao-dictionary zh-align posframe undo-tree smex org-plus-contrib htmlize ox-reveal org-pdftools org-pdfview info-colors rainbow-delimiters ripgrep flycheck pdf-tools hungry-delete org which-key use-package try tangotango-theme restart-emacs org-bullets counsel auto-complete))
 '(pong-down-key "9")
 '(pong-left-key "1")
 '(pong-right-key "2")
 '(pong-up-key "0")
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(truncate-lines nil)
 '(word-wrap t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-table ((t (:foreground "#a9a1e1" :height 120 :family "Noto Sans Mono CJK SC Regular")))))

;; (defun set-font (english chinese english-size chinese-size)
;;   (set-face-attribute 'default nil :font
;; 		      (format "%s:pixelsize=%d" english english-size))
;;   (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;     (set-fontset-font (frame-parameter nil 'font) charset
;; 		      (font-spec :family chinese :size chinese-size))))

;; (set-font "Source Code Pro" "黑体" 20 17)



(set-face-attribute 'default nil :font "Source Code Pro:pixelsize=20")
(set-fontset-font t 'han "黑体:pixelsize=20")






(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
