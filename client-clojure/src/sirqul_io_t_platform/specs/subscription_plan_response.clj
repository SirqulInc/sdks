(ns sirqul-io-t-platform.specs.subscription-plan-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.subscription-option-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def subscription-plan-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :options) (s/coll-of subscription-option-response-spec)
   (ds/opt :price) float?
   (ds/opt :promo) float?
   (ds/opt :transactionFee) float?
   (ds/opt :role) string?
   (ds/opt :defaultPlan) boolean?
   (ds/opt :visible) boolean?
   (ds/opt :image) asset-short-response-spec
   })

(def subscription-plan-response-spec
  (ds/spec
    {:name ::subscription-plan-response
     :spec subscription-plan-response-data}))
