(ns sirqul-io-t-platform.specs.date-time-field-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.duration-field-type :refer :all]
            [sirqul-io-t-platform.specs.duration-field-type :refer :all]
            )
  (:import (java.io File)))


(def date-time-field-type-data
  {
   (ds/opt :name) string?
   (ds/opt :rangeDurationType) duration-field-type-spec
   (ds/opt :durationType) duration-field-type-spec
   })

(def date-time-field-type-spec
  (ds/spec
    {:name ::date-time-field-type
     :spec date-time-field-type-data}))
