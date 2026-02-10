(ns sirqul-io-t-platform.specs.audience-device
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def audience-device-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :minimum) int?
   (ds/opt :maximum) int?
   })

(def audience-device-spec
  (ds/spec
    {:name ::audience-device
     :spec audience-device-data}))
