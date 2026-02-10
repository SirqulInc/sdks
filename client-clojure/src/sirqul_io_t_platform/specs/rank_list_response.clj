(ns sirqul-io-t-platform.specs.rank-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.rank-response :refer :all]
            [sirqul-io-t-platform.specs.rank-response :refer :all]
            )
  (:import (java.io File)))


(def rank-list-response-data
  {
   (ds/opt :items) (s/coll-of rank-response-spec)
   (ds/opt :userRank) rank-response-spec
   (ds/opt :hasMoreResults) boolean?
   (ds/opt :count) int?
   (ds/opt :rankType) string?
   (ds/opt :app) string?
   (ds/opt :sortField) string?
   (ds/opt :leaderboardMode) string?
   (ds/opt :start) int?
   (ds/opt :limit) int?
   })

(def rank-list-response-spec
  (ds/spec
    {:name ::rank-list-response
     :spec rank-list-response-data}))
