(ns sirqul-io-t-platform.specs.leg-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.step-response :refer :all]
            )
  (:import (java.io File)))


(def leg-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :appKey) string?
   (ds/opt :distance) float?
   (ds/opt :duration) int?
   (ds/opt :startLatitude) float?
   (ds/opt :startLongitude) float?
   (ds/opt :startAltitude) float?
   (ds/opt :startDate) int?
   (ds/opt :endLatitude) float?
   (ds/opt :endLongitude) float?
   (ds/opt :endAltitude) float?
   (ds/opt :endDate) int?
   (ds/opt :created) int?
   (ds/opt :tags) string?
   (ds/opt :deviceId) string?
   (ds/opt :accountId) int?
   (ds/opt :deviceSignature) string?
   (ds/opt :parentAccountId) int?
   (ds/opt :steps) (s/coll-of step-response-spec)
   (ds/opt :type) string?
   (ds/opt :returning) string?
   })

(def leg-response-spec
  (ds/spec
    {:name ::leg-response
     :spec leg-response-data}))
