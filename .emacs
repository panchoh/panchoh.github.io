;; FIXME: fails if run twice, because ~package~ will setup ~ox-hugo~ if already
;; installed, and ~use-package~ won't have the chance of configuring ~ox-hugo~

(require 'package)
(push '("melpa-stable" .
  "https://stable.melpa.org/packages/") package-archives)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package ox-hugo
  :ensure t
  :after ox
  :init
  (setq org-export-with-author nil)
  :config
  (defun org-hugo-export-all-wim-to-md ()
    (org-hugo-export-wim-to-md :all-subtrees nil nil :noerror)))
