; color theme from kuler
; B22A07 996152 FF2364 83FF63 74CC08



(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
	                 ("melpa" . "http://melpa.org/packages/")))
(require 'powerline)
(powerline-default-theme)
(set-face-attribute 'mode-line nil
		    :foreground "#83FF63"
		    :background "#FF2364"
		    :box nil)

(require 'tabbar)
(require 'tabbar-ruler)
(require 'dirtree)
(require 'color-theme)
(require 'ace-popup-menu)
(color-theme-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(blink-cursor-mode t)
 '(current-language-environment "German")
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("648ae329425c49e83b4552605731ab9f90665d36fc542b7c27799c1edb4117f3" default)))
 '(font-use-system-font t)
 '(red "#ffffff"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
