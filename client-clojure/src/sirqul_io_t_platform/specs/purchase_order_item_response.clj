(ns sirqul-io-t-platform.specs.purchase-order-item-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def purchase-order-item-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :purchaseOrderItemId) int?
   (ds/opt :created) int?
   (ds/opt :updated) int?
   (ds/opt :customer) account-short-response-spec
   (ds/opt :orderItemType) string?
   (ds/opt :orderItemId) int?
   (ds/opt :orderCustomType) string?
   (ds/opt :orderCustomId) string?
   (ds/opt :retailerLocationId) int?
   (ds/opt :amount) float?
   (ds/opt :tax) float?
   (ds/opt :comment) string?
   (ds/opt :returning) string?
   })

(def purchase-order-item-response-spec
  (ds/spec
    {:name ::purchase-order-item-response
     :spec purchase-order-item-response-data}))
