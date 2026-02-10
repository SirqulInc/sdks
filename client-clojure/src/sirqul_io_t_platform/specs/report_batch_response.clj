(ns sirqul-io-t-platform.specs.report-batch-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def report-batch-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :batchId) int?
   (ds/opt :reportBatchStatus) string?
   (ds/opt :errorMessage) string?
   (ds/opt :endpoint) string?
   (ds/opt :pageUrl) string?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :created) int?
   (ds/opt :updated) int?
   (ds/opt :returning) string?
   })

(def report-batch-response-spec
  (ds/spec
    {:name ::report-batch-response
     :spec report-batch-response-data}))
