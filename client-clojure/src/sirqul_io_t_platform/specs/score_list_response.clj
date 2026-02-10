(ns sirqul-io-t-platform.specs.score-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.score-response :refer :all]
            )
  (:import (java.io File)))


(def score-list-response-data
  {
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :items) (s/coll-of score-response-spec)
   (ds/opt :count) int?
   (ds/opt :hasMoreResults) boolean?
   })

(def score-list-response-spec
  (ds/spec
    {:name ::score-list-response
     :spec score-list-response-data}))
