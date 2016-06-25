;; mozcの設定(入ってないからどうせしない)
(use-package mozc
  :config
  (setq default-input-method "japanese-mozc")
  (setq mozc-candidate-style 'echo-area)
  ;; (setq mozc-candidate-style 'overlay)

  ;; mozc周り
  (global-set-key [henkan] 'my-active)
  (define-key mozc-mode-map [muhenkan] 'my-deactive)
  (defun my-active ()
    (interactive)
    (activate-input-method "japanese-mozc")
    )
  (defun my-deactive ()
    (interactive)
    (deactivate-input-method)
    )
  )

;; ;; ibus-mode
;; (use-package ibus
;;   ;; :commands (ibus-mode-on)
;;   :config
;;   (setq ibus-mode-local nil)              ;全角半角を全バッファで共有
;;   (setq ibus-prediction-window-position t) ;カーソル位置で予測候補ウインドウ
;;   (setq ibus-cursor-color '("pink" "cyan" "limegreen"))
;;   (setq blink-cursor-interval nil)
;;   (ibus-define-common-key 'henkan nil)
;;   (ibus-define-common-key 'muhenkan nil)
;;   (set-language-environment "japanese")
;;   (global-set-key [henkan] 'ibus-enable)
;;   (global-set-key [muhenkan] 'ibus-disable)
;;   (add-hook 'after-init-hook
;;             (lambda ()
;;               (ibus-mode-on)
;;               (define-key ibus-mode-map (kbd "C->") nil)
;;               (define-key ibus-mode-map (kbd "C-<") nil)
;;               (define-key ibus-mode-map [henkan] nil)
;;               (define-key ibus-mode-map [muhenkan] nil)
;;               ))
;;   )



;; カーソルを細い縦棒にする
;; (setq cursor-type 'bar)
