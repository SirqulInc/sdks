(ns sirqul-io-t-platform.specs.achievement-progress-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def achievement-progress-response-data
  {
   (ds/opt :achievementId) int?
   (ds/opt :achievementTierId) int?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :icon) asset-short-response-spec
   (ds/opt :completed) boolean?
   (ds/opt :progressCount) int?
   (ds/opt :goalCount) int?
   (ds/opt :dateUpdated) int?
   })

(def achievement-progress-response-spec
  (ds/spec
    {:name ::achievement-progress-response
     :spec achievement-progress-response-data}))
