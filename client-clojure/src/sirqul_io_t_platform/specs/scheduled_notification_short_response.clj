(ns sirqul-io-t-platform.specs.scheduled-notification-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def scheduled-notification-short-response-data
  {
   (ds/opt :scheduledNotificationId) int?
   (ds/opt :active) boolean?
   (ds/opt :status) string?
   (ds/opt :type) string?
   (ds/opt :name) string?
   (ds/opt :message) string?
   (ds/opt :groupingId) string?
   (ds/opt :scheduledDate) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   })

(def scheduled-notification-short-response-spec
  (ds/spec
    {:name ::scheduled-notification-short-response
     :spec scheduled-notification-short-response-data}))
