(ns sirqul-io-t-platform.specs.third-party-network
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.billable-entity :refer :all]
            )
  (:import (java.io File)))


(def third-party-network-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :networkUID) string?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :introspectionMethod) string?
   (ds/opt :introspectionURL) string?
   (ds/opt :introspectionParams) string?
   (ds/opt :requiredRootField) string?
   (ds/opt :billableEntity) billable-entity-spec
   (ds/opt :supportedNetwork) string?
   (ds/opt :enableIntrospection) boolean?
   })

(def third-party-network-spec
  (ds/spec
    {:name ::third-party-network
     :spec third-party-network-data}))
