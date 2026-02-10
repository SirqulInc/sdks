(ns sirqul-io-t-platform.specs.subscription-plan
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.subscription-option :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            )
  (:import (java.io File)))


(def subscription-plan-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :options) (s/coll-of subscription-option-spec)
   (ds/opt :price) float?
   (ds/opt :promo) float?
   (ds/opt :transactionFee) float?
   (ds/opt :role) string?
   (ds/opt :defaultPlan) boolean?
   (ds/opt :visible) boolean?
   (ds/opt :image) asset-spec
   })

(def subscription-plan-spec
  (ds/spec
    {:name ::subscription-plan
     :spec subscription-plan-data}))
