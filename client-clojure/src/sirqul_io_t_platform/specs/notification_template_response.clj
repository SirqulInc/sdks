(ns sirqul-io-t-platform.specs.notification-template-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.application-mini-response :refer :all]
            )
  (:import (java.io File)))


(def notification-template-response-data
  {
   (ds/opt :notificationTemplateId) int?
   (ds/opt :event) string?
   (ds/opt :conduit) string?
   (ds/opt :title) string?
   (ds/opt :body) string?
   (ds/opt :publicBody) string?
   (ds/opt :application) application-mini-response-spec
   (ds/opt :updated) int?
   (ds/opt :created) int?
   (ds/opt :tags) string?
   })

(def notification-template-response-spec
  (ds/spec
    {:name ::notification-template-response
     :spec notification-template-response-data}))
