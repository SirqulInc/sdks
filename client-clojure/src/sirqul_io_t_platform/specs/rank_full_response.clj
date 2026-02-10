(ns sirqul-io-t-platform.specs.rank-full-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.rank-list-response :refer :all]
            )
  (:import (java.io File)))


(def rank-full-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :rankings) (s/coll-of rank-list-response-spec)
   (ds/opt :returning) string?
   })

(def rank-full-response-spec
  (ds/spec
    {:name ::rank-full-response
     :spec rank-full-response-data}))
