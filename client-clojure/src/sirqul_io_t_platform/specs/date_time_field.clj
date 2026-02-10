(ns sirqul-io-t-platform.specs.date-time-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.date-time-field-type :refer :all]
            [sirqul-io-t-platform.specs.duration-field :refer :all]
            [sirqul-io-t-platform.specs.duration-field :refer :all]
            [sirqul-io-t-platform.specs.duration-field :refer :all]
            )
  (:import (java.io File)))


(def date-time-field-data
  {
   (ds/opt :name) string?
   (ds/opt :type) date-time-field-type-spec
   (ds/opt :supported) boolean?
   (ds/opt :minimumValue) int?
   (ds/opt :maximumValue) int?
   (ds/opt :durationField) duration-field-spec
   (ds/opt :leapDurationField) duration-field-spec
   (ds/opt :rangeDurationField) duration-field-spec
   (ds/opt :lenient) boolean?
   })

(def date-time-field-spec
  (ds/spec
    {:name ::date-time-field
     :spec date-time-field-data}))
