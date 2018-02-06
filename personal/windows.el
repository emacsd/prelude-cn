;; Set Windows-specific preferences if running in a Windows environment.
(defun udf-windows-setup () (interactive)
       ;; The variable `git-shell-path' contains the path to the `Git\bin'
       ;; file on my system. I install this in
       ;; `%USERPROFILE%\LocalAppInfo\apps\Git\bin'.
       (setq git-shell-path "C:/Program Files/Git/bin/")
       (setq git-shell-executable
             (concat git-shell-path "\\bash.exe"))
       (add-to-list 'exec-path git-shell-path)
       (setenv "PATH"
               (concat git-shell-path ";"
                       (getenv "PATH")))
       (message "Windows preferences set."))

(if (eq system-type 'windows-nt)
    (udf-windows-setup))
