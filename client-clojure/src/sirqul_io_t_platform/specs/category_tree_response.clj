(ns sirqul-io-t-platform.specs.category-tree-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.category-tree-response :refer :all]
            )
  (:import (java.io File)))


(def category-tree-response-data
  {
   (ds/opt :categoryId) int?
   (ds/opt :name) string?
   (ds/opt :display) string?
   (ds/opt :subCategoryCount) int?
   (ds/opt :parentId) int?
   (ds/opt :parentName) string?
   (ds/opt :description) string?
   (ds/opt :active) boolean?
   (ds/opt :asset) asset-short-response-spec
   (ds/opt :favoriteId) int?
   (ds/opt :favorite) boolean?
   (ds/opt :applicationId) int?
   (ds/opt :type) string?
   (ds/opt :externalId) string?
   (ds/opt :externalType) string?
   (ds/opt :children) (s/coll-of category-tree-response-spec)
   })

(def category-tree-response-spec
  (ds/spec
    {:name ::category-tree-response
     :spec category-tree-response-data}))
