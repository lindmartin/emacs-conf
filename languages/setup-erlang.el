;;; Setup emacs-tools for erlang.
(setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.7/emacs" load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(require 'erlang-start)
