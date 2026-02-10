(ns sirqul-io-t-platform.specs.tournament-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.reward-response :refer :all]
            [sirqul-io-t-platform.specs.game-list-response :refer :all]
            [sirqul-io-t-platform.specs.score-list-response :refer :all]
            [sirqul-io-t-platform.specs.user-permissions-list-response :refer :all]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.audience-response :refer :all]
            [sirqul-io-t-platform.specs.mission-invite-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.creative-response :refer :all]
            )
  (:import (java.io File)))


(def tournament-response-data
  {
   (ds/opt :action) string?
   (ds/opt :highestAppVersion) string?
   (ds/opt :missionId) int?
   (ds/opt :ticketsEarned) int?
   (ds/opt :costToPlay) int?
   (ds/opt :costToPlayType) string?
   (ds/opt :owner) account-short-response-spec
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :authorOverride) string?
   (ds/opt :icon) asset-short-response-spec
   (ds/opt :image) asset-short-response-spec
   (ds/opt :sequenceType) string?
   (ds/opt :updatedDate) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :missionType) string?
   (ds/opt :active) boolean?
   (ds/opt :balance) float?
   (ds/opt :availableLimit) int?
   (ds/opt :inviteCount) int?
   (ds/opt :acceptedCount) int?
   (ds/opt :childCount) int?
   (ds/opt :enableBuyBack) boolean?
   (ds/opt :minimumToPlay) int?
   (ds/opt :rewarded) boolean?
   (ds/opt :refunded) boolean?
   (ds/opt :joinCode) string?
   (ds/opt :rewards) (s/coll-of reward-response-spec)
   (ds/opt :games) game-list-response-spec
   (ds/opt :scores) score-list-response-spec
   (ds/opt :userPermissionsList) user-permissions-list-response-spec
   (ds/opt :results) (s/coll-of name-string-value-response-spec)
   (ds/opt :inviteStatus) string?
   (ds/opt :audiences) (s/coll-of audience-response-spec)
   (ds/opt :missionInviteId) int?
   (ds/opt :missionInvite) mission-invite-response-spec
   (ds/opt :invitee) account-short-response-spec
   (ds/opt :formatType) string?
   (ds/opt :creatives) (s/coll-of creative-response-spec)
   (ds/opt :fixedReward) boolean?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :ticketType) string?
   (ds/opt :ticketCount) int?
   (ds/opt :points) int?
   (ds/opt :splitReward) string?
   (ds/opt :secondsBetweenLevels) int?
   (ds/opt :secondsBetweenPacks) int?
   (ds/opt :advancedReporting) boolean?
   (ds/opt :tournamentData) string?
   })

(def tournament-response-spec
  (ds/spec
    {:name ::tournament-response
     :spec tournament-response-data}))
