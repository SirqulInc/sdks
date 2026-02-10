(ns sirqul-io-t-platform.specs.csv-import-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def csv-import-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :batchId) int?
   (ds/opt :csvImportBatchStatus) string?
   (ds/opt :errorMessage) string?
   (ds/opt :objectType) string?
   (ds/opt :returning) string?
   })

(def csv-import-response-spec
  (ds/spec
    {:name ::csv-import-response
     :spec csv-import-response-data}))
