(ns sirqul-io-t-platform.specs.user-location-search-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.user-location-list-response :refer :all]
            )
  (:import (java.io File)))


(def user-location-search-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :hasMoreResults) boolean?
   (ds/opt :count) int?
   (ds/opt :userLocations) (s/coll-of user-location-list-response-spec)
   (ds/opt :returning) string?
   })

(def user-location-search-response-spec
  (ds/spec
    {:name ::user-location-search-response
     :spec user-location-search-response-data}))
