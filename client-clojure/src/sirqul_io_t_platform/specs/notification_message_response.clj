(ns sirqul-io-t-platform.specs.notification-message-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def notification-message-response-data
  {
   (ds/opt :sender) account-short-response-spec
   (ds/opt :event) string?
   (ds/opt :notificationMessage) string?
   (ds/opt :created) int?
   (ds/opt :hasRead) boolean?
   (ds/opt :contentId) int?
   (ds/opt :contentType) string?
   (ds/opt :contentName) string?
   (ds/opt :parentId) int?
   (ds/opt :parentType) string?
   (ds/opt :actionCategory) string?
   (ds/opt :thumbnailURL) string?
   (ds/opt :coverURL) string?
   })

(def notification-message-response-spec
  (ds/spec
    {:name ::notification-message-response
     :spec notification-message-response-data}))
