(ns sirqul-io-t-platform.specs.blocked-notification-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def blocked-notification-response-data
  {
   (ds/opt :blockedNotificationId) int?
   (ds/opt :created) int?
   (ds/opt :event) string?
   (ds/opt :conduit) string?
   (ds/opt :customType) string?
   (ds/opt :contentType) string?
   (ds/opt :contentId) int?
   (ds/opt :searchTags) string?
   (ds/opt :blocked) boolean?
   (ds/opt :deleted) boolean?
   })

(def blocked-notification-response-spec
  (ds/spec
    {:name ::blocked-notification-response
     :spec blocked-notification-response-data}))
