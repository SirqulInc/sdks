(ns sirqul-io-t-platform.specs.third-party-network-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def third-party-network-short-response-data
  {
   (ds/opt :updated) int?
   (ds/opt :created) int?
   (ds/opt :active) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :networkUID) string?
   (ds/opt :network) string?
   })

(def third-party-network-short-response-spec
  (ds/spec
    {:name ::third-party-network-short-response
     :spec third-party-network-short-response-data}))
