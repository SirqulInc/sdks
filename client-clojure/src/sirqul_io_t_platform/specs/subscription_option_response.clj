(ns sirqul-io-t-platform.specs.subscription-option-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def subscription-option-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :price) float?
   (ds/opt :quantity) int?
   (ds/opt :threshold) int?
   (ds/opt :visible) boolean?
   (ds/opt :optionType) string?
   })

(def subscription-option-response-spec
  (ds/spec
    {:name ::subscription-option-response
     :spec subscription-option-response-data}))
