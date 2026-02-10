(ns sirqul-io-t-platform.specs.game
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.pack :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.game-level :refer :all]
            )
  (:import (java.io File)))


(def game-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :application) application-spec
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :startDate) inst?
   (ds/opt :endDate) inst?
   (ds/opt :packs) (s/coll-of pack-spec)
   (ds/opt :sequenceType) string?
   (ds/opt :authorOverride) string?
   (ds/opt :icon) asset-spec
   (ds/opt :image) asset-spec
   (ds/opt :points) int?
   (ds/opt :ticketType) string?
   (ds/opt :ticketCount) int?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :allGameLevels) (s/coll-of game-level-spec)
   (ds/opt :contentName) string?
   (ds/opt :contentType) string?
   })

(def game-spec
  (ds/spec
    {:name ::game
     :spec game-data}))
