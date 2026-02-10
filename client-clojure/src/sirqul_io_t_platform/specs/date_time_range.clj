(ns sirqul-io-t-platform.specs.date-time-range
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.interval :refer :all]
            )
  (:import (java.io File)))


(def date-time-range-data
  {
   (ds/opt :start) inst?
   (ds/opt :end) inst?
   (ds/opt :interval) interval-spec
   })

(def date-time-range-spec
  (ds/spec
    {:name ::date-time-range
     :spec date-time-range-data}))
