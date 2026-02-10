(ns sirqul-io-t-platform.specs.ticket-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.purchase-item-short-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.application-short-response :refer :all]
            )
  (:import (java.io File)))


(def ticket-response-data
  {
   (ds/opt :action) string?
   (ds/opt :id) int?
   (ds/opt :accountId) int?
   (ds/opt :objectId) int?
   (ds/opt :type) string?
   (ds/opt :actionType) string?
   (ds/opt :used) int?
   (ds/opt :count) int?
   (ds/opt :purchaseItem) purchase-item-short-response-spec
   (ds/opt :customMessage) string?
   (ds/opt :sender) account-short-response-spec
   (ds/opt :receiver) (s/coll-of account-short-response-spec)
   (ds/opt :customAsset) asset-short-response-spec
   (ds/opt :receiptToken) string?
   (ds/opt :ticketType) string?
   (ds/opt :application) application-short-response-spec
   })

(def ticket-response-spec
  (ds/spec
    {:name ::ticket-response
     :spec ticket-response-data}))
