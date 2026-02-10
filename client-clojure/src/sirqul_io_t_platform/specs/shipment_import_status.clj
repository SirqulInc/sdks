(ns sirqul-io-t-platform.specs.shipment-import-status
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.shipment :refer :all]
            )
  (:import (java.io File)))


(def shipment-import-status-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :batchId) string?
   (ds/opt :message) string?
   (ds/opt :shipment) shipment-spec
   (ds/opt :started) inst?
   (ds/opt :completed) inst?
   })

(def shipment-import-status-spec
  (ds/spec
    {:name ::shipment-import-status
     :spec shipment-import-status-data}))
