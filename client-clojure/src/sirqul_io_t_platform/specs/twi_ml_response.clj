(ns sirqul-io-t-platform.specs.twi-ml-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.verb :refer :all]
            )
  (:import (java.io File)))


(def twi-ml-response-data
  {
   (ds/opt :tag) string?
   (ds/opt :body) string?
   (ds/opt :attributes) (s/map-of string? string?)
   (ds/opt :children) (s/coll-of verb-spec)
   })

(def twi-ml-response-spec
  (ds/spec
    {:name ::twi-ml-response
     :spec twi-ml-response-data}))
