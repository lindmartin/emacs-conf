(add-hook 'LaTeX-mode-hook
          (lambda ()
            (kill-local-variable 'line-indent-function)))
