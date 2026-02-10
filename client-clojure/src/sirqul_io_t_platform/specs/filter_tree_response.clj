(ns sirqul-io-t-platform.specs.filter-tree-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.filter-tree-response :refer :all]
            )
  (:import (java.io File)))


(def filter-tree-response-data
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
   (ds/opt :children) (s/coll-of filter-tree-response-spec)
   })

(def filter-tree-response-spec
  (ds/spec
    {:name ::filter-tree-response
     :spec filter-tree-response-data}))
