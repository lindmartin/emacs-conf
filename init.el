;;; Setup MELPA repository
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;;; Update ELPA archives, if needed.
(when (not package-archive-contents)
  (package-refresh-contents))

(setq inhibit-startup-screen t)

;;; Enable option character on os x
(if (eq system-type 'darwin)
    (setq mac-option-modifier nil
	  mac-command-modifier 'meta
	  x-select-enable-clipboard t))

;;; Install package from MELPA
(defvar custom-elpa-packages
  '(;; Multiple cursors
    multiple-cursors
    
    ;; Packages for clojure mode and REPL
    clojure-mode
    cider))

(dolist (p custom-elpa-packages) ;; Install each package in 
  (when (not (package-installed-p p))
    (package-install p)))

;;; Load themes
(if window-system
    (progn
      (add-to-list 'load-path "~/.emacs.d/themes")
      (load "ui.el")))

;;; Load configuration for plugins
(add-to-list 'load-path "~/.emacs.d/plugins")
(load "setup-mc.el")
