(ns sirqul-io-t-platform.specs.asset-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def asset-short-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :assetId) int?
   (ds/opt :fileName) string?
   (ds/opt :caption) string?
   (ds/opt :mediaType) string?
   (ds/opt :thumbnailURL) string?
   (ds/opt :coverURL) string?
   (ds/opt :fullURL) string?
   (ds/opt :assetVersion) string?
   (ds/opt :versionName) string?
   (ds/opt :versionCode) int?
   (ds/opt :returning) string?
   })

(def asset-short-response-spec
  (ds/spec
    {:name ::asset-short-response
     :spec asset-short-response-data}))
