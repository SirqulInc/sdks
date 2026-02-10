(ns sirqul-io-t-platform.specs.geo-box
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def geo-box-data
  {
   (ds/opt :north) float?
   (ds/opt :east) float?
   (ds/opt :south) float?
   (ds/opt :west) float?
   })

(def geo-box-spec
  (ds/spec
    {:name ::geo-box
     :spec geo-box-data}))
