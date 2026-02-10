(ns sirqul-io-t-platform.specs.game-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.pack-list-response :refer :all]
            [sirqul-io-t-platform.specs.score-list-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.user-permissions-list-response :refer :all]
            [sirqul-io-t-platform.specs.rule-list-response :refer :all]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def game-response-data
  {
   (ds/opt :action) string?
   (ds/opt :highestAppVersion) string?
   (ds/opt :gameId) int?
   (ds/opt :gameType) string?
   (ds/opt :packs) pack-list-response-spec
   (ds/opt :scores) score-list-response-spec
   (ds/opt :owner) account-short-response-spec
   (ds/opt :userPermissionsList) user-permissions-list-response-spec
   (ds/opt :rules) rule-list-response-spec
   (ds/opt :results) (s/coll-of name-string-value-response-spec)
   (ds/opt :ticketsEarned) int?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :authorOverride) string?
   (ds/opt :icon) asset-short-response-spec
   (ds/opt :image) asset-short-response-spec
   (ds/opt :sequenceType) string?
   (ds/opt :updatedDate) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :appKey) string?
   })

(def game-response-spec
  (ds/spec
    {:name ::game-response
     :spec game-response-data}))
