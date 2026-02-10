(ns sirqul-io-t-platform.specs.product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.size-group :refer :all]
            )
  (:import (java.io File)))


(def product-data
  {
   (ds/opt :brand) string?
   (ds/opt :productType) string?
   (ds/opt :condition) string?
   (ds/opt :isbn) string?
   (ds/opt :asin) string?
   (ds/opt :catalogNumbers) (s/coll-of string?)
   (ds/opt :department) string?
   (ds/opt :features) (s/coll-of string?)
   (ds/opt :minimumPrice) float?
   (ds/opt :width) float?
   (ds/opt :height) float?
   (ds/opt :depth) float?
   (ds/opt :weight) float?
   (ds/opt :unit) string?
   (ds/opt :studio) string?
   (ds/opt :parentalRating) string?
   (ds/opt :publishDate) int?
   (ds/opt :availabilityDate) int?
   (ds/opt :size) size-group-spec
   })

(def product-spec
  (ds/spec
    {:name ::product
     :spec product-data}))
