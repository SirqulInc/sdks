(ns sirqul-io-t-platform.specs.account-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.contact-response :refer :all]
            [sirqul-io-t-platform.specs.account-mini-response :refer :all]
            )
  (:import (java.io File)))


(def account-response-data
  {
   (ds/opt :accountId) int?
   (ds/opt :locationDisplay) string?
   (ds/opt :display) string?
   (ds/opt :username) string?
   (ds/opt :accountType) string?
   (ds/opt :profileImage) string?
   (ds/opt :gender) string?
   (ds/opt :contactEmail) string?
   (ds/opt :contact) contact-response-spec
   (ds/opt :manager) account-mini-response-spec
   (ds/opt :active) boolean?
   })

(def account-response-spec
  (ds/spec
    {:name ::account-response
     :spec account-response-data}))
