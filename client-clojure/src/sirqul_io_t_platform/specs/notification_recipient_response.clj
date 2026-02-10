(ns sirqul-io-t-platform.specs.notification-recipient-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def notification-recipient-response-data
  {
   (ds/opt :accountId) int?
   (ds/opt :locationDisplay) string?
   (ds/opt :display) string?
   (ds/opt :username) string?
   (ds/opt :accountType) string?
   (ds/opt :profileImage) string?
   (ds/opt :gender) string?
   (ds/opt :contactEmail) string?
   (ds/opt :applicationId) int?
   (ds/opt :appName) string?
   (ds/opt :hasApns) boolean?
   (ds/opt :hasGcm) boolean?
   (ds/opt :hasEmail) boolean?
   (ds/opt :hasSms) boolean?
   })

(def notification-recipient-response-spec
  (ds/spec
    {:name ::notification-recipient-response
     :spec notification-recipient-response-data}))
