(ns sirqul-io-t-platform.specs.route
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.service-hub :refer :all]
            [sirqul-io-t-platform.specs.program :refer :all]
            [sirqul-io-t-platform.specs.region :refer :all]
            [sirqul-io-t-platform.specs.vehicle :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.stop :refer :all]
            [sirqul-io-t-platform.specs.stop :refer :all]
            [sirqul-io-t-platform.specs.stop :refer :all]
            [sirqul-io-t-platform.specs.shipment :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.route :refer :all]
            )
  (:import (java.io File)))


(def route-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :externalId) string?
   (ds/opt :hub) service-hub-spec
   (ds/opt :program) program-spec
   (ds/opt :zone) region-spec
   (ds/opt :vehicle) vehicle-spec
   (ds/opt :driver) account-spec
   (ds/opt :concierge) account-spec
   (ds/opt :scheduled) inst?
   (ds/opt :approved) inst?
   (ds/opt :started) inst?
   (ds/opt :completed) inst?
   (ds/opt :totalDistance) float?
   (ds/opt :totalTime) int?
   (ds/opt :estimatedDistance) float?
   (ds/opt :estimatedTime) int?
   (ds/opt :startStop) stop-spec
   (ds/opt :endStop) stop-spec
   (ds/opt :stops) (s/coll-of stop-spec)
   (ds/opt :shipments) (s/coll-of shipment-spec)
   (ds/opt :allShipmentsConfirmed) boolean?
   (ds/opt :shipmentOrderCount) int?
   (ds/opt :polyline) string?
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :glympseToken) string?
   (ds/opt :enableOptimization) boolean?
   (ds/opt :optimizedDate) inst?
   (ds/opt :optimizationStarted) inst?
   (ds/opt :optimizationCompleted) inst?
   (ds/opt :featured) boolean?
   (ds/opt :image) asset-spec
   (ds/opt :parent) route-spec
   (ds/opt :contentName) string?
   })

(def route-spec
  (ds/spec
    {:name ::route
     :spec route-data}))
