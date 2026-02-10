(ns sirqul-io-t-platform.specs.reservation-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.offer-short-response :refer :all]
            )
  (:import (java.io File)))


(def reservation-response-data
  {
   (ds/opt :reservationId) int?
   (ds/opt :reservableId) int?
   (ds/opt :reservableType) string?
   (ds/opt :account) account-short-response-spec
   (ds/opt :createdDate) int?
   (ds/opt :updatedDate) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :transaction) offer-short-response-spec
   })

(def reservation-response-spec
  (ds/spec
    {:name ::reservation-response
     :spec reservation-response-data}))
