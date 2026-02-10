(ns sirqul-io-t-platform.specs.game-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.game-response :refer :all]
            )
  (:import (java.io File)))


(def game-list-response-data
  {
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :items) (s/coll-of game-response-spec)
   (ds/opt :hasMoreResults) boolean?
   (ds/opt :count) int?
   })

(def game-list-response-spec
  (ds/spec
    {:name ::game-list-response
     :spec game-list-response-data}))
