(ns sirqul-io-t-platform.specs.album-contest-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.note-full-response :refer :all]
            [sirqul-io-t-platform.specs.like-response :refer :all]
            [sirqul-io-t-platform.specs.connection-group-short-response :refer :all]
            [sirqul-io-t-platform.specs.connection-response :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            [sirqul-io-t-platform.specs.album-full-response :refer :all]
            [sirqul-io-t-platform.specs.album-full-response :refer :all]
            )
  (:import (java.io File)))


(def album-contest-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :albumContestId) int?
   (ds/opt :contestType) string?
   (ds/opt :owner) account-short-response-spec
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :visibility) string?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :commentsCount) int?
   (ds/opt :userCount) int?
   (ds/opt :comments) (s/coll-of note-full-response-spec)
   (ds/opt :likes) (s/coll-of like-response-spec)
   (ds/opt :connectionGroups) (s/coll-of connection-group-short-response-spec)
   (ds/opt :connections) (s/coll-of connection-response-spec)
   (ds/opt :hasLiked) boolean?
   (ds/opt :userPermissions) permissions-spec
   (ds/opt :publicPermissions) permissions-spec
   (ds/opt :album1) album-full-response-spec
   (ds/opt :album2) album-full-response-spec
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :distance) float?
   (ds/opt :dateCreated) int?
   (ds/opt :dateUpdated) int?
   (ds/opt :approvalStatus) string?
   (ds/opt :voteCount) int?
   (ds/opt :returning) string?
   })

(def album-contest-response-spec
  (ds/spec
    {:name ::album-contest-response
     :spec album-contest-response-data}))
