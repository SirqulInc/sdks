(ns sirqul-io-t-platform.specs.duration-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.duration-field-type :refer :all]
            )
  (:import (java.io File)))


(def duration-field-data
  {
   (ds/opt :name) string?
   (ds/opt :type) duration-field-type-spec
   (ds/opt :supported) boolean?
   (ds/opt :precise) boolean?
   (ds/opt :unitMillis) int?
   })

(def duration-field-spec
  (ds/spec
    {:name ::duration-field
     :spec duration-field-data}))
