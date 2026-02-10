(ns sirqul-io-t-platform.specs.note-full-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.like-response :refer :all]
            )
  (:import (java.io File)))


(def note-full-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :noteId) int?
   (ds/opt :comment) string?
   (ds/opt :tags) string?
   (ds/opt :likesCount) int?
   (ds/opt :dislikesCount) int?
   (ds/opt :dateCreated) int?
   (ds/opt :createdDate) int?
   (ds/opt :updatedDate) int?
   (ds/opt :owner) account-short-response-spec
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :attachedAssets) (s/coll-of asset-short-response-spec)
   (ds/opt :likes) (s/coll-of like-response-spec)
   (ds/opt :hasLiked) boolean?
   (ds/opt :hasDisliked) boolean?
   (ds/opt :returning) string?
   })

(def note-full-response-spec
  (ds/spec
    {:name ::note-full-response
     :spec note-full-response-data}))
