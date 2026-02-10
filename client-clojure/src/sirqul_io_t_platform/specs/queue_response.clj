(ns sirqul-io-t-platform.specs.queue-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def queue-response-data
  {
   (ds/opt :queueId) int?
   (ds/opt :name) string?
   (ds/opt :host) string?
   (ds/opt :port) int?
   (ds/opt :username) string?
   (ds/opt :password) string?
   (ds/opt :virtualHost) string?
   (ds/opt :workers) int?
   (ds/opt :exchanger) string?
   (ds/opt :exchangerType) string?
   (ds/opt :handleDelivery) boolean?
   (ds/opt :dataMapping) string?
   (ds/opt :analyticTags) string?
   })

(def queue-response-spec
  (ds/spec
    {:name ::queue-response
     :spec queue-response-data}))
