(ns sirqul-io-t-platform.specs.notification-recipient-response-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def notification-recipient-response-list-response-data
  {
   (ds/opt :items) (s/coll-of any?)
   (ds/opt :count) int?
   (ds/opt :startIndexAudiences) int?
   (ds/opt :startIndexGroups) int?
   (ds/opt :total) int?
   (ds/opt :countAudiences) int?
   (ds/opt :countGroups) int?
   (ds/opt :hasMoreResults) boolean?
   })

(def notification-recipient-response-list-response-spec
  (ds/spec
    {:name ::notification-recipient-response-list-response
     :spec notification-recipient-response-list-response-data}))
