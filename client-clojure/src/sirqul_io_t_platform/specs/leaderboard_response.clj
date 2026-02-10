(ns sirqul-io-t-platform.specs.leaderboard-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            [sirqul-io-t-platform.specs.application-mini-response :refer :all]
            )
  (:import (java.io File)))


(def leaderboard-response-data
  {
   (ds/opt :leaderboardId) int?
   (ds/opt :rankType) string?
   (ds/opt :rankMode) string?
   (ds/opt :sortType) string?
   (ds/opt :limitation) int?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :metaData) string?
   (ds/opt :iconAsset) asset-response-spec
   (ds/opt :bannerAsset) asset-response-spec
   (ds/opt :active) boolean?
   (ds/opt :application) application-mini-response-spec
   })

(def leaderboard-response-spec
  (ds/spec
    {:name ::leaderboard-response
     :spec leaderboard-response-data}))
