(ns sirqul-io-t-platform.specs.trilat-app-settings
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def trilat-app-settings-data
  {
   (ds/opt :processingType) string?
   (ds/opt :maxSampleSize) int?
   (ds/opt :minRSSI) float?
   })

(def trilat-app-settings-spec
  (ds/spec
    {:name ::trilat-app-settings
     :spec trilat-app-settings-data}))
