(ns sirqul-io-t-platform.specs.trilat-cache-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.trilat-cache-sample :refer :all]
            )
  (:import (java.io File)))


(def trilat-cache-request-data
  {
   (ds/opt :udid) string?
   (ds/opt :sourceTime) int?
   (ds/opt :minimumSampleSize) int?
   (ds/opt :samples) (s/coll-of trilat-cache-sample-spec)
   })

(def trilat-cache-request-spec
  (ds/spec
    {:name ::trilat-cache-request
     :spec trilat-cache-request-data}))
