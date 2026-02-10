(ns sirqul-io-t-platform.specs.game-level-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.game-level-response :refer :all]
            )
  (:import (java.io File)))


(def game-level-list-response-data
  {
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :items) (s/coll-of game-level-response-spec)
   (ds/opt :count) int?
   (ds/opt :hasMoreResults) boolean?
   })

(def game-level-list-response-spec
  (ds/spec
    {:name ::game-level-list-response
     :spec game-level-list-response-data}))
