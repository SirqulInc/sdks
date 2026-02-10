(ns sirqul-io-t-platform.specs.user-permissions-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.permission-response :refer :all]
            [sirqul-io-t-platform.specs.connection-response :refer :all]
            [sirqul-io-t-platform.specs.connection-group-response :refer :all]
            )
  (:import (java.io File)))


(def user-permissions-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :permissions) permission-response-spec
   (ds/opt :connection) connection-response-spec
   (ds/opt :connectionGroup) connection-group-response-spec
   (ds/opt :exclude) boolean?
   (ds/opt :blocked) boolean?
   (ds/opt :friendGroup) boolean?
   (ds/opt :permissionableId) int?
   (ds/opt :permissionableType) string?
   (ds/opt :returning) string?
   })

(def user-permissions-response-spec
  (ds/spec
    {:name ::user-permissions-response
     :spec user-permissions-response-data}))
