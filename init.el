(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t))
(package-initialize)


(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp"))
(add-to-list 'load-path 
             (expand-file-name "~/.emacs.d/site-lisp/color-theme/"))
(add-to-list 'custom-theme-load-path
             (expand-file-name "~/.emacs.d/site-lisp/color-theme/themes/"))

(require 'color-theme)
;; (load-theme 'solarized-light t)
(load-theme 'solarized-dark t)
;; frame title format
(setq frame-title-format '( "%b" " [" (:eval mode-name) "]"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying-when-linked t)
 '(blink-cursor-mode nil)
 '(confirm-nonexistent-file-or-buffer nil)
 '(cursor-in-non-selected-windows 'hollow)
 '(cursor-type '(bar . 4))
 '(elpy-rpc-python-command "python3")
 '(font-use-system-font t)
 '(global-company-mode t)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-echo-area-message "dou")
 '(inhibit-startup-screen t)
 '(initial-major-mode 'org-mode)
 '(initial-scratch-message nil)
 '(ispell-dictionary "american")
 '(org-bullets-bullet-list '("☯" "✿" "◉" "○"))
 '(org-cycle-separator-lines 1)
 '(org-ellipsis "↺")
 '(org-export-with-section-numbers nil)
 '(org-hide-block-startup t)
 '(org-hide-emphasis-markers t)
 '(org-html-doctype "html5")
 '(org-html-head
   "<link rel=\"stylesheet\" type=\"text/css\" href=\"https://gongzhitaao.org/orgcss/org.css\"/>
<link rel=\"stylesheet\" type=\"text/css\" href=\"https://dou-meishi.github.io/orgcss/worg.css\"/>
<link rel=\"stylesheet\" type=\"text/css\" href=\"https://dou-meishi.github.io/orgcss/dou-org.css\"/>")
 '(org-html-head-include-default-style nil)
 '(org-html-html5-fancy t)
 '(org-html-mathjax-options
   '((path "https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js")
     (scale "100")
     (align "center")
     (indent "2em")
     (mathml nil)))
 '(org-html-mathjax-template "<script type=\"text/javascript\" src=\"%PATH\"></script>")
 '(org-html-postamble t)
 '(org-html-postamble-format '(("en" "<p class=\"date\">Last modified: %C</p>")))
 '(org-src-fontify-natively t)
 '(org-startup-folded 'content)
 '(org-startup-indented t)
 '(org-todo-keyword-faces
   '(("TODO" :foreground "#dc322f" :weight extra-bold :family "微软雅黑")
     ("FOLLOW" :foreground "DarkOrange" :weight bold :family "微软雅黑")
     ("WORKING" :foreground "magenta" :weight bold :family "微软雅黑")
     ("CONCLUDE " :foreground "DodgerBlue" :weight bold :family "微软雅黑")
     ("DONE" :foreground "forest green" :weight bold :family "微软雅黑")))
 '(org-todo-keywords
   '((sequence "TODO(t)" "FOLLOW(f)" "WORKING(w)" "CONCLUDE(c)" "DONE(d)")))
 '(package-selected-packages
   '(solarized-theme yasnippet-snippets markdown-mode company-jedi elpy org-bullets dash-functional dash csv-mode))
 '(read-buffer-completion-ignore-case t)
 '(read-file-name-completion-ignore-case t)
 '(scroll-conservatively 10000)
 '(scroll-margin 3)
 '(scroll-step 1)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(yas-global-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :extend nil :overline nil :underline nil :slant normal :weight semi-bold :height 158 :width normal :foundry "????" :family "文泉驿等宽微米黑"))))
 '(fixed-pitch ((t (:family "文泉驿等宽微米黑"))))
 '(italic ((t (:slant italic :family "Fira Sans"))))
 '(org-block ((t (:family "DejaVu Sans Mono"))))
 '(org-block-background ((t (:family "DejaVu Sans Mono"))))
 '(org-block-begin-line ((t (:inherit nil :foreground "#2aa198" :overline t :underline nil :weight bold))))
 '(org-block-end-line ((t (:inherit nil :foreground "#2aa198" :overline nil :underline t :weight bold))))
 '(org-code ((t (:foreground "#d33682" :family "DejaVu Sans Mono"))))
 '(org-default ((t (:inherit default))))
 '(org-document-title ((t (:inherit default :weight bold :font "微软雅黑" :height 2.0 :underline nil))))
 '(org-level-1 ((t (:inherit default :weight bold :font "微软雅黑" :height 1.75))))
 '(org-level-2 ((t (:inherit default :weight bold :font "微软雅黑" :height 1.5))))
 '(org-level-3 ((t (:inherit default :weight bold :font "微软雅黑" :height 1.25))))
 '(org-level-4 ((t (:inherit default :weight bold :font "微软雅黑" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight bold :font "微软雅黑"))))
 '(org-level-6 ((t (:inherit default :weight bold :font "微软雅黑"))))
 '(org-level-7 ((t (:inherit default :weight bold :font "微软雅黑"))))
 '(org-level-8 ((t (:inherit default :weight bold :font "微软雅黑"))))
 '(org-table ((t (:foreground "#859900" :height 120 :family "Noto Sans Mono CJK SC"))))
 '(org-verbatim ((t (:foreground "#d33682" :family "DejaVu Sans Mono"))))
 '(variable-pitch ((t (:family "微软雅黑")))))


;; beautify org mode
(font-lock-add-keywords 'org-mode
                          '(("^ *\\([-+]\\) "
                             (0 (prog1 () (compose-region (match-beginning
                                                           1) (match-end
                                                               1) "•"))))))
(add-hook 'org-mode-hook 'org-bullets-mode)
(put 'narrow-to-region 'disabled nil)


;; customize hook
(add-hook 'prog-mode-hook 'electric-pair-mode)
(add-hook 'prog-mode-hook 'electric-indent-mode)
(add-hook 'text-mode-hook (lambda () (electric-pair-mode -1)))
(add-hook 'text-mode-hook (lambda () (electric-indent-mode -1)))

(add-hook 'latex-mode-hook (lambda () (electric-pair-mode -1)))
(add-hook 'latex-mode-hook (lambda () (electric-indent-mode -1)))
(add-hook 'org-mode-hook 'visual-line-mode)


;; customize backup function
(defun my-backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories does not exist, create them."
  (let* (
        (backupRootDir "~/.emacs.d/emacs-backup/")
        (filePath (replace-regexp-in-string "[A-Za-z]:" "" fpath ))
;; remove Windows driver letter in path, for example, “C:”
        (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~") ))
        )
    (make-directory (file-name-directory backupFilePath)
					(file-name-directory backupFilePath))
    backupFilePath
  )
)
(setq make-backup-file-name-function 'my-backup-file-name)


;; case insensitive auto-completion
(setq completion-ignore-case t)


;; python mode
;; (defun enable-jedi ()
;;   (add-to-list 'company-backends 'company-jedi))
;; (defun toggle-off-idle-company ()
;;   (setq company-idle-delay 1000.0))
;; (add-hook 'python-mode-hook 'enable-jedi)
;; (elpy-enable)
;; (setq elpy-rpc-backend "jedi")
