(ns sirqul-io-t-platform.specs.mission-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def mission-short-response-data
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
   })

(def mission-short-response-spec
  (ds/spec
    {:name ::mission-short-response
     :spec mission-short-response-data}))
