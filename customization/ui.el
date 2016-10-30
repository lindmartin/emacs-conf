;;; Code that will be run in case there is a windowing system

;;; Remove the toolbar
(tool-bar-mode 0)

;;; Remove scroolbars
(scroll-bar-mode -1)

;;; Line numbers
(global-linum-mode t)

;;; Load theme
;(load "bliss-theme.el")
;(load "radiance-theme.el")
;(load "smyx-theme.el")
;(load "solarized-light-theme.el")
;;(load-theme 'base16-greenscreen t)
(load-theme 'github)

