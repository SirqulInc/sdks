(ns sirqul-io-t-platform.specs.time-slot-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def time-slot-response-data
  {
   (ds/opt :scheduledDate) int?
   (ds/opt :startTime) int?
   (ds/opt :endTime) int?
   (ds/opt :dayOfWeek) int?
   (ds/opt :timeZone) string?
   (ds/opt :reservationCount) int?
   (ds/opt :reservations) (s/coll-of account-short-response-spec)
   })

(def time-slot-response-spec
  (ds/spec
    {:name ::time-slot-response
     :spec time-slot-response-data}))
