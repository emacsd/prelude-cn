;; htmlize: Code block syntax highlighting in Org-mode's HTML export
(prelude-require-packages '(cal-china-x htmlize))

(global-set-key (kbd "C-z") 'set-mark-command)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-c C-u") 'er/expand-region)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-3") 'split-window-horizontally)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(setq default-directory "~" )
(setq remote-file-name-inhibit-cache nil)
(setq vc-ignore-dir-regexp
      (format "%s\\|%s" vc-ignore-dir-regexp tramp-file-name-regexp))
(setq tramp-verbose 6)
(setq projectile-mode-line "Projectile")

(tool-bar-mode 0)
(menu-bar-mode 0)
(ispell-change-dictionary "american" t)
(load-theme 'manoj-dark t)

(if (eq system-type 'windows-nt)
    (mapc 'load (directory-files
                 (expand-file-name  "windows" prelude-personal-dir)
                 't "^[^#\.].*el$")))
;; luotao.el ends here
