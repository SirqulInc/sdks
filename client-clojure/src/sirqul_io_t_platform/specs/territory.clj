(ns sirqul-io-t-platform.specs.territory
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def territory-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   })

(def territory-spec
  (ds/spec
    {:name ::territory
     :spec territory-data}))
