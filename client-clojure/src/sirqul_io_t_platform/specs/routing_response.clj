(ns sirqul-io-t-platform.specs.routing-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.load-response :refer :all]
            [sirqul-io-t-platform.specs.vehicle-response :refer :all]
            [sirqul-io-t-platform.specs.driver-response :refer :all]
            [sirqul-io-t-platform.specs.config-routing-request :refer :all]
            [sirqul-io-t-platform.specs.routing-response :refer :all]
            [sirqul-io-t-platform.specs.itinerary-response :refer :all]
            )
  (:import (java.io File)))


(def routing-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :items) (s/coll-of load-response-spec)
   (ds/opt :vehicles) (s/coll-of vehicle-response-spec)
   (ds/opt :drivers) (s/coll-of driver-response-spec)
   (ds/opt :config) config-routing-request-spec
   (ds/opt :error) string?
   (ds/opt :debug) (s/coll-of string?)
   (ds/opt :startTime) inst?
   (ds/opt :endTime) inst?
   (ds/opt :responses) (s/coll-of routing-response-spec)
   (ds/opt :orignalRequest) string?
   (ds/opt :generated) boolean?
   (ds/opt :itineraries) (s/coll-of itinerary-response-spec)
   (ds/opt :score) int?
   (ds/opt :loadSize) int?
   (ds/opt :runtime) int?
   (ds/opt :earliestPickupWindow) int?
   (ds/opt :latestPickupWindow) int?
   (ds/opt :returning) string?
   })

(def routing-response-spec
  (ds/spec
    {:name ::routing-response
     :spec routing-response-data}))
