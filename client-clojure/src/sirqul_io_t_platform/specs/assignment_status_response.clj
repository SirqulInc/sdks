(ns sirqul-io-t-platform.specs.assignment-status-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.scheduled-notification-short-response :refer :all]
            )
  (:import (java.io File)))


(def assignment-status-response-data
  {
   (ds/opt :assignmentStatusId) int?
   (ds/opt :active) boolean?
   (ds/opt :toDo) string?
   (ds/opt :connection) string?
   (ds/opt :method) string?
   (ds/opt :status) string?
   (ds/opt :closure) string?
   (ds/opt :message) string?
   (ds/opt :followUp) int?
   (ds/opt :created) int?
   (ds/opt :updated) int?
   (ds/opt :notification) scheduled-notification-short-response-spec
   })

(def assignment-status-response-spec
  (ds/spec
    {:name ::assignment-status-response
     :spec assignment-status-response-data}))
