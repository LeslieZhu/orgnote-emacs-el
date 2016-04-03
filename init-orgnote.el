;; 设置org-mode输出中文目录
(custom-set-variables
 '(org-blank-before-new-entry 
   (quote ((heading) (plain-list-item))))

 '(org-export-language-setup 
   (quote 
    (("en" "Author" "Date" "Table of Contents" "Footnotes") ("zh-CN" "作者" "日期" "目录" "脚注")))))


;;; load htmlize.el
(add-to-list 'load-path (file-name-directory "./scripts/"))

;;; 设置语法高亮，自定义颜色
(custom-set-faces 
 '(default                      ((t (:foreground "#657b83" :background "#fdf6e3"))))
 '(font-lock-keyword-face       ((t (:foreground "#cb4b16")))) ;;"#859900"))))
 '(font-lock-string-face        ((t (:foreground "#2aa198"))))
 '(font-lock-function-name-face ((t (:bold t :foreground "#268bd2"))))
  '(font-lock-comment-face       ((t (:bold t :foreground "#93a1a1"))))
;;class #b58900
 
 '(font-lock-builtin-face       ((t (:foreground "#ff0000"))))
 '(font-lock-constant-face      ((t (:foreground "magenta"))))
 '(font-lock-type-face      ((t (:foreground "#268bd2"))))
 '(font-lock-variable-name-face ((t (:foreground "#657b83" :bold t))))
 '(font-lock-warning-face       ((t (:foreground "red" :weight bold)))))

(setq htmlize-use-rgb-map 'force)

;;
(require 'htmlize)
(require 'ox-html)
(setq org-export-htmlize-output-type 'inline-css)
 
