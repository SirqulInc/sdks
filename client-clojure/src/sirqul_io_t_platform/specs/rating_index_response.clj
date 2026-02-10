(ns sirqul-io-t-platform.specs.rating-index-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs. :refer :all]
            )
  (:import (java.io File)))


(def rating-index-response-data
  {
   (ds/opt :ratingIndexId) int?
   (ds/opt :ratingCount) int?
   (ds/opt :ratingAverage) float?
   (ds/opt :value) float?
   (ds/opt :display) string?
   (ds/opt :ratableType) string?
   (ds/opt :ratableId) int?
   (ds/opt :category) category-response-spec
   (ds/opt :ratable) any?
   (ds/opt :secondaryType) string?
   })

(def rating-index-response-spec
  (ds/spec
    {:name ::rating-index-response
     :spec rating-index-response-data}))
