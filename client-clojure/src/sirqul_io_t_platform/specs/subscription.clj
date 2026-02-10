(ns sirqul-io-t-platform.specs.subscription
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.subscription-plan :refer :all]
            )
  (:import (java.io File)))


(def subscription-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :subscriptionPlan) subscription-plan-spec
   (ds/opt :remoteSubscriptionId) string?
   (ds/opt :promoCode) string?
   (ds/opt :failed) boolean?
   (ds/opt :message) string?
   })

(def subscription-spec
  (ds/spec
    {:name ::subscription
     :spec subscription-data}))
