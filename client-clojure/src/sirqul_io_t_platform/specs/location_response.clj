(ns sirqul-io-t-platform.specs.location-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def location-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :id) int?
   (ds/opt :get_distance_miles) string?
   (ds/opt :zip) string?
   (ds/opt :name) string?
   (ds/opt :latitude) string?
   (ds/opt :longitude) string?
   (ds/opt :get_source) string?
   (ds/opt :type) string?
   (ds/opt :returning) string?
   })

(def location-response-spec
  (ds/spec
    {:name ::location-response
     :spec location-response-data}))
