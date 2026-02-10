(ns sirqul-io-t-platform.specs.account-mini-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def account-mini-response-data
  {
   (ds/opt :accountId) int?
   (ds/opt :locationDisplay) string?
   (ds/opt :display) string?
   (ds/opt :username) string?
   (ds/opt :accountType) string?
   })

(def account-mini-response-spec
  (ds/spec
    {:name ::account-mini-response
     :spec account-mini-response-data}))
