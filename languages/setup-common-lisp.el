;;; Setup SLIME with Steel Bank Common Lisp
(add-to-list 'load-path "~/Tools/slime")
(require 'slime)

(setq inferior-lisp-program "/usr/local/bin/sbcl"
      lisp-indent-function 'common-lisp-indent-function
      slime-complete-symbol-function 'slime-fuzzy-complete-symbol
      slime-startup-animation nil)
