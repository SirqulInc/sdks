(ns sirqul-io-t-platform.specs.asset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.yay-or-nay :refer :all]
            [sirqul-io-t-platform.specs.flag :refer :all]
            [sirqul-io-t-platform.specs.flag-threshold :refer :all]
            [sirqul-io-t-platform.specs.album :refer :all]
            [sirqul-io-t-platform.specs.assignment :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            )
  (:import (java.io File)))


(def asset-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :premigrationId) int?
   (ds/opt :newOwnerId) int?
   (ds/opt :folderUri) string?
   (ds/opt :fileName) string?
   (ds/opt :mediaType) string?
   (ds/opt :mimeType) string?
   (ds/opt :metaData) string?
   (ds/opt :caption) string?
   (ds/opt :versionCode) int?
   (ds/opt :versionName) string?
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :noteCount) int?
   (ds/opt :owner) account-spec
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :likes) (s/coll-of yay-or-nay-spec)
   (ds/opt :attachedAssetId) int?
   (ds/opt :flags) (s/coll-of flag-spec)
   (ds/opt :flagCount) int?
   (ds/opt :flagThreshold) flag-threshold-spec
   (ds/opt :defaultAlbumType) string?
   (ds/opt :album) album-spec
   (ds/opt :assignment) assignment-spec
   (ds/opt :application) application-spec
   (ds/opt :display) string?
   (ds/opt :appKey) string?
   (ds/opt :billableId) int?
   (ds/opt :subType) string?
   (ds/opt :contentName) string?
   (ds/opt :urifolder) string?
   (ds/opt :defaultThreshold) int?
   })

(def asset-spec
  (ds/spec
    {:name ::asset
     :spec asset-data}))
