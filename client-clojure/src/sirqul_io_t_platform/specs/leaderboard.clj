(ns sirqul-io-t-platform.specs.leaderboard
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            [sirqul-io-t-platform.specs.application-mini-response :refer :all]
            )
  (:import (java.io File)))


(def leaderboard-data
  {
   (ds/opt :id) int?
   (ds/opt :rankType) string?
   (ds/opt :rankMode) string?
   (ds/opt :sortType) string?
   (ds/opt :limitation) int?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :iconAsset) asset-response-spec
   (ds/opt :bannerAsset) asset-response-spec
   (ds/opt :application) application-mini-response-spec
   (ds/opt :metaData) string?
   (ds/opt :active) boolean?
   })

(def leaderboard-spec
  (ds/spec
    {:name ::leaderboard
     :spec leaderboard-data}))
