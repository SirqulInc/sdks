(ns sirqul-io-t-platform.specs.album
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            [sirqul-io-t-platform.specs.user-permissions :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.yay-or-nay :refer :all]
            [sirqul-io-t-platform.specs.flag :refer :all]
            [sirqul-io-t-platform.specs.flag-threshold :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.contact-info :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            )
  (:import (java.io File)))


(def album-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :owner) account-spec
   (ds/opt :title) string?
   (ds/opt :application) application-spec
   (ds/opt :approvalStatus) string?
   (ds/opt :publicPermissions) permissions-spec
   (ds/opt :userPermissions) (s/coll-of user-permissions-spec)
   (ds/opt :visibility) string?
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :likes) (s/coll-of yay-or-nay-spec)
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :flags) (s/coll-of flag-spec)
   (ds/opt :flagCount) int?
   (ds/opt :flagThreshold) flag-threshold-spec
   (ds/opt :description) string?
   (ds/opt :albumType) string?
   (ds/opt :assets) (s/coll-of asset-spec)
   (ds/opt :coverAsset) asset-spec
   (ds/opt :tags) string?
   (ds/opt :startDate) inst?
   (ds/opt :endDate) inst?
   (ds/opt :contactInfo) contact-info-spec
   (ds/opt :assetCount) int?
   (ds/opt :favoriteCount) int?
   (ds/opt :viewedCount) int?
   (ds/opt :clickedCount) int?
   (ds/opt :sharedCount) int?
   (ds/opt :anonymous) boolean?
   (ds/opt :ownerUsername) string?
   (ds/opt :display) string?
   (ds/opt :appKey) string?
   (ds/opt :billableId) int?
   (ds/opt :subType) string?
   (ds/opt :contentAsset) asset-spec
   (ds/opt :secondaryType) string?
   (ds/opt :contentName) string?
   (ds/opt :applicationTitle) string?
   (ds/opt :shortTitle) string?
   (ds/opt :defaultThreshold) int?
   })

(def album-spec
  (ds/spec
    {:name ::album
     :spec album-data}))
