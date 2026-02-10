(ns sirqul-io-t-platform.specs.flag
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def flag-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :flagableObjectType) string?
   (ds/opt :flagableObjectId) int?
   (ds/opt :flagDescription) string?
   (ds/opt :app) string?
   })

(def flag-spec
  (ds/spec
    {:name ::flag
     :spec flag-data}))
