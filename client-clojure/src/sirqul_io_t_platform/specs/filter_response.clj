(ns sirqul-io-t-platform.specs.filter-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def filter-response-data
  {
   (ds/opt :filterId) int?
   (ds/opt :name) string?
   (ds/opt :display) string?
   (ds/opt :subFilterCount) int?
   (ds/opt :parentId) int?
   (ds/opt :description) string?
   (ds/opt :active) boolean?
   (ds/opt :externalId) string?
   (ds/opt :externalType) string?
   })

(def filter-response-spec
  (ds/spec
    {:name ::filter-response
     :spec filter-response-data}))
