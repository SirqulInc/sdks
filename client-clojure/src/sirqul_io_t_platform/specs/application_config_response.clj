(ns sirqul-io-t-platform.specs.application-config-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def application-config-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :configId) int?
   (ds/opt :created) int?
   (ds/opt :updated) int?
   (ds/opt :configVersion) string?
   (ds/opt :configJson) string?
   (ds/opt :configJsonURL) string?
   (ds/opt :assetId) int?
   (ds/opt :returning) string?
   })

(def application-config-response-spec
  (ds/spec
    {:name ::application-config-response
     :spec application-config-response-data}))
