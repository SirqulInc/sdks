(ns sirqul-io-t-platform.specs.building
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def building-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :buildingType) string?
   })

(def building-spec
  (ds/spec
    {:name ::building
     :spec building-data}))
