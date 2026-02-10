(ns sirqul-io-t-platform.specs.node
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def node-data
  {
   (ds/opt :x) int?
   (ds/opt :y) int?
   (ds/opt :z) int?
   })

(def node-spec
  (ds/spec
    {:name ::node
     :spec node-data}))
