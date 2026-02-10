(ns sirqul-io-t-platform.specs.audience-location
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def audience-location-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :radius) float?
   })

(def audience-location-spec
  (ds/spec
    {:name ::audience-location
     :spec audience-location-data}))
