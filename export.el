(use-package package
  :ensure nil
  :config
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))

(use-package ox-hugo
  :ensure t
  :after ox
  :init
  (setq org-export-with-author nil)
  :config
  (defun org-hugo-export-all-wim-to-md ()
    (org-hugo-export-wim-to-md :all-subtrees nil nil :noerror)))
