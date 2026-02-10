(ns sirqul-io-t-platform.specs.route-settings
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.program :refer :all]
            [sirqul-io-t-platform.specs.service-hub :refer :all]
            )
  (:import (java.io File)))


(def route-settings-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :setting) string?
   (ds/opt :settingType) string?
   (ds/opt :program) program-spec
   (ds/opt :hub) service-hub-spec
   })

(def route-settings-spec
  (ds/spec
    {:name ::route-settings
     :spec route-settings-data}))
