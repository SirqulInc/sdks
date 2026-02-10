(ns sirqul-io-t-platform.specs.direction-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def direction-response-data
  {
   (ds/opt :action) string?
   (ds/opt :bearing) float?
   (ds/opt :bearingDifference) float?
   (ds/opt :heading) string?
   (ds/opt :distance) float?
   (ds/opt :distanceUnits) string?
   (ds/opt :distanceString) string?
   (ds/opt :startLatitude) float?
   (ds/opt :startLongitude) float?
   (ds/opt :endLatitude) float?
   (ds/opt :endLongitude) float?
   (ds/opt :instruction) string?
   (ds/opt :progressStatus) string?
   })

(def direction-response-spec
  (ds/spec
    {:name ::direction-response
     :spec direction-response-data}))
