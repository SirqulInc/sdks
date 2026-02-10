(ns sirqul-io-t-platform.specs.subscription-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.subscription-plan-response :refer :all]
            )
  (:import (java.io File)))


(def subscription-response-data
  {
   (ds/opt :id) int?
   (ds/opt :subscriptionPlan) subscription-plan-response-spec
   (ds/opt :promoCode) string?
   (ds/opt :active) boolean?
   })

(def subscription-response-spec
  (ds/spec
    {:name ::subscription-response
     :spec subscription-response-data}))
