(ns sirqul-io-t-platform.specs.geo-point-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def geo-point-response-data
  {
   (ds/opt :objectId) string?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :altitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :locatableId) int?
   (ds/opt :locatableObjectId) string?
   (ds/opt :locatableObjectName) string?
   (ds/opt :locatableDisplay) string?
   (ds/opt :asset) asset-short-response-spec
   (ds/opt :distance) float?
   })

(def geo-point-response-spec
  (ds/spec
    {:name ::geo-point-response
     :spec geo-point-response-data}))
