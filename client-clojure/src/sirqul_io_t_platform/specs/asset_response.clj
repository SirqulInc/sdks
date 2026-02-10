(ns sirqul-io-t-platform.specs.asset-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def asset-response-data
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
   (ds/opt :display) string?
   (ds/opt :locationDescription) string?
   (ds/opt :uploader) account-short-response-spec
   (ds/opt :likesCount) int?
   (ds/opt :commentsCount) int?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :attachedMediaType) string?
   (ds/opt :attachedAssetURL) string?
   (ds/opt :created) int?
   (ds/opt :updated) int?
   (ds/opt :searchTags) string?
   (ds/opt :metaData) string?
   (ds/opt :returning) string?
   })

(def asset-response-spec
  (ds/spec
    {:name ::asset-response
     :spec asset-response-data}))
