(tool-bar-mode 0)
(menu-bar-mode 0)

(load-theme 'manoj-dark t)
;; (ispell-change-dictionary "american" t)

(global-set-key "\C-z" 'set-mark-command)
(global-set-key "\C-u" 'er/expand-region)

(global-set-key "\C-xk" 'kill-this-buffer)
(global-set-key "\C-cc" 'org-capture)

(global-set-key "\C-xk" 'kill-this-buffer)
(global-set-key [(meta g)] 'goto-line)

(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-3") 'split-window-horizontally)
(global-set-key (kbd "M-0") 'delete-window)

(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(setq remote-file-name-inhibit-cache nil)
(setq vc-ignore-dir-regexp
      (format "%s\\|%s"
              vc-ignore-dir-regexp
              tramp-file-name-regexp))
(setq tramp-verbose 6)
(setq projectile-mode-line "Projectile")

(defvar my-windows-config-dir (expand-file-name  "windows" prelude-personal-dir)
  "This directory houses all of the config for Windows.")
(if (eq system-type 'windows-nt)
    (mapc 'load (directory-files my-windows-config-dir 't "^[^#\.].*el$")))

(defvar my-private-config (expand-file-name "private.el" prelude-personal-dir)
  "This file is for your private configuration.")
(when (file-exists-p my-private-config)
  (message "Loading private configuration in %s..." my-private-config)
  (load my-private-config))
