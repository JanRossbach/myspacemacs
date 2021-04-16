(spacemacs/set-leader-keys "RET" 'bookmark-jump)

(spacemacs/set-leader-keys-for-major-mode 'python-mode "se" 'python-shell-send-statement)

(spacemacs/set-leader-keys-for-major-mode 'org-mode "v" 'org-brain-visualize)
(spacemacs/set-leader-keys-for-major-mode 'org-mode "g" 'org-brain-goto)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Dropbox/Org/newgtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+olp+datetree "~/Dropbox/Org/journal.org")
         "* %?\nEntered on %U\n  %i\n")
        ("p" "Project" entry (file+headline "~/Dropbox/Org/newgtd.org" "Projects")
         "** PROJECT %^{Project Name}\n **  %i\n  %a")
        ("n" "Note" plain (file "~/Dropbox/Org/inbox.org")
         "* %^{Headline}\n %i")
        ("a" "Anki")
        ("ad" "Deep Learning" entry (file+headline "~/Dropbox/Org/anki.org" "Deep Learning")
         (file "~/Dropbox/Org/templates/ankiTemplate.org"))
        ("am" "Model Checking" entry (file+headline "~/Dropbox/Org/anki.org" "Model Checking")
         (file "~/Dropbox/Org/templates/ankiTemplate.org"))
        ("aa" "Approximative Algorithmen" entry (file+headline "~/Dropbox/Org/anki.org" "Approximative Algorithmen")
         (file "~/Dropbox/Org/templates/ankiTemplate.org"))))

(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
 'org-babel-load-languages
 '( (java  . t)
    (python  . t)
    (shell . t)
    (clojure . t)
    (emacs-lisp . t)
    ))

(setq org-babel-clojure-backend 'cider)

(use-package org-alert
  :ensure t
  :custom (alert-default-style 'notifications)
  :config
  (setq org-alert-interval 900
        org-alert-notification-title "Org Alert Reminder!")
  (org-alert-enable))

(setq org-ref-default-bibliography '("~/Dropbox/School/Papers/references.bib")
      org-ref-pdf-directory "~/Dropbox/School/Papers/"
      org-ref-bibliography-notes "~/Dropbox/School/Papers/notes.org")

(setq org-ref-open-pdf-function
      (lambda (fpath)
        (start-process "zathura" "*helm-bibtex-zathura*" "/usr/bin/zathura" fpath)))

(setq neo-theme 'icons)
(setq neo-window-position 'right)

(use-package ledger-mode
  :mode ("\\.dat\\'"
         "\\.ledger\\'")
  :custom (ledger-clear-whole-transactions t))
(use-package flycheck-ledger :after ledger-mode)

(openwith-mode t)
(setq openwith-associations '(("\\.pdf\\'" "zathura" (file))))

(setq comp-async-report-warnings-errors nil)
