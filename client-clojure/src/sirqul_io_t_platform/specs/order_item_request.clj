(ns sirqul-io-t-platform.specs.order-item-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def order-item-request-data
  {
   (ds/opt :orderItemType) string?
   (ds/opt :orderItemId) int?
   (ds/opt :offerName) string?
   (ds/opt :orderCustomType) string?
   (ds/opt :orderCustomId) string?
   (ds/opt :retailerLocationId) int?
   (ds/opt :quantity) int?
   (ds/opt :amount) float?
   (ds/opt :tax) float?
   (ds/opt :reserveStartDate) int?
   (ds/opt :reserveEndDate) int?
   (ds/opt :message) string?
   })

(def order-item-request-spec
  (ds/spec
    {:name ::order-item-request
     :spec order-item-request-data}))
