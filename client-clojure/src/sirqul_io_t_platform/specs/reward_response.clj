(ns sirqul-io-t-platform.specs.reward-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def reward-response-data
  {
   (ds/opt :offerId) int?
   (ds/opt :title) string?
   (ds/opt :subTitle) string?
   (ds/opt :details) string?
   (ds/opt :artwork) asset-short-response-spec
   (ds/opt :finePrint) string?
   (ds/opt :redemptionCode) string?
   (ds/opt :redemptionStatus) int?
   (ds/opt :transactionId) int?
   (ds/opt :estimatedValue) float?
   })

(def reward-response-spec
  (ds/spec
    {:name ::reward-response
     :spec reward-response-data}))
