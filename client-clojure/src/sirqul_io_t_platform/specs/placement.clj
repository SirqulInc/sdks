(ns sirqul-io-t-platform.specs.placement
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            )
  (:import (java.io File)))


(def placement-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :application) application-spec
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :size) string?
   (ds/opt :clickType) string?
   (ds/opt :height) int?
   (ds/opt :width) int?
   (ds/opt :refreshInterval) int?
   (ds/opt :defaultImage) asset-spec
   })

(def placement-spec
  (ds/spec
    {:name ::placement
     :spec placement-data}))
