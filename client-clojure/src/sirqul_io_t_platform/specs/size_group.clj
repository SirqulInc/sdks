(ns sirqul-io-t-platform.specs.size-group
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def size-group-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :groupingId) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   })

(def size-group-spec
  (ds/spec
    {:name ::size-group
     :spec size-group-data}))
