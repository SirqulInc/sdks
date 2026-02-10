(ns sirqul-io-t-platform.specs.interval
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.chronology :refer :all]
            )
  (:import (java.io File)))


(def interval-data
  {
   (ds/opt :end) inst?
   (ds/opt :start) inst?
   (ds/opt :chronology) chronology-spec
   (ds/opt :startMillis) int?
   (ds/opt :endMillis) int?
   (ds/opt :beforeNow) boolean?
   (ds/opt :afterNow) boolean?
   })

(def interval-spec
  (ds/spec
    {:name ::interval
     :spec interval-data}))
