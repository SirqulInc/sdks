(ns sirqul-io-t-platform.specs.step-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.leg-response :refer :all]
            )
  (:import (java.io File)))


(def step-response-data
  {
   (ds/opt :leg) leg-response-spec
   (ds/opt :distance) float?
   (ds/opt :duration) int?
   (ds/opt :startLat) float?
   (ds/opt :startLng) float?
   (ds/opt :startAlt) float?
   (ds/opt :startDate) int?
   (ds/opt :endLat) float?
   (ds/opt :endLng) float?
   (ds/opt :endAlt) float?
   (ds/opt :endDate) int?
   (ds/opt :accuracy) int?
   })

(def step-response-spec
  (ds/spec
    {:name ::step-response
     :spec step-response-data}))
