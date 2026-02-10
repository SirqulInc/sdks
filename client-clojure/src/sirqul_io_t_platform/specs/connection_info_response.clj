(ns sirqul-io-t-platform.specs.connection-info-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.connection-group-response :refer :all]
            )
  (:import (java.io File)))


(def connection-info-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :groups) (s/coll-of connection-group-response-spec)
   (ds/opt :followerCount) int?
   (ds/opt :followingCount) int?
   (ds/opt :friendCount) int?
   (ds/opt :privateGroupCount) int?
   (ds/opt :returning) string?
   })

(def connection-info-response-spec
  (ds/spec
    {:name ::connection-info-response
     :spec connection-info-response-data}))
