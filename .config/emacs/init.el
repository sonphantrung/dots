(package-initialize)
(package-refresh-contents)
(require 'package)

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package org
    :ensure t)

(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" "da186cce19b5aed3f6a2316845583dbee76aea9255ea0da857d1c058ff003546" "745d03d647c4b118f671c49214420639cb3af7152e81f132478ed1c649d4597d" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" "6b1abd26f3e38be1823bd151a96117b288062c6cde5253823539c6926c3bb178" "22a514f7051c7eac7f07112a217772f704531b136f00e2ccfaa2e2a456558d39" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" default))
 '(package-selected-packages
   '(org-superstar toc-org markdown-mode lua-mode haskell-mode eshell-syntax-highlighting treemacs-projectile treemacs-magit treemacs emojify auto-complete switch-window avy helm projectile magit which-key dashboard doom-themes beacon doom-modeline gcmh use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
