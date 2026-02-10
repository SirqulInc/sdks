(ns sirqul-io-t-platform.specs.cargo-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.retailer :refer :all]
            [sirqul-io-t-platform.specs.service-hub :refer :all]
            )
  (:import (java.io File)))


(def cargo-type-data
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
   (ds/opt :weight) float?
   (ds/opt :loadTime) int?
   (ds/opt :palletizable) boolean?
   (ds/opt :palletRatio) int?
   (ds/opt :adminOnly) boolean?
   })

(def cargo-type-spec
  (ds/spec
    {:name ::cargo-type
     :spec cargo-type-data}))
