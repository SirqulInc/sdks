(ns sirqul-io-t-platform.specs.third-party-credentials
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.third-party-network :refer :all]
            )
  (:import (java.io File)))


(def third-party-credentials-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :account) account-spec
   (ds/opt :thirdPartyNetwork) third-party-network-spec
   (ds/opt :thirdPartyUID) int?
   (ds/opt :thirdPartyId) string?
   (ds/opt :thirdPartyToken) string?
   (ds/opt :thirdPartySecret) string?
   (ds/opt :thirdPartyName) string?
   (ds/opt :thirdPartyUnencryptedToken) string?
   })

(def third-party-credentials-spec
  (ds/spec
    {:name ::third-party-credentials
     :spec third-party-credentials-data}))
