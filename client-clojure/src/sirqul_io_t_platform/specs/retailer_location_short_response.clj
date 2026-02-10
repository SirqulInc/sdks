(ns sirqul-io-t-platform.specs.retailer-location-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.contact-info-response :refer :all]
            )
  (:import (java.io File)))


(def retailer-location-short-response-data
  {
   (ds/opt :retailerLocationId) int?
   (ds/opt :name) string?
   (ds/opt :contact) contact-info-response-spec
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :active) boolean?
   (ds/opt :favoriteId) int?
   (ds/opt :favorite) boolean?
   })

(def retailer-location-short-response-spec
  (ds/spec
    {:name ::retailer-location-short-response
     :spec retailer-location-short-response-data}))
