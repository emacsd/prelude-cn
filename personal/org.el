(require 'org)

(eval-after-load 'org
  '(progn
     (org-defkey org-mode-map "\C-c\C-j" 'org-open-at-point)

     (require 'org-crypt)
     (org-crypt-use-before-save-magic)
     (setq org-tags-exclude-from-inheritance (quote("crypt")))
     (setq org-crypt-key "lotreal@gmail.com")
     )
  )

(setq org-directory "~/Documents/org/")

(setq org-default-notes-file (concat org-directory "TODO.org"))
(setq org-agenda-files (list (concat org-directory "TODO.org")))

(setq org-file-apps
      '((auto-mode . emacs)
        (directory . emacs)
        ("\\.mm\\'" . default)
        ("\\.x?html?\\'" . default)
        ("\\.pdf\\'" . system)))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "" "TASKS")
         "* TODO %?\n  %i\n  %a")
        ))

(defun air-org-skip-subtree-if-habit ()
  "Skip an agenda entry if it has a STYLE property equal to \"habit\"."
  (let ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (string= (org-entry-get nil "STYLE") "habit")
        subtree-end
      nil)))

(defun air-org-skip-subtree-if-priority (priority)
  "Skip an agenda subtree if it has a priority of PRIORITY.

PRIORITY may be one of the characters ?A, ?B, or ?C."
  (let ((subtree-end (save-excursion (org-end-of-subtree t)))
        (pri-value (* 1000 (- org-lowest-priority priority)))
        (pri-current (org-get-priority (thing-at-point 'line t))))
    (if (= pri-value pri-current)
        subtree-end
      nil)))

(setq org-agenda-custom-commands
      '(("d" "Daily agenda and all TODOs"
         ((tags "PRIORITY=\"A\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "High-priority unfinished tasks:")))
          (agenda "" ((org-agenda-ndays 1)))
          (alltodo ""
                   ((org-agenda-skip-function '(or (air-org-skip-subtree-if-habit)
                                                   (air-org-skip-subtree-if-priority ?A)
                                                   (org-agenda-skip-if nil '(scheduled deadline))))
                    (org-agenda-overriding-header "ALL normal priority tasks:"))))
         ((org-agenda-compact-blocks t)))))

(defvar org-build-directory (expand-file-name  "build" org-directory))
(defadvice org-export-output-file-name (before org-add-export-dir activate)
  "Modifies org-export to place exported files in a different directory"
  (when (not pub-dir)
    (setq pub-dir (expand-file-name (substring extension 1) org-build-directory))
    (when (not (file-directory-p pub-dir))
      (make-directory pub-dir t))))
