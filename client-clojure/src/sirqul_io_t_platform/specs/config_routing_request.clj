(ns sirqul-io-t-platform.specs.config-routing-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def config-routing-request-data
  {
   (ds/opt :debugMode) boolean?
   (ds/opt :threaded) boolean?
   (ds/opt :threadType) string?
   (ds/opt :maxRuntime) int?
   (ds/opt :numberOfMatches) int?
   (ds/opt :maxItineraryTime) int?
   (ds/opt :maxStopsPerVehicle) int?
   (ds/opt :averageCityTimePerMile) int?
   (ds/opt :averageFreewayTimePerMile) int?
   (ds/opt :freewayTravelDistance) float?
   (ds/opt :sameStopBuffer) float?
   (ds/opt :orderAlgorithm) string?
   (ds/opt :scoreAlgorithm) string?
   })

(def config-routing-request-spec
  (ds/spec
    {:name ::config-routing-request
     :spec config-routing-request-data}))
