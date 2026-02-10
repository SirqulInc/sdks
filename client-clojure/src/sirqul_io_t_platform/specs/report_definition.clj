(ns sirqul-io-t-platform.specs.report-definition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def report-definition-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :query) string?
   (ds/opt :queryName) string?
   (ds/opt :displayName) string?
   (ds/opt :columnNames) (s/coll-of string?)
   (ds/opt :nativeSql) boolean?
   (ds/opt :display) boolean?
   (ds/opt :dataSource) string?
   (ds/opt :maxLimit) int?
   (ds/opt :maxDateRange) int?
   (ds/opt :displayParams) string?
   (ds/opt :metaData) string?
   (ds/opt :columnNamesRaw) string?
   })

(def report-definition-spec
  (ds/spec
    {:name ::report-definition
     :spec report-definition-data}))
