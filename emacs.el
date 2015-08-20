(setq auto-save-default nil)

(require 'w3m-load)
(setq w3m-use-tab t)
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(setq w3m-home-page "http://duckduckgo.com/")
(global-set-key "\C-xm" 'browse-url-at-point)

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/themes")

(add-to-list 'load-path "~/.emacs.d/emms/")
(require 'emms-setup)
(emms-standard)
(emms-default-players)
(require 'emms-info-libtag)
(setq emms-info-functions '(emms-info-libtag))
(setq emms-source-file-default-directory "~/Music/")
(add-hook 'emms-player-started-hook 'emms-show)
(setq emms-show-format "Now Playing: %s")

;;(require 'emms-player-mpd)
;;(setq emms-player-mpd-server-name "localhost")
;;(setq emms-player-mpd-server-port "6600")
;;(add-to-list 'emms-info-functions 'emms-info-mpd)
;;(add-to-list 'emms-player-list 'emms-player-mpd)

(require 'color-theme)
(color-theme-initialize)
(color-theme-xp)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default-input-method "korean-hangul")
 '(display-battery-mode t)
 '(display-time-mode t)
 '(font-use-system-font t)
 '(initial-scratch-message ";; scratch buffer")
 '(tool-bar-mode nil)
 '(w3m-antenna-sites (quote (("http://textfiles.com/directory.html" "T E X T F I L E S" nil) ("https://bbs.archlinux.org/" "Arch Linux Forums" nil) ("http://duckduckgo.com/" "DuckDuckGo" nil)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "lightyellow2" :foreground "gray20" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "artwiz" :family "smoothansi")))))
