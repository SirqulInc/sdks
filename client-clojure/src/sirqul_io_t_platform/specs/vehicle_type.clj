(ns sirqul-io-t-platform.specs.vehicle-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.retailer :refer :all]
            [sirqul-io-t-platform.specs.service-hub :refer :all]
            [sirqul-io-t-platform.specs.vehicle-cargo-setting :refer :all]
            )
  (:import (java.io File)))


(def vehicle-type-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :business) retailer-spec
   (ds/opt :hub) service-hub-spec
   (ds/opt :name) string?
   (ds/opt :width) float?
   (ds/opt :height) float?
   (ds/opt :depth) float?
   (ds/opt :volume) float?
   (ds/opt :maxWeight) float?
   (ds/opt :vehicleCargoSettings) (s/coll-of vehicle-cargo-setting-spec)
   })

(def vehicle-type-spec
  (ds/spec
    {:name ::vehicle-type
     :spec vehicle-type-data}))
