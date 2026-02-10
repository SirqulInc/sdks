(ns sirqul-io-t-platform.specs.message-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.message-response :refer :all]
            )
  (:import (java.io File)))


(def message-list-response-data
  {
   (ds/opt :start) int?
   (ds/opt :limit) int?
   (ds/opt :countTotal) int?
   (ds/opt :items) (s/coll-of message-response-spec)
   (ds/opt :count) int?
   (ds/opt :hasMoreResults) boolean?
   })

(def message-list-response-spec
  (ds/spec
    {:name ::message-list-response
     :spec message-list-response-data}))
