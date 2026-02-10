(ns sirqul-io-t-platform.specs.payment-transaction-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.offer-transaction-response :refer :all]
            [sirqul-io-t-platform.specs.purchase-order-item-response :refer :all]
            )
  (:import (java.io File)))


(def payment-transaction-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :paymentTransactionId) int?
   (ds/opt :customer) account-short-response-spec
   (ds/opt :promoCode) string?
   (ds/opt :remoteRefId) string?
   (ds/opt :currencyType) string?
   (ds/opt :amount) float?
   (ds/opt :tax) float?
   (ds/opt :offerTransactions) (s/coll-of offer-transaction-response-spec)
   (ds/opt :orderItems) (s/coll-of purchase-order-item-response-spec)
   (ds/opt :externalPaymentId) string?
   (ds/opt :metadata) string?
   (ds/opt :created) int?
   (ds/opt :updated) int?
   (ds/opt :returning) string?
   })

(def payment-transaction-response-spec
  (ds/spec
    {:name ::payment-transaction-response
     :spec payment-transaction-response-data}))
