(ns sirqul-io-t-platform.specs.program
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def program-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :costPerRide) int?
   })

(def program-spec
  (ds/spec
    {:name ::program
     :spec program-data}))
