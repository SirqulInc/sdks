(ns sirqul-io-t-platform.specs.orders
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.shipment-order :refer :all]
            )
  (:import (java.io File)))


(def orders-data
  {
   (ds/opt :Orders) (s/coll-of shipment-order-spec)
   })

(def orders-spec
  (ds/spec
    {:name ::orders
     :spec orders-data}))
