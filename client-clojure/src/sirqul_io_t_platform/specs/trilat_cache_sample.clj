(ns sirqul-io-t-platform.specs.trilat-cache-sample
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def trilat-cache-sample-data
  {
   (ds/opt :avatarId) string?
   (ds/opt :deviceId) string?
   (ds/opt :rssi) (s/coll-of int?)
   (ds/opt :filteredRssi) float?
   (ds/opt :time) int?
   (ds/opt :networkName) string?
   (ds/opt :randomizedId) boolean?
   (ds/opt :deviceSignature) string?
   (ds/opt :alternateId) string?
   (ds/opt :type) string?
   (ds/opt :probeType) string?
   (ds/opt :avgRssi) float?
   })

(def trilat-cache-sample-spec
  (ds/spec
    {:name ::trilat-cache-sample
     :spec trilat-cache-sample-data}))
