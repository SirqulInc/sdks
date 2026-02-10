(ns sirqul-io-t-platform.specs.date-time-zone
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def date-time-zone-data
  {
   (ds/opt :id) string?
   (ds/opt :fixed) boolean?
   })

(def date-time-zone-spec
  (ds/spec
    {:name ::date-time-zone
     :spec date-time-zone-data}))
