(ns sirqul-io-t-platform.specs.assignment-status
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.assignment :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.scheduled-notification :refer :all]
            )
  (:import (java.io File)))


(def assignment-status-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :assignment) assignment-spec
   (ds/opt :creator) account-spec
   (ds/opt :toDo) string?
   (ds/opt :connection) string?
   (ds/opt :method) string?
   (ds/opt :status) string?
   (ds/opt :closure) string?
   (ds/opt :message) string?
   (ds/opt :followUp) inst?
   (ds/opt :notification) scheduled-notification-spec
   })

(def assignment-status-spec
  (ds/spec
    {:name ::assignment-status
     :spec assignment-status-data}))
