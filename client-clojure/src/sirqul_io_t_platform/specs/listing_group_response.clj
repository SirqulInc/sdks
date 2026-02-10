(ns sirqul-io-t-platform.specs.listing-group-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.listing-response :refer :all]
            )
  (:import (java.io File)))


(def listing-group-response-data
  {
   (ds/opt :category) category-response-spec
   (ds/opt :listings) (s/coll-of listing-response-spec)
   })

(def listing-group-response-spec
  (ds/spec
    {:name ::listing-group-response
     :spec listing-group-response-data}))
