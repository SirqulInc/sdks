(ns sirqul-io-t-platform.specs.flag-threshold
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.application :refer :all]
            )
  (:import (java.io File)))


(def flag-threshold-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :threshold) int?
   (ds/opt :flagableObjectType) string?
   (ds/opt :application) application-spec
   })

(def flag-threshold-spec
  (ds/spec
    {:name ::flag-threshold
     :spec flag-threshold-data}))
