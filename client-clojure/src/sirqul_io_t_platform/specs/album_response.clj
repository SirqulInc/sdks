(ns sirqul-io-t-platform.specs.album-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            )
  (:import (java.io File)))


(def album-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :albumId) int?
   (ds/opt :albumType) string?
   (ds/opt :ownerId) int?
   (ds/opt :owner) account-short-response-spec
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :coverAsset) asset-response-spec
   (ds/opt :tags) string?
   (ds/opt :visibility) string?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :assetCount) int?
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :commentsCount) int?
   (ds/opt :userCount) int?
   (ds/opt :notifications) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :distance) float?
   (ds/opt :dateCreated) int?
   (ds/opt :dateUpdated) int?
   (ds/opt :cellPhone) string?
   (ds/opt :fullAddress) string?
   (ds/opt :approvalStatus) string?
   (ds/opt :favoriteCount) int?
   (ds/opt :liked) boolean?
   (ds/opt :favorite) boolean?
   (ds/opt :favoriteId) int?
   (ds/opt :anonymous) boolean?
   (ds/opt :flagCount) int?
   (ds/opt :viewedCount) int?
   (ds/opt :clickedCount) int?
   (ds/opt :sharedCount) int?
   (ds/opt :returning) string?
   })

(def album-response-spec
  (ds/spec
    {:name ::album-response
     :spec album-response-data}))
