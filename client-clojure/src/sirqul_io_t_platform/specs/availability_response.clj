(ns sirqul-io-t-platform.specs.availability-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def availability-response-data
  {
   (ds/opt :availabilityId) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :dayOfWeek) int?
   (ds/opt :startTime) int?
   (ds/opt :endTime) int?
   (ds/opt :timeZone) string?
   (ds/opt :deleted) boolean?
   })

(def availability-response-spec
  (ds/spec
    {:name ::availability-response
     :spec availability-response-data}))
