;;; Setup SLIME with Steel Bank Common Lisp
(if use-quicklisp-slime
    (load (expand-file-name (concat quicklisp-root-dir
				    "/slime-helper.el")))
  (progn
    (add-to-list 'load-path slime-root-dir)
    (require 'slime)))

(setq inferior-lisp-program "sbcl"
      lisp-indent-function 'common-lisp-indent-function
      slime-complete-symbol-function 'slime-fuzzy-complete-symbol
      slime-startup-animation nil)
