(ns sirqul-io-t-platform.specs.placement-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def placement-response-data
  {
   (ds/opt :placementId) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :size) string?
   (ds/opt :height) int?
   (ds/opt :width) int?
   (ds/opt :refreshInterval) int?
   (ds/opt :appName) string?
   (ds/opt :appKey) string?
   (ds/opt :active) boolean?
   (ds/opt :defaultImage) asset-short-response-spec
   })

(def placement-response-spec
  (ds/spec
    {:name ::placement-response
     :spec placement-response-data}))
