;;; prodigy-view-test.el --- Prodigy: Tests for the view mode -*- lexical-binding: t; -*-

;; Copyright (C) 2014 Johan Andersson

;; Author: Johan Andersson <johan.rejeep@gmail.com>
;; Maintainer: Johan Andersson <johan.rejeep@gmail.com>

;; This file is NOT part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;;; Code:

(defmacro with-view-mode (&rest body)
  "Yield BODY in a `prodigy-view-mode' buffer."
  `(with-temp-buffer
     (prodigy-view-mode)
     ,@body))

(ert-deftest prodigy-view-test/major-mode ()
  (with-view-mode
   (should (eq major-mode 'prodigy-view-mode))))

(ert-deftest prodigy-view-test/mode-line ()
  (with-view-mode
   (should (string= mode-name "Prodigy-view"))))
(provide 'prodigy-view-test)

;;; prodigy-view-test.el ends here
