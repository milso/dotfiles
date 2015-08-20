(add-to-list 'load-path "~/.emacs.d/emms")

(require 'emms-setup)
(require 'emms-info-libtag)
(require 'emms-player-mpg321-remote)
(emms-default-players)

(setq
 emms-info-asynchronously t
 later-do-interval 0.0001
 emms-info-functions '(emms-info-libtag)
 emms-source-file-default-directory "~/Music"
 emms-mode-line-format " %s "
 emms-show-format "Now Playing: %s")