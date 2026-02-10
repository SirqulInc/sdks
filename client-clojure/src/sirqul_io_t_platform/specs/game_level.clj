(ns sirqul-io-t-platform.specs.game-level
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.app-version :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.yay-or-nay :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            [sirqul-io-t-platform.specs.user-permissions :refer :all]
            [sirqul-io-t-platform.specs.flag :refer :all]
            [sirqul-io-t-platform.specs.flag-threshold :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.tutorial :refer :all]
            [sirqul-io-t-platform.specs.game-level :refer :all]
            [sirqul-io-t-platform.specs.offer :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            )
  (:import (java.io File)))


(def game-level-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :newOwnerId) int?
   (ds/opt :gameDifficulty) string?
   (ds/opt :name) string?
   (ds/opt :image) asset-spec
   (ds/opt :icon) asset-spec
   (ds/opt :description) string?
   (ds/opt :startDate) inst?
   (ds/opt :endDate) inst?
   (ds/opt :randomizeGameObjects) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :version) app-version-spec
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :likes) (s/coll-of yay-or-nay-spec)
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :playCount) int?
   (ds/opt :downloadCount) int?
   (ds/opt :gameObjectCount) int?
   (ds/opt :publicPermissions) permissions-spec
   (ds/opt :visibility) string?
   (ds/opt :userPermissions) (s/coll-of user-permissions-spec)
   (ds/opt :flags) (s/coll-of flag-spec)
   (ds/opt :flagCount) int?
   (ds/opt :flagThreshold) flag-threshold-spec
   (ds/opt :application) application-spec
   (ds/opt :assignMission) boolean?
   (ds/opt :authorOverride) string?
   (ds/opt :splashTitle) string?
   (ds/opt :splashMessage) string?
   (ds/opt :winnerMessage) string?
   (ds/opt :tutorial) tutorial-spec
   (ds/opt :approvalStatus) string?
   (ds/opt :nextLevel) game-level-spec
   (ds/opt :offer) offer-spec
   (ds/opt :balance) float?
   (ds/opt :levelNumber) int?
   (ds/opt :points) int?
   (ds/opt :ticketType) string?
   (ds/opt :ticketCount) int?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :applicationTitle) string?
   (ds/opt :ownerUsername) string?
   (ds/opt :likableNotificationModels) (s/coll-of (s/map-of string? any?))
   (ds/opt :notableNotificationModels) (s/coll-of (s/map-of string? any?))
   (ds/opt :published) boolean?
   (ds/opt :contentName) string?
   (ds/opt :defaultThreshold) int?
   (ds/opt :contentAsset) asset-spec
   (ds/opt :contentType) string?
   })

(def game-level-spec
  (ds/spec
    {:name ::game-level
     :spec game-level-data}))
