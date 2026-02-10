(ns sirqul-io-t-platform.specs.third-party-network-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def third-party-network-response-data
  {
   (ds/opt :updated) int?
   (ds/opt :created) int?
   (ds/opt :active) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :networkUID) string?
   (ds/opt :network) string?
   (ds/opt :introspectionMethod) string?
   (ds/opt :enableIntrospection) boolean?
   (ds/opt :introspectionURL) string?
   (ds/opt :introspectionParams) string?
   (ds/opt :requiredRootField) string?
   })

(def third-party-network-response-spec
  (ds/spec
    {:name ::third-party-network-response
     :spec third-party-network-response-data}))
