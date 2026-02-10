(ns sirqul-io-t-platform.specs.pack-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.pack-response :refer :all]
            )
  (:import (java.io File)))


(def pack-list-response-data
  {
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :items) (s/coll-of pack-response-spec)
   (ds/opt :count) int?
   (ds/opt :hasMoreResults) boolean?
   })

(def pack-list-response-spec
  (ds/spec
    {:name ::pack-list-response
     :spec pack-list-response-data}))
