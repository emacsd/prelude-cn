;; Set Windows-specific preferences if running in a Windows environment.
(defun udf-windows-setup () (interactive)
       (prefer-coding-system 'utf-8)
       (setq git-shell-path "C:\\Program Files\\Git\\bin")
       (setq explicit-shell-file-name (concat git-shell-path "\\bash.exe"))
       (setq shell-file-name explicit-shell-file-name)
       (setq explicit-sh.exe-args '("--login" "-i"))
       (setenv "SHELL" shell-file-name)
       (add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
       (add-to-list 'exec-path git-shell-path)
       (message "Windows preferences set."))

(if (eq system-type 'windows-nt)
    (udf-windows-setup))
