(setq sxhkdrc-highlights
      '(("^.*#.*$" . font-lock-comment-face)
		("super\\|ctrl\\|alt\\|shift\\|_" . font-lock-function-name-face)
		("a\\|b\\|c\\|d\\|e\\|f\\|g\\|h\\|i\\|j\\|k\\|l\\|m\\|n\\|o\\|p\\|q\\|r\\|s\\|t\\|u\\|v\\|w\\|x\\|y\\|z\\|A\\|B\\|C\\|D\\|E\\|F\\|G\\|H\\|I\\|J\\|K\\|L\\|M\\|N\\|O\\|P\\|Q\\|R\\|S\\|T\\|U\\|V\\|W\\|X\\|Y\\|Z\\|1\\|2\\|3\\|4\\|5\\|6\\|7\\|8\\|9\\|0" . font-lock-constant-face)
        ("+\\|;\\|{\\|,\\|}" . font-lock-string-face)))

(define-derived-mode sxhkdrc-mode fundamental-mode "sxhkdrc"
  "major mode for syntax highlighting of sxhkrc."
  (setq font-lock-defaults '(sxhkdrc-highlights)))

(add-to-list 'auto-mode-alist '("\\sxhkdrc\\'" . sxhkdrc-mode))
