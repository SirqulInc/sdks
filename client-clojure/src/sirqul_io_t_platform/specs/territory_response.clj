(ns sirqul-io-t-platform.specs.territory-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def territory-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   })

(def territory-response-spec
  (ds/spec
    {:name ::territory-response
     :spec territory-response-data}))
