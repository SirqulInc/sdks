(ns sirqul-io-t-platform.specs.service-hub
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.retailer :refer :all]
            [sirqul-io-t-platform.specs.location :refer :all]
            )
  (:import (java.io File)))


(def service-hub-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :name) string?
   (ds/opt :externalId) string?
   (ds/opt :business) retailer-spec
   (ds/opt :location) location-spec
   (ds/opt :timeZone) string?
   })

(def service-hub-spec
  (ds/spec
    {:name ::service-hub
     :spec service-hub-data}))
