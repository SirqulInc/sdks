(ns sirqul-io-t-platform.specs.mission
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.game :refer :all]
            [sirqul-io-t-platform.specs.audience :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.offer :refer :all]
            [sirqul-io-t-platform.specs.mission-task :refer :all]
            [sirqul-io-t-platform.specs.billable-entity :refer :all]
            [sirqul-io-t-platform.specs.pack :refer :all]
            [sirqul-io-t-platform.specs.pack :refer :all]
            [sirqul-io-t-platform.specs.game-level :refer :all]
            [sirqul-io-t-platform.specs.pack :refer :all]
            )
  (:import (java.io File)))


(def mission-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :missionType) string?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :costToPlay) int?
   (ds/opt :costToPlayType) string?
   (ds/opt :games) (s/coll-of game-spec)
   (ds/opt :audiences) (s/coll-of audience-spec)
   (ds/opt :startDate) inst?
   (ds/opt :endDate) inst?
   (ds/opt :sequenceType) string?
   (ds/opt :authorOverride) string?
   (ds/opt :icon) asset-spec
   (ds/opt :image) asset-spec
   (ds/opt :offers) (s/coll-of offer-spec)
   (ds/opt :visibility) string?
   (ds/opt :task) mission-task-spec
   (ds/opt :points) int?
   (ds/opt :ticketType) string?
   (ds/opt :ticketCount) int?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :billableEntity) billable-entity-spec
   (ds/opt :balance) float?
   (ds/opt :startingLimit) int?
   (ds/opt :availableLimit) int?
   (ds/opt :inviteCount) int?
   (ds/opt :acceptedCount) int?
   (ds/opt :inviteStatus) string?
   (ds/opt :childCount) int?
   (ds/opt :secondsBetweenLevels) int?
   (ds/opt :secondsBetweenPacks) int?
   (ds/opt :maximumLevelLength) int?
   (ds/opt :enableBuyBack) boolean?
   (ds/opt :activePack) pack-spec
   (ds/opt :minimumToPlay) int?
   (ds/opt :fixedReward) boolean?
   (ds/opt :refunded) boolean?
   (ds/opt :notificationsCreated) boolean?
   (ds/opt :rewarded) boolean?
   (ds/opt :externalId) int?
   (ds/opt :advancedReporting) boolean?
   (ds/opt :splitReward) string?
   (ds/opt :joinCode) string?
   (ds/opt :firstPack) pack-spec
   (ds/opt :allGameLevels) (s/coll-of game-level-spec)
   (ds/opt :allPacks) (s/coll-of pack-spec)
   })

(def mission-spec
  (ds/spec
    {:name ::mission
     :spec mission-data}))
