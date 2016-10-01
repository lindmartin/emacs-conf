;;; Local configuration file

;;; Add local to exec-path
(add-to-list 'exec-path "/usr/local/bin")

;;; Setup path to SLIME
(setq use-quicklisp-slime t)
(setq quicklisp-root-dir "~/dev/quicklisp")
(setq slime-root-dir "~/dev/slime")

;;; Setup path to erlang and emacs tools for erlang
;(setq erlang-root-dir "/usr/local/lib/erlang")
;(setq erlang-tools-version "2.6.13")

;;; Setup ispell compliant program
(setq-default ispell-program-name "aspell")
