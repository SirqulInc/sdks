(ns sirqul-io-t-platform.specs.user-location-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.user-location-response :refer :all]
            )
  (:import (java.io File)))


(def user-location-list-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :items) (s/coll-of user-location-response-spec)
   (ds/opt :userLocationType) string?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :postalCode) string?
   (ds/opt :count) int?
   (ds/opt :returning) string?
   })

(def user-location-list-response-spec
  (ds/spec
    {:name ::user-location-list-response
     :spec user-location-list-response-data}))
