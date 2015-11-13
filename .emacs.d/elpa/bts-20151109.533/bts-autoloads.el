;;; bts-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "bts" "bts.el" (22085 61773 216539 293000))
;;; Generated autoloads from bts.el

(autoload 'bts:project-new "bts" "\
Popup a widget buffer for creating a new project configuration for SYSTEM.

SYSTEM is a `bts:system' object.

\(fn SYSTEM)" t nil)

(autoload 'bts:project-update "bts" "\
Popup a widget buffer for updating PROJECT.

PROJECT is a plist as project configuration.

\(fn PROJECT)" t nil)

(autoload 'bts:project-remove "bts" "\
Remove PROJECT with confirm.

PROJECT is a plist as project configuration.

\(fn PROJECT)" t nil)

(autoload 'bts:project-remove-all "bts" "\
Remove all project configurations with confirm.

\(fn)" t nil)

(autoload 'bts:query-new "bts" "\
Popup a widget buffer for creating a new query configuration belongs to PROJECT.

PROJECT is a plist as project configuration.

\(fn PROJECT)" t nil)

(autoload 'bts:query-update "bts" "\
Popup a widget buffer for updating QUERY.

QUERY is a plist as query configuration.

\(fn QUERY)" t nil)

(autoload 'bts:query-remove "bts" "\
Remove QUERY with confirm.

QUERY is a plist as query configuration.

\(fn QUERY)" t nil)

(autoload 'bts:query-remove-all "bts" "\
Remove all query configurations with confirm.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("bts-pkg.el") (22085 61773 224979 736000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; bts-autoloads.el ends here
