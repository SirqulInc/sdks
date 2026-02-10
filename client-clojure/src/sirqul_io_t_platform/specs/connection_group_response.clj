(ns sirqul-io-t-platform.specs.connection-group-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.connection-group-response :refer :all]
            [sirqul-io-t-platform.specs.connection-response :refer :all]
            [sirqul-io-t-platform.specs.group-permissions :refer :all]
            )
  (:import (java.io File)))


(def connection-group-response-data
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
   (ds/opt :subGroups) (s/coll-of connection-group-response-spec)
   (ds/opt :description) string?
   (ds/opt :active) boolean?
   (ds/opt :connectionCount) int?
   (ds/opt :connections) (s/coll-of connection-response-spec)
   (ds/opt :groupPermissions) group-permissions-spec
   (ds/opt :ownerId) int?
   (ds/opt :returning) string?
   })

(def connection-group-response-spec
  (ds/spec
    {:name ::connection-group-response
     :spec connection-group-response-data}))
