(ns sirqul-io-t-platform.specs.postal-code-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def postal-code-response-data
  {
   (ds/opt :city) string?
   (ds/opt :stateCode) string?
   (ds/opt :code) string?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :timezone) string?
   (ds/opt :utcOffset) int?
   })

(def postal-code-response-spec
  (ds/spec
    {:name ::postal-code-response
     :spec postal-code-response-data}))
