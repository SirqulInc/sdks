(ns sirqul-io-t-platform.specs.preferred-location-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def preferred-location-response-data
  {
   (ds/opt :ownerId) int?
   (ds/opt :onDate) string?
   (ds/opt :onDateMilli) int?
   (ds/opt :hour) int?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :distance) float?
   (ds/opt :duration) int?
   (ds/opt :startStepId) int?
   (ds/opt :endStepId) int?
   })

(def preferred-location-response-spec
  (ds/spec
    {:name ::preferred-location-response
     :spec preferred-location-response-data}))
