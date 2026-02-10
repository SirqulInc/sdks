(ns sirqul-io-t-platform.specs.disbursement-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.billable-entity-short-response :refer :all]
            [sirqul-io-t-platform.specs.billable-entity-short-response :refer :all]
            )
  (:import (java.io File)))


(def disbursement-response-data
  {
   (ds/opt :disbursementId) int?
   (ds/opt :title) string?
   (ds/opt :comment) string?
   (ds/opt :externalId) string?
   (ds/opt :introspectionParams) string?
   (ds/opt :amount) float?
   (ds/opt :scheduledDate) int?
   (ds/opt :captureDate) int?
   (ds/opt :estimatedDate) int?
   (ds/opt :settledDate) int?
   (ds/opt :status) string?
   (ds/opt :provider) string?
   (ds/opt :senderBillable) billable-entity-short-response-spec
   (ds/opt :receiverBillable) billable-entity-short-response-spec
   (ds/opt :errorCode) string?
   (ds/opt :errorMessage) string?
   })

(def disbursement-response-spec
  (ds/spec
    {:name ::disbursement-response
     :spec disbursement-response-data}))
