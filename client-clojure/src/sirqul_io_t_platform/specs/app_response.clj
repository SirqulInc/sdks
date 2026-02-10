(ns sirqul-io-t-platform.specs.app-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.mission-list-response :refer :all]
            [sirqul-io-t-platform.specs.profile-response :refer :all]
            [sirqul-io-t-platform.specs.message-list-response :refer :all]
            )
  (:import (java.io File)))


(def app-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :missions) mission-list-response-spec
   (ds/opt :profile) profile-response-spec
   (ds/opt :messages) message-list-response-spec
   (ds/opt :returning) string?
   })

(def app-response-spec
  (ds/spec
    {:name ::app-response
     :spec app-response-data}))
