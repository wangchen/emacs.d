(require-package 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
;;(setq-default ac-expand-on-auto-complete nil)
;;(setq-default ac-auto-start nil)
;(setq-default ac-dwim nil) ; To get pop-ups with docs even if a word is uniquely completed
(ac-config-default)
(provide 'init-auto-complete)
