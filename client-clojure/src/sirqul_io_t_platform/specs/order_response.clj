(ns sirqul-io-t-platform.specs.order-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.application-mini-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.payment-transaction-response :refer :all]
            )
  (:import (java.io File)))


(def order-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :orderId) int?
   (ds/opt :application) application-mini-response-spec
   (ds/opt :customer) account-short-response-spec
   (ds/opt :amount) float?
   (ds/opt :purchases) float?
   (ds/opt :credits) float?
   (ds/opt :payments) (s/coll-of payment-transaction-response-spec)
   (ds/opt :externalOrderId) string?
   (ds/opt :created) int?
   (ds/opt :updated) int?
   (ds/opt :externalDate) int?
   (ds/opt :description) string?
   (ds/opt :returning) string?
   })

(def order-response-spec
  (ds/spec
    {:name ::order-response
     :spec order-response-data}))
