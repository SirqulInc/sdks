(ns sirqul-io-t-platform.specs.dimensions
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def dimensions-data
  {
   (ds/opt :width) float?
   (ds/opt :height) float?
   (ds/opt :depth) float?
   (ds/opt :volume) float?
   })

(def dimensions-spec
  (ds/spec
    {:name ::dimensions
     :spec dimensions-data}))
