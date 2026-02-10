(ns sirqul-io-t-platform.specs.rule-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.rule-response :refer :all]
            )
  (:import (java.io File)))


(def rule-list-response-data
  {
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :items) (s/coll-of rule-response-spec)
   (ds/opt :count) int?
   (ds/opt :hasMoreResults) boolean?
   })

(def rule-list-response-spec
  (ds/spec
    {:name ::rule-list-response
     :spec rule-list-response-data}))
