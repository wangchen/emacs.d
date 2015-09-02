(require-package 'flymake-google-cpplint)
(require-package 'flymake-cursor)

(semantic-mode 1)
(global-semantic-idle-scheduler-mode t)
(defun my:cc-hook ()
  (require-package 'auto-complete-c-headers)
  (require 'auto-complete-c-headers)
  ;; The basic indentation offset in CC Mode, default is 2, make it be same to tab-width
  (setq c-basic-offset tab-width)
  (add-to-list 'ac-sources 'ac-source-semantic)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/6.1.0/include")
 )
(add-hook 'c++-mode-hook 'my:cc-hook)
(add-hook 'c-mode-hook 'my:cc-hook)

(defun my:flymake-google-lint ()
  (custom-set-variables '(flymake-google-cpplint-command "/usr/local/bin/cpplint"))
  (flymake-google-cpplint-load))
(add-hook 'c-mode-hook 'my:flymake-google-lint)
(add-hook 'c++-mode-hook 'my:flymake-google-lint)

(require-package 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(provide 'init-cc-mode)
