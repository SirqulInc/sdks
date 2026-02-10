(ns sirqul-io-t-platform.specs.game-level-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.note-response :refer :all]
            [sirqul-io-t-platform.specs.game-object-list-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.score-list-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.user-permissions-list-response :refer :all]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.ticket-list-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.tutorial-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.offer-short-response :refer :all]
            )
  (:import (java.io File)))


(def game-level-response-data
  {
   (ds/opt :action) string?
   (ds/opt :gameLevelId) int?
   (ds/opt :gameType) string?
   (ds/opt :active) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :difficulty) string?
   (ds/opt :appVersion) string?
   (ds/opt :likesCount) int?
   (ds/opt :dislikesCount) int?
   (ds/opt :commentsCount) int?
   (ds/opt :downloadCount) int?
   (ds/opt :comments) (s/coll-of note-response-spec)
   (ds/opt :locked) boolean?
   (ds/opt :completed) boolean?
   (ds/opt :ticketsEarned) int?
   (ds/opt :gameObjects) game-object-list-response-spec
   (ds/opt :hasLiked) boolean?
   (ds/opt :image) asset-short-response-spec
   (ds/opt :gameData) string?
   (ds/opt :gameDataSuffix) string?
   (ds/opt :scores) score-list-response-spec
   (ds/opt :owner) account-short-response-spec
   (ds/opt :userPermissionsList) user-permissions-list-response-spec
   (ds/opt :results) (s/coll-of name-string-value-response-spec)
   (ds/opt :randomizeGameObjects) boolean?
   (ds/opt :tickets) ticket-list-response-spec
   (ds/opt :assignMission) boolean?
   (ds/opt :icon) asset-short-response-spec
   (ds/opt :authorOverride) string?
   (ds/opt :updatedDate) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :splashTitle) string?
   (ds/opt :splashMessage) string?
   (ds/opt :hasFlagged) boolean?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :ticketType) string?
   (ds/opt :ticketCount) int?
   (ds/opt :points) int?
   (ds/opt :winnerMessage) string?
   (ds/opt :tutorial) tutorial-response-spec
   (ds/opt :appKey) string?
   (ds/opt :appName) string?
   (ds/opt :scoringType) string?
   (ds/opt :tutorialTitle) string?
   (ds/opt :tutorialMessage) string?
   (ds/opt :tutorialAlignment) string?
   (ds/opt :tutorialImage) asset-short-response-spec
   (ds/opt :nextLevelId) int?
   (ds/opt :offer) offer-short-response-spec
   })

(def game-level-response-spec
  (ds/spec
    {:name ::game-level-response
     :spec game-level-response-data}))
