(ns sirqul-io-t-platform.specs.vehicle
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.vehicle-type :refer :all]
            [sirqul-io-t-platform.specs.service-hub :refer :all]
            [sirqul-io-t-platform.specs.program :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.region :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            )
  (:import (java.io File)))


(def vehicle-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :vehicleType) vehicle-type-spec
   (ds/opt :vin) string?
   (ds/opt :licensePlateNumber) string?
   (ds/opt :externalId) string?
   (ds/opt :hub) service-hub-spec
   (ds/opt :programs) (s/coll-of program-spec)
   (ds/opt :seatQuantity) int?
   (ds/opt :picture) asset-spec
   (ds/opt :markerIcon) asset-spec
   (ds/opt :trackingColor) string?
   (ds/opt :belongsTo) account-spec
   (ds/opt :zone) region-spec
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :inUse) boolean?
   (ds/opt :contentName) string?
   })

(def vehicle-spec
  (ds/spec
    {:name ::vehicle
     :spec vehicle-data}))
