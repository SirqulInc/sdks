(ns sirqul-io-t-platform.specs.game-object-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.game-object-response :refer :all]
            )
  (:import (java.io File)))


(def game-object-list-response-data
  {
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :items) (s/coll-of game-object-response-spec)
   (ds/opt :count) int?
   (ds/opt :hasMoreResults) boolean?
   })

(def game-object-list-response-spec
  (ds/spec
    {:name ::game-object-list-response
     :spec game-object-list-response-data}))
