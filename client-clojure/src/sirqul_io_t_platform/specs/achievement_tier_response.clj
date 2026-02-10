(ns sirqul-io-t-platform.specs.achievement-tier-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def achievement-tier-response-data
  {
   (ds/opt :achievementTierId) int?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :goalCount) int?
   (ds/opt :icon) asset-short-response-spec
   (ds/opt :missionId) int?
   (ds/opt :gameId) int?
   (ds/opt :packId) int?
   (ds/opt :gameLevelId) int?
   (ds/opt :gameObjectId) int?
   })

(def achievement-tier-response-spec
  (ds/spec
    {:name ::achievement-tier-response
     :spec achievement-tier-response-data}))
