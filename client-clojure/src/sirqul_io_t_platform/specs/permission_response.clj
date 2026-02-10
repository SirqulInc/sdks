(ns sirqul-io-t-platform.specs.permission-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def permission-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :read) boolean?
   (ds/opt :write) boolean?
   (ds/opt :delete) boolean?
   (ds/opt :add) boolean?
   (ds/opt :returning) string?
   })

(def permission-response-spec
  (ds/spec
    {:name ::permission-response
     :spec permission-response-data}))
