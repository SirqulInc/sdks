(ns sirqul-io-t-platform.specs.retailer-count-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def retailer-count-response-data
  {
   (ds/opt :locations) int?
   (ds/opt :transactions) int?
   (ds/opt :offers) int?
   })

(def retailer-count-response-spec
  (ds/spec
    {:name ::retailer-count-response
     :spec retailer-count-response-data}))
