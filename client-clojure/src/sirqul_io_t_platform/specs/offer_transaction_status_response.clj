(ns sirqul-io-t-platform.specs.offer-transaction-status-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.application-short-response :refer :all]
            )
  (:import (java.io File)))


(def offer-transaction-status-response-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :code) int?
   (ds/opt :role) string?
   (ds/opt :applications) (s/coll-of application-short-response-spec)
   })

(def offer-transaction-status-response-spec
  (ds/spec
    {:name ::offer-transaction-status-response
     :spec offer-transaction-status-response-data}))
