(ns sirqul-io-t-platform.specs.application-mini-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def application-mini-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :applicationId) int?
   (ds/opt :appKey) string?
   (ds/opt :title) string?
   (ds/opt :currentBuildVersion) string?
   (ds/opt :currentApiVersion) string?
   (ds/opt :appIcon) asset-short-response-spec
   (ds/opt :appLogo) asset-short-response-spec
   (ds/opt :active) boolean?
   (ds/opt :returning) string?
   })

(def application-mini-response-spec
  (ds/spec
    {:name ::application-mini-response
     :spec application-mini-response-data}))
