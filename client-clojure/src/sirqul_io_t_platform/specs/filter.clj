(ns sirqul-io-t-platform.specs.filter
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.filter :refer :all]
            [sirqul-io-t-platform.specs.filter :refer :all]
            )
  (:import (java.io File)))


(def filter-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :application) application-spec
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :parent) filter-spec
   (ds/opt :children) (s/coll-of filter-spec)
   (ds/opt :display) string?
   (ds/opt :externalId) string?
   (ds/opt :externalType) string?
   (ds/opt :tree) string?
   })

(def filter-spec
  (ds/spec
    {:name ::filter
     :spec filter-data}))
