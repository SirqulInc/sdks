(ns sirqul-io-t-platform.specs.list-count-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def list-count-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :locationOffersCount) int?
   (ds/opt :instantOffersCount) int?
   (ds/opt :allOffersCount) int?
   (ds/opt :returning) string?
   })

(def list-count-response-spec
  (ds/spec
    {:name ::list-count-response
     :spec list-count-response-data}))
