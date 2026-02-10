(ns sirqul-io-t-platform.specs.node-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.node :refer :all]
            )
  (:import (java.io File)))


(def node-request-data
  {
   (ds/opt :x) int?
   (ds/opt :y) int?
   (ds/opt :z) int?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :altitude) float?
   (ds/opt :date) int?
   (ds/opt :isWaypoint) boolean?
   (ds/opt :accountId) int?
   (ds/opt :node) node-spec
   })

(def node-request-spec
  (ds/spec
    {:name ::node-request
     :spec node-request-data}))
