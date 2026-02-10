(ns sirqul-io-t-platform.specs.shipment
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.stop :refer :all]
            [sirqul-io-t-platform.specs.stop :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.route :refer :all]
            [sirqul-io-t-platform.specs.shipment :refer :all]
            [sirqul-io-t-platform.specs.promo-code :refer :all]
            [sirqul-io-t-platform.specs.date-time-range :refer :all]
            [sirqul-io-t-platform.specs.date-time-range :refer :all]
            [sirqul-io-t-platform.specs.cargo-type :refer :all]
            [sirqul-io-t-platform.specs.service-type :refer :all]
            )
  (:import (java.io File)))


(def shipment-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :owner) account-spec
   (ds/opt :rider) account-spec
   (ds/opt :pickupStop) stop-spec
   (ds/opt :dropOffStop) stop-spec
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :batchId) string?
   (ds/opt :reserved) inst?
   (ds/opt :canceled) inst?
   (ds/opt :confirmed) inst?
   (ds/opt :route) route-spec
   (ds/opt :polyline) string?
   (ds/opt :replacePassenger) shipment-spec
   (ds/opt :refunded) boolean?
   (ds/opt :promoCode) promo-code-spec
   (ds/opt :quantity) int?
   (ds/opt :pickupTimeWindow) date-time-range-spec
   (ds/opt :dropOffTimeWindow) date-time-range-spec
   (ds/opt :cargoType) cargo-type-spec
   (ds/opt :serviceType) service-type-spec
   (ds/opt :routeId) int?
   (ds/opt :totalVolume) float?
   (ds/opt :complete) boolean?
   (ds/opt :contentName) string?
   (ds/opt :riderName) string?
   })

(def shipment-spec
  (ds/spec
    {:name ::shipment
     :spec shipment-data}))
