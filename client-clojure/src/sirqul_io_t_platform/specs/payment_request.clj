(ns sirqul-io-t-platform.specs.payment-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.invoice :refer :all]
            [sirqul-io-t-platform.specs.biometric-request :refer :all]
            [sirqul-io-t-platform.specs.order-item-request :refer :all]
            )
  (:import (java.io File)))


(def payment-request-data
  {
   (ds/opt :appKey) string?
   (ds/opt :clientPaymentId) string?
   (ds/opt :minAgeYears) int?
   (ds/opt :invoice) invoice-spec
   (ds/opt :biometrics) biometric-request-spec
   (ds/opt :orderItems) (s/coll-of order-item-request-spec)
   (ds/opt :acceptedBilling) boolean?
   })

(def payment-request-spec
  (ds/spec
    {:name ::payment-request
     :spec payment-request-data}))
