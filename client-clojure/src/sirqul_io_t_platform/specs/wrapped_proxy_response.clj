(ns sirqul-io-t-platform.specs.wrapped-proxy-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def wrapped-proxy-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :returning) string?
   (ds/opt :type) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :requestDuration) int?
   (ds/opt :requestEndTime) int?
   })

(def wrapped-proxy-response-spec
  (ds/spec
    {:name ::wrapped-proxy-response
     :spec wrapped-proxy-response-data}))
