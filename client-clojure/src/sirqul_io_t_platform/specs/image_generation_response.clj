(ns sirqul-io-t-platform.specs.image-generation-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.url-response :refer :all]
            )
  (:import (java.io File)))


(def image-generation-response-data
  {
   (ds/opt :created) int?
   (ds/opt :data) (s/coll-of url-response-spec)
   })

(def image-generation-response-spec
  (ds/spec
    {:name ::image-generation-response
     :spec image-generation-response-data}))
