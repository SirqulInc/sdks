(ns sirqul-io-t-platform.specs.line-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def line-item-data
  {
   (ds/opt :description) string?
   (ds/opt :item) string?
   (ds/opt :pricePerItem) int?
   (ds/opt :total) int?
   (ds/opt :tax) int?
   (ds/opt :quantity) int?
   })

(def line-item-spec
  (ds/spec
    {:name ::line-item
     :spec line-item-data}))
