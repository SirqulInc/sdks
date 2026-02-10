(ns sirqul-io-t-platform.specs.pack-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.game-level-list-response :refer :all]
            [sirqul-io-t-platform.specs.score-list-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.user-permissions-list-response :refer :all]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.ticket-list-response :refer :all]
            [sirqul-io-t-platform.specs.application-short-response :refer :all]
            )
  (:import (java.io File)))


(def pack-response-data
  {
   (ds/opt :action) string?
   (ds/opt :highestAppVersion) string?
   (ds/opt :gameType) string?
   (ds/opt :packId) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :active) boolean?
   (ds/opt :downloaded) boolean?
   (ds/opt :completed) boolean?
   (ds/opt :icon) asset-short-response-spec
   (ds/opt :background) asset-short-response-spec
   (ds/opt :ticketsEarned) int?
   (ds/opt :levels) game-level-list-response-spec
   (ds/opt :sequenceType) string?
   (ds/opt :scores) score-list-response-spec
   (ds/opt :owner) account-short-response-spec
   (ds/opt :costToRedeem) int?
   (ds/opt :price) int?
   (ds/opt :priceType) string?
   (ds/opt :userPermissionsList) user-permissions-list-response-spec
   (ds/opt :results) (s/coll-of name-string-value-response-spec)
   (ds/opt :tickets) ticket-list-response-spec
   (ds/opt :authorOverride) string?
   (ds/opt :updatedDate) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :packType) string?
   (ds/opt :packOrder) int?
   (ds/opt :appKey) string?
   (ds/opt :application) application-short-response-spec
   (ds/opt :inGame) boolean?
   (ds/opt :highest) boolean?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :ticketType) string?
   (ds/opt :ticketCount) int?
   (ds/opt :points) int?
   })

(def pack-response-spec
  (ds/spec
    {:name ::pack-response
     :spec pack-response-data}))
