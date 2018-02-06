(tool-bar-mode 0)
(menu-bar-mode 0)

(prelude-require-packages '(cal-china-x))

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

(setq mark-holidays-in-calendar t)

(defvar prelude-personal-private-dir (expand-file-name "private" prelude-personal-dir)
  "This directory is for your private configuration.")
(when (file-exists-p prelude-personal-private-dir)
  (message "Loading private configuration files in %s..." prelude-personal-private-dir)
  (mapc 'load (directory-files prelude-personal-private-dir 't "^[^#\.].*el$")))
