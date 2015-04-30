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

;;; Custom functions and local machine configuraiton
(add-to-list 'load-path "~/.emacs.d/customization")
(load "functions.el")
(load "local.el")

;;; Defaults

;;; Remove startup screen
(setq inhibit-startup-screen t)

;;; Save backup files in .emacs.d
(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs.d/saves"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;;; Enable option character on os x
(if (eq system-type 'darwin)
    (setq mac-option-modifier nil
	  mac-command-modifier 'meta
	  x-select-enable-clipboard t))

;;; Install package from MELPA
(defvar custom-elpa-packages
  '(;; Multiple cursors
    multiple-cursors

    ;; Better TeX mode
    auctex

    ;; Solarized theme
    solarized-theme

    ;; Package for handling S-expressions easier
    paredit
    
    ;; Packages for clojure mode and REPL
    clojure-mode
    cider))

(dolist (p custom-elpa-packages) ;; Install each package in 
  (when (not (package-installed-p p))
    (package-install p)))

;;; Load libraries not in ELPA
(add-to-list 'load-path "~/.emacs.d/libraries")

;;; Load themes
(if window-system
    (progn
      (add-to-list 'load-path "~/.emacs.d/themes")
      (load "ui.el")))

;;; Load configuration for plugins
(add-to-list 'load-path "~/.emacs.d/plugins")
(load "setup-mc.el")
(load "setup-column-marker.el")

;;; Load configuration files for languages
(add-to-list 'load-path "~/.emacs.d/languages")
(load "setup-clojure.el")
(load "setup-erlang.el")
(load "setup-common-lisp.el")
(load "setup-latex.el")

