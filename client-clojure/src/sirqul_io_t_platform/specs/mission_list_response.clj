(ns sirqul-io-t-platform.specs.mission-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.mission-response :refer :all]
            )
  (:import (java.io File)))


(def mission-list-response-data
  {
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :items) (s/coll-of mission-response-spec)
   (ds/opt :hasMoreResults) boolean?
   (ds/opt :count) int?
   })

(def mission-list-response-spec
  (ds/spec
    {:name ::mission-list-response
     :spec mission-list-response-data}))
