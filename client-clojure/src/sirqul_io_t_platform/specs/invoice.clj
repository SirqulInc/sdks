(ns sirqul-io-t-platform.specs.invoice
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.line-item :refer :all]
            )
  (:import (java.io File)))


(def invoice-data
  {
   (ds/opt :location) string?
   (ds/opt :tax) int?
   (ds/opt :total) int?
   (ds/opt :lineItems) (s/coll-of line-item-spec)
   })

(def invoice-spec
  (ds/spec
    {:name ::invoice
     :spec invoice-data}))
