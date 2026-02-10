(ns sirqul-io-t-platform.specs.promo-code
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def promo-code-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :code) string?
   (ds/opt :name) string?
   (ds/opt :days) int?
   })

(def promo-code-spec
  (ds/spec
    {:name ::promo-code
     :spec promo-code-data}))
