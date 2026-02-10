(ns sirqul-io-t-platform.specs.ticket-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.ticket-response :refer :all]
            )
  (:import (java.io File)))


(def ticket-list-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :items) (s/coll-of ticket-response-spec)
   (ds/opt :count) int?
   (ds/opt :hasMoreResults) boolean?
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :returning) string?
   })

(def ticket-list-response-spec
  (ds/spec
    {:name ::ticket-list-response
     :spec ticket-list-response-data}))
