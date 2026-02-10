(ns sirqul-io-t-platform.specs.size-group-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def size-group-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   })

(def size-group-response-spec
  (ds/spec
    {:name ::size-group-response
     :spec size-group-response-data}))
