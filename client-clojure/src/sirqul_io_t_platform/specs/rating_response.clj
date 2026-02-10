(ns sirqul-io-t-platform.specs.rating-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def rating-response-data
  {
   (ds/opt :ratingId) int?
   (ds/opt :ratingValue) int?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :category) category-response-spec
   (ds/opt :owner) account-short-response-spec
   })

(def rating-response-spec
  (ds/spec
    {:name ::rating-response
     :spec rating-response-data}))
