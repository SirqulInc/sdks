(ns sirqul-io-t-platform.specs.account-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def account-short-response-data
  {
   (ds/opt :accountId) int?
   (ds/opt :locationDisplay) string?
   (ds/opt :display) string?
   (ds/opt :username) string?
   (ds/opt :accountType) string?
   (ds/opt :profileImage) string?
   (ds/opt :gender) string?
   (ds/opt :contactEmail) string?
   })

(def account-short-response-spec
  (ds/spec
    {:name ::account-short-response
     :spec account-short-response-data}))
