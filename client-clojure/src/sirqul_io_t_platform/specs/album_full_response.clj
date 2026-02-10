(ns sirqul-io-t-platform.specs.album-full-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            [sirqul-io-t-platform.specs.note-full-response :refer :all]
            [sirqul-io-t-platform.specs.like-response :refer :all]
            [sirqul-io-t-platform.specs.connection-group-short-response :refer :all]
            [sirqul-io-t-platform.specs.connection-response :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            )
  (:import (java.io File)))


(def album-full-response-data
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
   (ds/opt :assets) (s/coll-of asset-response-spec)
   (ds/opt :comments) (s/coll-of note-full-response-spec)
   (ds/opt :likes) (s/coll-of like-response-spec)
   (ds/opt :connectionGroups) (s/coll-of connection-group-short-response-spec)
   (ds/opt :connections) (s/coll-of connection-response-spec)
   (ds/opt :hasLiked) boolean?
   (ds/opt :hasDisliked) boolean?
   (ds/opt :userPermissions) permissions-spec
   (ds/opt :publicPermissions) permissions-spec
   (ds/opt :returning) string?
   })

(def album-full-response-spec
  (ds/spec
    {:name ::album-full-response
     :spec album-full-response-data}))
