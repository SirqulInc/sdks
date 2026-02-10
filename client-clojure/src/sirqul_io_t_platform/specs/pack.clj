(ns sirqul-io-t-platform.specs.pack
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.game-level :refer :all]
            [sirqul-io-t-platform.specs.game-level :refer :all]
            )
  (:import (java.io File)))


(def pack-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :newOwnerId) int?
   (ds/opt :owner) account-spec
   (ds/opt :application) application-spec
   (ds/opt :sequenceType) string?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :startDate) inst?
   (ds/opt :endDate) inst?
   (ds/opt :packType) string?
   (ds/opt :image) asset-spec
   (ds/opt :background) asset-spec
   (ds/opt :imageURL) string?
   (ds/opt :gameLevels) (s/coll-of game-level-spec)
   (ds/opt :hasMoreItems) boolean?
   (ds/opt :totalCount) int?
   (ds/opt :downloaded) boolean?
   (ds/opt :authorOverride) string?
   (ds/opt :packOrder) int?
   (ds/opt :inGame) boolean?
   (ds/opt :highest) boolean?
   (ds/opt :notificationCount) int?
   (ds/opt :points) int?
   (ds/opt :ticketType) string?
   (ds/opt :ticketCount) int?
   (ds/opt :priceType) string?
   (ds/opt :price) int?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :applicationTitle) string?
   (ds/opt :levelNumberMap) (s/map-of string? game-level-spec)
   })

(def pack-spec
  (ds/spec
    {:name ::pack
     :spec pack-data}))
