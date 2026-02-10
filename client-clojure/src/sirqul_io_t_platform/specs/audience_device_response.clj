(ns sirqul-io-t-platform.specs.audience-device-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def audience-device-response-data
  {
   (ds/opt :deviceId) int?
   (ds/opt :active) boolean?
   (ds/opt :name) string?
   (ds/opt :display) string?
   (ds/opt :minimum) int?
   (ds/opt :maximum) int?
   })

(def audience-device-response-spec
  (ds/spec
    {:name ::audience-device-response
     :spec audience-device-response-data}))
