(ns sirqul-io-t-platform.specs.step
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.leg :refer :all]
            )
  (:import (java.io File)))


(def step-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :deviceId) string?
   (ds/opt :leg) leg-spec
   (ds/opt :distance) float?
   (ds/opt :duration) int?
   (ds/opt :startLatitude) float?
   (ds/opt :startLongitude) float?
   (ds/opt :startAltitude) float?
   (ds/opt :startDate) inst?
   (ds/opt :endLatitude) float?
   (ds/opt :endLongitude) float?
   (ds/opt :endAltitude) float?
   (ds/opt :endDate) inst?
   })

(def step-spec
  (ds/spec
    {:name ::step
     :spec step-data}))
