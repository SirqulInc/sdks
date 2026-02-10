(ns sirqul-io-t-platform.specs.third-party-credential-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.third-party-network-short-response :refer :all]
            )
  (:import (java.io File)))


(def third-party-credential-response-data
  {
   (ds/opt :thirdPartyCredentialId) int?
   (ds/opt :thirdPartyId) string?
   (ds/opt :thirdPartyName) string?
   (ds/opt :network) third-party-network-short-response-spec
   (ds/opt :updated) int?
   (ds/opt :created) int?
   })

(def third-party-credential-response-spec
  (ds/spec
    {:name ::third-party-credential-response
     :spec third-party-credential-response-data}))
