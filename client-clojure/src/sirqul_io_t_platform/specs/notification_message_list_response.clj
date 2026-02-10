(ns sirqul-io-t-platform.specs.notification-message-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.notification-message-response :refer :all]
            )
  (:import (java.io File)))


(def notification-message-list-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :items) (s/coll-of notification-message-response-spec)
   (ds/opt :count) int?
   (ds/opt :hasMoreResults) boolean?
   (ds/opt :returning) string?
   })

(def notification-message-list-response-spec
  (ds/spec
    {:name ::notification-message-list-response
     :spec notification-message-list-response-data}))
