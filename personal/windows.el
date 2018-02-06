;; Set Windows-specific preferences if running in a Windows environment.
(defun udf-windows-setup () (interactive)
       (setq git-shell-path "C:\\Program Files\\Git\\bin")
       (setq explicit-shell-file-name (concat git-shell-path "\\bash.exe"))
       (add-to-list 'exec-path git-shell-path)
       (setenv "PATH"
               (concat git-shell-path ";"
                       (getenv "PATH")))
       (message "Windows preferences set."))

(if (eq system-type 'windows-nt)
    (udf-windows-setup))
