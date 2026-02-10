(ns sirqul-io-t-platform.specs.entity-reference
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def entity-reference-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :entityType) string?
   (ds/opt :masterEntityId) int?
   (ds/opt :slaveUID) string?
   (ds/opt :slaveEntityId) int?
   })

(def entity-reference-spec
  (ds/spec
    {:name ::entity-reference
     :spec entity-reference-data}))
