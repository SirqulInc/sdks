(ns sirqul-io-t-platform.specs.load-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.stop-response :refer :all]
            [sirqul-io-t-platform.specs.stop-response :refer :all]
            )
  (:import (java.io File)))


(def load-short-response-data
  {
   (ds/opt :id) string?
   (ds/opt :name) string?
   (ds/opt :size) int?
   (ds/opt :loadingTime) int?
   (ds/opt :separatePayloads) boolean?
   (ds/opt :pickup) stop-response-spec
   (ds/opt :dropoff) stop-response-spec
   })

(def load-short-response-spec
  (ds/spec
    {:name ::load-short-response
     :spec load-short-response-data}))
