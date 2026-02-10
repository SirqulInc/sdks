(ns sirqul-io-t-platform.specs.asset-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            )
  (:import (java.io File)))


(def asset-list-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :items) (s/coll-of asset-response-spec)
   (ds/opt :hasMoreResults) boolean?
   (ds/opt :count) int?
   (ds/opt :returning) string?
   })

(def asset-list-response-spec
  (ds/spec
    {:name ::asset-list-response
     :spec asset-list-response-data}))
