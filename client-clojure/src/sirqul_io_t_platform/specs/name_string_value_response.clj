(ns sirqul-io-t-platform.specs.name-string-value-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def name-string-value-response-data
  {
   (ds/opt :name) string?
   (ds/opt :valueString) string?
   })

(def name-string-value-response-spec
  (ds/spec
    {:name ::name-string-value-response
     :spec name-string-value-response-data}))
