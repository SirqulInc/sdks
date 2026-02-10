(ns sirqul-io-t-platform.specs.chronology
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.date-time-zone :refer :all]
            )
  (:import (java.io File)))


(def chronology-data
  {
   (ds/opt :zone) date-time-zone-spec
   })

(def chronology-spec
  (ds/spec
    {:name ::chronology
     :spec chronology-data}))
