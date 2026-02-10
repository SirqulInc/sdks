(ns sirqul-io-t-platform.specs.local-time
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.chronology :refer :all]
            [sirqul-io-t-platform.specs.date-time-field :refer :all]
            [sirqul-io-t-platform.specs.date-time-field-type :refer :all]
            )
  (:import (java.io File)))


(def local-time-data
  {
   (ds/opt :chronology) chronology-spec
   (ds/opt :hourOfDay) int?
   (ds/opt :minuteOfHour) int?
   (ds/opt :secondOfMinute) int?
   (ds/opt :millisOfSecond) int?
   (ds/opt :millisOfDay) int?
   (ds/opt :fields) (s/coll-of date-time-field-spec)
   (ds/opt :values) (s/coll-of int?)
   (ds/opt :fieldTypes) (s/coll-of date-time-field-type-spec)
   })

(def local-time-spec
  (ds/spec
    {:name ::local-time
     :spec local-time-data}))
