(ns sirqul-io-t-platform.specs.location-search-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.location-response :refer :all]
            )
  (:import (java.io File)))


(def location-search-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :count) int?
   (ds/opt :locations) (s/coll-of location-response-spec)
   (ds/opt :returning) string?
   })

(def location-search-response-spec
  (ds/spec
    {:name ::location-search-response
     :spec location-search-response-data}))
