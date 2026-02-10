(ns sirqul-io-t-platform.specs.purchase-item-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.purchase-item-response :refer :all]
            )
  (:import (java.io File)))


(def purchase-item-list-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :items) (s/coll-of purchase-item-response-spec)
   (ds/opt :count) int?
   (ds/opt :hasMoreResults) boolean?
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :returning) string?
   })

(def purchase-item-list-response-spec
  (ds/spec
    {:name ::purchase-item-list-response
     :spec purchase-item-list-response-data}))
