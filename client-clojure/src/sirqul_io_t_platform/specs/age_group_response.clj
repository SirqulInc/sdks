(ns sirqul-io-t-platform.specs.age-group-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def age-group-response-data
  {
   (ds/opt :key) string?
   (ds/opt :toString) string?
   })

(def age-group-response-spec
  (ds/spec
    {:name ::age-group-response
     :spec age-group-response-data}))
