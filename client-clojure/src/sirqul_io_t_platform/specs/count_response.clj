(ns sirqul-io-t-platform.specs.count-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def count-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :count) int?
   (ds/opt :returning) string?
   })

(def count-response-spec
  (ds/spec
    {:name ::count-response
     :spec count-response-data}))
