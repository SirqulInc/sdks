(ns sirqul-io-t-platform.specs.routing-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.routing-response :refer :all]
            )
  (:import (java.io File)))


(def routing-list-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :items) (s/coll-of routing-response-spec)
   (ds/opt :count) int?
   (ds/opt :debug) (s/coll-of string?)
   (ds/opt :returning) string?
   })

(def routing-list-response-spec
  (ds/spec
    {:name ::routing-list-response
     :spec routing-list-response-data}))
