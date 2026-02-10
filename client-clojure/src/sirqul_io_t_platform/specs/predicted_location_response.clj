(ns sirqul-io-t-platform.specs.predicted-location-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def predicted-location-response-data
  {
   (ds/opt :ownerId) int?
   (ds/opt :onDate) string?
   (ds/opt :onDateMilli) int?
   (ds/opt :hour) int?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :distance) float?
   (ds/opt :matches) int?
   (ds/opt :averageDuration) float?
   (ds/opt :weightedScore) float?
   })

(def predicted-location-response-spec
  (ds/spec
    {:name ::predicted-location-response
     :spec predicted-location-response-data}))
