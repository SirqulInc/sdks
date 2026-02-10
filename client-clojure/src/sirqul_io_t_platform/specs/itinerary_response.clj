(ns sirqul-io-t-platform.specs.itinerary-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.vehicle-response :refer :all]
            [sirqul-io-t-platform.specs.stop-response :refer :all]
            )
  (:import (java.io File)))


(def itinerary-response-data
  {
   (ds/opt :itineraryId) string?
   (ds/opt :waypointCount) int?
   (ds/opt :score) int?
   (ds/opt :errorCode) string?
   (ds/opt :error) string?
   (ds/opt :itemCount) int?
   (ds/opt :vehicle) vehicle-response-spec
   (ds/opt :stops) (s/coll-of stop-response-spec)
   (ds/opt :estimatedStartTime) int?
   (ds/opt :estimatedEndTime) int?
   (ds/opt :estimatedDuration) int?
   (ds/opt :estimatedDistance) float?
   (ds/opt :waitTime) int?
   (ds/opt :generated) boolean?
   (ds/opt :valid) boolean?
   })

(def itinerary-response-spec
  (ds/spec
    {:name ::itinerary-response
     :spec itinerary-response-data}))
