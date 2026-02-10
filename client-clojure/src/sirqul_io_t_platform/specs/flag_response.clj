(ns sirqul-io-t-platform.specs.flag-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def flag-response-data
  {
   (ds/opt :flagId) int?
   (ds/opt :flagableId) int?
   (ds/opt :flagableType) string?
   (ds/opt :flagDescription) string?
   (ds/opt :createdDate) int?
   (ds/opt :updatedDate) int?
   })

(def flag-response-spec
  (ds/spec
    {:name ::flag-response
     :spec flag-response-data}))
