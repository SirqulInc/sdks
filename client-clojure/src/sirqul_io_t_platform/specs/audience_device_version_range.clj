(ns sirqul-io-t-platform.specs.audience-device-version-range
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.audience-device :refer :all]
            )
  (:import (java.io File)))


(def audience-device-version-range-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :device) audience-device-spec
   (ds/opt :minimum) int?
   (ds/opt :maximum) int?
   })

(def audience-device-version-range-spec
  (ds/spec
    {:name ::audience-device-version-range
     :spec audience-device-version-range-data}))
