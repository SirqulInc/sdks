(ns sirqul-io-t-platform.specs.vehicle-cargo-setting
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.cargo-type :refer :all]
            )
  (:import (java.io File)))


(def vehicle-cargo-setting-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :cargoType) cargo-type-spec
   (ds/opt :maxUnit) int?
   })

(def vehicle-cargo-setting-spec
  (ds/spec
    {:name ::vehicle-cargo-setting
     :spec vehicle-cargo-setting-data}))
