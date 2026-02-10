(ns sirqul-io-t-platform.specs.subscription-option
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def subscription-option-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :price) float?
   (ds/opt :quantity) int?
   (ds/opt :threshold) int?
   (ds/opt :visible) boolean?
   (ds/opt :optionType) string?
   (ds/opt :offerType) string?
   })

(def subscription-option-spec
  (ds/spec
    {:name ::subscription-option
     :spec subscription-option-data}))
