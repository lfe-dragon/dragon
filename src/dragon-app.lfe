(defmodule dragon-app
  (behaviour application)
  ;; app implementation
  (export
   (start 2)
   (stop 1)))

;;; --------------------------
;;; application implementation
;;; --------------------------

(defun start (_type _args)
  (logger:set_application_level 'dragon 'all)
  (logger:info "Starting dragon application ...")
  (dragon-sup:start_link))

(defun stop (_state)
  (dragon-sup:stop)
  'ok)
