(ns sirqul-io-t-platform.specs.shipment-batch
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.retailer :refer :all]
            [sirqul-io-t-platform.specs.service-hub :refer :all]
            [sirqul-io-t-platform.specs.program :refer :all]
            [sirqul-io-t-platform.specs.shipment-import-status :refer :all]
            [sirqul-io-t-platform.specs.shipment :refer :all]
            )
  (:import (java.io File)))


(def shipment-batch-data
  {
   (ds/opt :id) int?
   (ds/opt :created) inst?
   (ds/opt :updated) inst?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :retailer) retailer-spec
   (ds/opt :hub) service-hub-spec
   (ds/opt :program) program-spec
   (ds/opt :shipmentImportStatuses) (s/coll-of shipment-import-status-spec)
   (ds/opt :shipments) (s/coll-of shipment-spec)
   (ds/opt :uploaded) inst?
   (ds/opt :started) inst?
   (ds/opt :optimizationStarted) inst?
   (ds/opt :completed) inst?
   (ds/opt :optimizationCompleted) inst?
   (ds/opt :source) string?
   (ds/opt :externalId) string?
   (ds/opt :total) int?
   (ds/opt :processedCount) int?
   (ds/opt :successCount) int?
   (ds/opt :failedCount) int?
   (ds/opt :validCount) int?
   (ds/opt :invalidCount) int?
   (ds/opt :averageTravelSpeed) float?
   (ds/opt :maxSeconds) int?
   (ds/opt :importStatus) string?
   (ds/opt :totalRoutes) int?
   (ds/opt :routesCreated) int?
   (ds/opt :totalLegsRequests) int?
   (ds/opt :legsRequested) int?
   (ds/opt :initScore) int?
   (ds/opt :hardScore) int?
   (ds/opt :mediumScore) int?
   (ds/opt :softScore) int?
   })

(def shipment-batch-spec
  (ds/spec
    {:name ::shipment-batch
     :spec shipment-batch-data}))
