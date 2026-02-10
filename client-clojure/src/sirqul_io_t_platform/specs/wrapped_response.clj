(ns sirqul-io-t-platform.specs.wrapped-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs. :refer :all]
            [sirqul-io-t-platform.specs.message-list-response :refer :all]
            )
  (:import (java.io File)))


(def wrapped-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :type) string?
   (ds/opt :item) any?
   (ds/opt :messages) message-list-response-spec
   (ds/opt :returning) string?
   })

(def wrapped-response-spec
  (ds/spec
    {:name ::wrapped-response
     :spec wrapped-response-data}))
