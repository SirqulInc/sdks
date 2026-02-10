(ns sirqul-io-t-platform.specs.category
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            )
  (:import (java.io File)))


(def category-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :shortName) string?
   (ds/opt :description) string?
   (ds/opt :type) string?
   (ds/opt :application) application-spec
   (ds/opt :parent) category-spec
   (ds/opt :children) (s/coll-of category-spec)
   (ds/opt :childrenCount) int?
   (ds/opt :display) string?
   (ds/opt :sqootSlug) string?
   (ds/opt :asset) asset-spec
   (ds/opt :externalId) string?
   (ds/opt :externalType) string?
   (ds/opt :favoriteCount) int?
   (ds/opt :root) category-spec
   (ds/opt :tree) string?
   (ds/opt :parentName) string?
   (ds/opt :parentId) int?
   (ds/opt :applicationId) int?
   (ds/opt :secondaryType) string?
   })

(def category-spec
  (ds/spec
    {:name ::category
     :spec category-data}))
