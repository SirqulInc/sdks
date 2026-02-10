(ns sirqul-io-t-platform.specs.activity-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def activity-response-data
  {
   (ds/opt :activityId) int?
   (ds/opt :created) int?
   (ds/opt :appKey) string?
   (ds/opt :targetId) int?
   (ds/opt :targetType) string?
   (ds/opt :targetLegacyId) string?
   (ds/opt :targetDescription) string?
   (ds/opt :targetActive) boolean?
   (ds/opt :action) string?
   (ds/opt :slaveEntityId) int?
   })

(def activity-response-spec
  (ds/spec
    {:name ::activity-response
     :spec activity-response-data}))
