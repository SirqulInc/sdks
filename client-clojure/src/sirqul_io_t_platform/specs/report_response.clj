(ns sirqul-io-t-platform.specs.report-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.report-type-response :refer :all]
            )
  (:import (java.io File)))


(def report-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :columns) (s/coll-of report-type-response-spec)
   (ds/opt :rows) (s/coll-of (s/map-of string? any?))
   (ds/opt :summations) (s/map-of string? float?)
   (ds/opt :count) int?
   (ds/opt :queryName) string?
   (ds/opt :hasMore) boolean?
   (ds/opt :returning) string?
   })

(def report-response-spec
  (ds/spec
    {:name ::report-response
     :spec report-response-data}))
