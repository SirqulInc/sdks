(ns sirqul-io-t-platform.specs.category-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def category-response-data
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
   })

(def category-response-spec
  (ds/spec
    {:name ::category-response
     :spec category-response-data}))
