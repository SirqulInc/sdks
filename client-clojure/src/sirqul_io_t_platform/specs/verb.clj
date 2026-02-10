(ns sirqul-io-t-platform.specs.verb
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.verb :refer :all]
            )
  (:import (java.io File)))


(def verb-data
  {
   (ds/opt :tag) string?
   (ds/opt :body) string?
   (ds/opt :attributes) (s/map-of string? string?)
   (ds/opt :children) (s/coll-of verb-spec)
   })

(def verb-spec
  (ds/spec
    {:name ::verb
     :spec verb-data}))
