(server-mode 1)
(transient-mark-mode 1)
(display-time)
(indent-tabs-mode 0)
(global-set-key [remap list-buffers] 'ibuffer)
(global-company-mode)
(fido-mode)
(electric-pair-mode)
(winner-mode)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-M-g") 'delete-active-region)
(global-set-key (kbd "C-M-z") 'kill-whole-line)
(global-set-key (kbd "C-c C-c C-c") 'magit-commit)
(global-set-key (kbd "C-x j") 'join-line)
(global-set-key (kbd "C-x r 0") 'replace-string)
(global-set-key (kbd "C-M-y") 'kill-current-buffer)
(global-set-key (kbd "C-M-m") 'eval-buffer)
(global-set-key (kbd "C-z") 'keyboard-quit)

(defun find-emacs-init-file () (interactive) (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-x r e") 'find-emacs-init-file)

(defun remove-tilde-files () (interactive)
       (shell-command "find . -regextype grep -regex '.*~$' -delete")
       )
(global-set-key (kbd "C-x r ~") 'remove-tilde-files)

(defun list-tilde-files () (interactive)
       (shell-command "find . -regextype grep -regex '.*~$'")
       )
(global-set-key (kbd "C-x ~") 'list-tilde-files)

(windmove-default-keybindings)
(visual-line-mode)
(column-number-mode)
(menu-bar-mode 0)
(tool-bar-mode 0)
(global-hl-line-mode 1)
;; (ido-mode 1)
;; (setq ido-everywhere 1)
;; (setq ido-enable-flex-matching 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-label-minimum-indentation 4)
 '(column-number-mode t)
 '(compile-command "gcc -g ~/git-repos/Lox/*.c -o clox")
 '(custom-buffer-indent 4)
 '(custom-enabled-themes '(gruvbox-light-hard))
 '(custom-safe-themes
   '("bf948e3f55a8cd1f420373410911d0a50be5a04a8886cabe8d8e471ad8fdba8e" "512ce140ea9c1521ccaceaa0e73e2487e2d3826cc9d287275550b47c04072bc4" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" "49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68" "016f665c0dd5f76f8404124482a0b13a573d17e92ff4eb36a66b409f4d1da410" "f458b92de1f6cf0bdda6bce23433877e94816c3364b821eb4ea9852112f5d7dc" "2f8eadc12bf60b581674a41ddc319a40ed373dd4a7c577933acaff15d2bf7cc6" "4ff1c4d05adad3de88da16bd2e857f8374f26f9063b2d77d38d14686e3868d8d" "683b3fe1689da78a4e64d3ddfce90f2c19eb2d8ab1bab1738a63d8263119c3f4" "5586a5db9dadef93b6b6e72720205a4fa92fd60e4ccfd3a5fa389782eab2371b" "2853dd90f0d49439ebd582a8cbb82b9b3c2a02593483341b257f88add195ad76" "dc8285f7f4d86c0aebf1ea4b448842a6868553eded6f71d1de52f3dcbc960039" "1aa4243143f6c9f2a51ff173221f4fd23a1719f4194df6cef8878e75d349613d" "991ca4dbb23cab4f45c1463c187ac80de9e6a718edc8640003892a2523cb6259" "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68" "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22" "251ed7ecd97af314cd77b07359a09da12dcd97be35e3ab761d4a92d8d8cf9a71" "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443" "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f" "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da" "b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "7ea883b13485f175d3075c72fceab701b5bf76b2076f024da50dff4107d0db25" "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006" "ddffe74bc4bf2c332c2c3f67f1b8141ee1de8fd6b7be103ade50abb97fe70f0c" "5b9a45080feaedc7820894ebbfe4f8251e13b66654ac4394cb416fef9fdca789" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" "1cae4424345f7fe5225724301ef1a793e610ae5a4e23c023076dc334a9eb940a" "8b6506330d63e7bc5fb940e7c177a010842ecdda6e1d1941ac5a81b13191020e" "5f128efd37c6a87cd4ad8e8b7f2afaba425425524a68133ac0efd87291d05874" "4fda8201465755b403a33e385cf0f75eeec31ca8893199266a6aeccb4adedfa4" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "545ab1a535c913c9214fe5b883046f02982c508815612234140240c129682a68" "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" "0c08a5c3c2a72e3ca806a29302ef942335292a80c2934c1123e8c732bb2ddd77" "636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561" "51c71bb27bdab69b505d9bf71c99864051b37ac3de531d91fdad1598ad247138" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "e1f4f0158cd5a01a9d96f1f7cdcca8d6724d7d33267623cc433fe1c196848554" "ae426fc51c58ade49774264c17e666ea7f681d8cae62570630539be3d06fd964" "70b596389eac21ab7f6f7eb1cf60f8e60ad7c34ead1f0244a577b1810e87e58c" "afa47084cb0beb684281f480aa84dab7c9170b084423c7f87ba755b15f6776ef" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "7e068da4ba88162324d9773ec066d93c447c76e9f4ae711ddd0c5d3863489c52" "a589c43f8dd8761075a2d6b8d069fc985660e731ae26f6eddef7068fece8a414" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "467dc6fdebcf92f4d3e2a2016145ba15841987c71fbe675dcfe34ac47ffb9195" "680f62b751481cc5b5b44aeab824e5683cf13792c006aeba1c25ce2d89826426" "a44e2d1636a0114c5e407a748841f6723ed442dc3a0ed086542dc71b92a87aee" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "ce4234c32262924c1d2f43e6b61312634938777071f1129c7cde3ebd4a3028da" "89d9dc6f4e9a024737fb8840259c5dd0a140fd440f5ed17b596be43a05d62e67" "c865644bfc16c7a43e847828139b74d1117a6077a845d16e71da38c8413a5aaa" "570263442ce6735821600ec74a9b032bc5512ed4539faf61168f2fdf747e0668" "adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "a138ec18a6b926ea9d66e61aac28f5ce99739cf38566876dc31e29ec8757f6e2" "2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" "bbb13492a15c3258f29c21d251da1e62f1abb8bbd492386a673dcfab474186af" "eab123a5ed21463c780e17fc44f9ffc3e501655b966729a2d5a2072832abd3ac" "f149d9986497e8877e0bd1981d1bef8c8a6d35be7d82cba193ad7e46f0989f6a" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" "fa49766f2acb82e0097e7512ae4a1d6f4af4d6f4655a48170d0a00bcb7183970" "b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" "19a2c0b92a6aa1580f1be2deb7b8a8e3a4857b6c6ccf522d00547878837267e7" "f681100b27d783fefc3b62f44f84eb7fa0ce73ec183ebea5903df506eb314077" default))
 '(display-line-numbers t)
 '(display-time-mode t)
 '(electric-pair-pairs
   '((34 . 34)
     (8216 . 8217)
     (8220 . 8221)
     (40 . 41)
     (123 . 125)
     (91 . 93)))
 '(explicit-shell-file-name nil)
 '(frame-background-mode 'light)
 '(indent-tabs-mode nil)
 '(isearch-allow-motion t)
 '(isearch-allow-scroll t)
 '(kill-ring-max 1000)
 '(kill-whole-line nil)
 '(life-step-time 0.01)
 '(package-selected-packages
   '(elpy lsp-jedi lsp-python-ms doom-themes spacemacs-theme material-theme rust-mode plisp-mode helm-lsp which-key lsp-ui yasnippet flycheck projectile lsp-java company use-package magit dracula-theme gruvbox-theme eglot))
 '(rust-cargo-default-arguments "--quiet")
 '(rust-format-on-save t)
 '(rust-format-show-buffer t)
 '(rust-indent-method-chain t)
 '(shell-command-prompt-show-cwd t)
 '(tool-bar-mode nil)
 '(warning-minimum-level :error))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(require 'use-package)

;; ========== Eglot ==========
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)
;; ========== Eglot ==========

;; ========== Rust ==========

(require 'lsp-mode)
(add-hook 'rust-mode-hook 'eglot-ensure)

(add-hook 'rust-mode-hook #'lsp)

;; ========== Rust ==========

;; ========== Python ==========
(require 'tree-sitter)
(require 'tree-sitter-langs)
(tree-sitter-require 'python)
(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

;; Make eglot start automatically
(use-package eglot
  :ensure t
  :defer t
  :hook (python-mode . eglot-ensure))

(use-package eglot
  :ensure t
  :defer t
  :bind (:map eglot-mode-map
              ("C-c C-d" . eldoc)
              ("C-c C-e" . eglot-rename)
              ("C-c C-o" . python-sort-imports)
              ("C-c C-f" . eglot-format-buffer))
  :hook ((python-ts-mode . eglot-ensure)
         (python-ts-mode . flyspell-prog-mode)
         (python-ts-mode . superword-mode)
         (python-ts-mode . hs-minor-mode)
         (python-ts-mode . (lambda () (set-fill-column 88))))
  :config
  (setq-default eglot-workspace-configuration
                '((:pylsp . (:configurationSources ["flake8"]
                             :plugins (
;;                                       :pycodestyle (:enabled :json-false)
                                       :mccabe (:enabled :json-false)
                                       :pyflakes (:enabled :json-false)
                                       :flake8 (:enabled :json-false
                                                :maxLineLength 88)
                                       :ruff (:enabled t
                                              :lineLength 88)
                                       :pydocstyle (:enabled t
                                                    :convention "numpy")
                                       :yapf (:enabled :json-false)
                                       :autopep8 (:enabled :json-false)
                                       :black (:enabled t
                                               :line_length 88
                                               :cache_config t)))))))
;; ========== Python ==========

(defun ipython ()
    (interactive)
        (term "/home/hatim/.local/bin/ipython"))
(put 'narrow-to-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
