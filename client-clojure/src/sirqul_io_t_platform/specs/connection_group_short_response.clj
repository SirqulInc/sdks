(ns sirqul-io-t-platform.specs.connection-group-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def connection-group-short-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :connectionGroupId) int?
   (ds/opt :name) string?
   (ds/opt :groupType) string?
   (ds/opt :thumbnailURL) string?
   (ds/opt :returning) string?
   })

(def connection-group-short-response-spec
  (ds/spec
    {:name ::connection-group-short-response
     :spec connection-group-short-response-data}))
