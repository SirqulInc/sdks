(ns sirqul-io-t-platform.specs.trip
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.location :refer :all]
            [sirqul-io-t-platform.specs.location :refer :all]
            [sirqul-io-t-platform.specs.shipment :refer :all]
            [sirqul-io-t-platform.specs.recurrence :refer :all]
            [sirqul-io-t-platform.specs.route :refer :all]
            [sirqul-io-t-platform.specs.trip :refer :all]
            [sirqul-io-t-platform.specs.connection :refer :all]
            )
  (:import (java.io File)))


(def trip-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :pickupLocation) location-spec
   (ds/opt :pickupTime) inst?
   (ds/opt :dropOffLocation) location-spec
   (ds/opt :dropOffTime) inst?
   (ds/opt :shipments) (s/coll-of shipment-spec)
   (ds/opt :recurrence) recurrence-spec
   (ds/opt :timeZone) string?
   (ds/opt :route) route-spec
   (ds/opt :preference) string?
   (ds/opt :notifications) string?
   (ds/opt :matches) (s/coll-of trip-spec)
   (ds/opt :ownerConnection) connection-spec
   (ds/opt :originalId) int?
   })

(def trip-spec
  (ds/spec
    {:name ::trip
     :spec trip-data}))
