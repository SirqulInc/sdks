(ns sirqul-io-t-platform.specs.leg
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.step :refer :all]
            )
  (:import (java.io File)))


(def leg-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :parentOwner) account-spec
   (ds/opt :application) application-spec
   (ds/opt :deviceId) string?
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
   (ds/opt :type) string?
   (ds/opt :retailerLocationId) int?
   (ds/opt :floorId) string?
   (ds/opt :steps) (s/coll-of step-spec)
   })

(def leg-spec
  (ds/spec
    {:name ::leg
     :spec leg-data}))
