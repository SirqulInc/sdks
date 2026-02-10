(ns sirqul-io-t-platform.specs.ticket-offer-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ticket-offer-response-data
  {
   (ds/opt :id) int?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :imageURL) string?
   (ds/opt :retailer) string?
   })

(def ticket-offer-response-spec
  (ds/spec
    {:name ::ticket-offer-response
     :spec ticket-offer-response-data}))
