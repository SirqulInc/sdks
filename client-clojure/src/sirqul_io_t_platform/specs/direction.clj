(ns sirqul-io-t-platform.specs.direction
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def direction-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :distance) string?
   (ds/opt :duration) string?
   (ds/opt :endLatitude) float?
   (ds/opt :endLongitude) float?
   (ds/opt :startLatitude) float?
   (ds/opt :startLongitude) float?
   (ds/opt :instruction) string?
   (ds/opt :polyline) string?
   (ds/opt :progressStatus) string?
   (ds/opt :highlight) boolean?
   })

(def direction-spec
  (ds/spec
    {:name ::direction
     :spec direction-data}))
