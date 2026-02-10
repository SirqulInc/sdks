(ns sirqul-io-t-platform.specs.stop
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.location :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.route :refer :all]
            [sirqul-io-t-platform.specs.shipment :refer :all]
            [sirqul-io-t-platform.specs.stop :refer :all]
            )
  (:import (java.io File)))


(def stop-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :name) string?
   (ds/opt :owner) account-spec
   (ds/opt :location) location-spec
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :stopType) string?
   (ds/opt :orderIndex) int?
   (ds/opt :startTime) inst?
   (ds/opt :endTime) inst?
   (ds/opt :estimatedTime) inst?
   (ds/opt :estimatedArrivalTime) inst?
   (ds/opt :estimatedDepartureTime) inst?
   (ds/opt :actualTime) inst?
   (ds/opt :desiredTime) inst?
   (ds/opt :timePadding) int?
   (ds/opt :route) route-spec
   (ds/opt :shipment) shipment-spec
   (ds/opt :progressStatus) string?
   (ds/opt :compareEstimatedTime) inst?
   (ds/opt :compareEstimatedArrivalTime) inst?
   (ds/opt :compareEstimiatedDepartureTime) inst?
   (ds/opt :polyline) string?
   (ds/opt :parent) stop-spec
   (ds/opt :locationDisplay) string?
   (ds/opt :complete) boolean?
   (ds/opt :contentName) string?
   (ds/opt :locationAddress) string?
   })

(def stop-spec
  (ds/spec
    {:name ::stop
     :spec stop-data}))
