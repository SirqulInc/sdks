(ns sirqul-io-t-platform.specs.payment-types-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def payment-types-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :creditCardOnFile) boolean?
   (ds/opt :creditCardNumber) string?
   (ds/opt :creditCardExpirationMonth) string?
   (ds/opt :creditCardExpirationYear) string?
   (ds/opt :pointsOnFile) boolean?
   (ds/opt :pointsAmount) float?
   (ds/opt :account) account-short-response-spec
   (ds/opt :firstName) string?
   (ds/opt :lastName) string?
   (ds/opt :address) string?
   (ds/opt :city) string?
   (ds/opt :state) string?
   (ds/opt :postalCode) string?
   (ds/opt :phone) string?
   (ds/opt :provider) string?
   (ds/opt :paymentMethodId) int?
   (ds/opt :validated) boolean?
   (ds/opt :accountNumber) string?
   (ds/opt :bankName) string?
   (ds/opt :routingNumber) string?
   (ds/opt :isDefaultPaymentMethod) boolean?
   (ds/opt :accountName) string?
   (ds/opt :paymentMethodNickname) string?
   (ds/opt :taxId) string?
   (ds/opt :returning) string?
   })

(def payment-types-response-spec
  (ds/spec
    {:name ::payment-types-response
     :spec payment-types-response-data}))
