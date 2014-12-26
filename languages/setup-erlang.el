;;; Setup emacs-tools for erlang.
(add-to-list 'load-path
	     (concat erlang-root-dir "/lib/tools-"
		     (chomp erlang-tools-version) "/emacs"))
(add-to-list 'exec-path (concat erlang-root-dir "/bin"))
(require 'erlang-start)
