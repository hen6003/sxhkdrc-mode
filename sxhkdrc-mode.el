(setq sxhkdrc-highlights
      '(("^.*#.*$" . font-lock-comment-face)
		("    .*$" . font-lock-function-name-face)
        ("[a-zA-Z0-9]\\|_" . font-lock-constant-face)
		("+\\|;\\|{\\|,\\|}" . font-lock-string-face)))

(define-derived-mode sxhkdrc-mode fundamental-mode "sxhkdrc"
  "major mode for syntax highlighting of sxhkrc."
  (setq font-lock-defaults '(sxhkdrc-highlights)))

(add-to-list 'auto-mode-alist '("\\sxhkdrc\\'" . sxhkdrc-mode))
