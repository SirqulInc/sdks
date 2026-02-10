(ns sirqul-io-t-platform.specs.address-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def address-response-data
  {
   (ds/opt :streetAddress) string?
   (ds/opt :streetAddress2) string?
   (ds/opt :city) string?
   (ds/opt :stateCode) string?
   (ds/opt :state) string?
   (ds/opt :postalCode) string?
   (ds/opt :countryCode) string?
   (ds/opt :country) string?
   (ds/opt :display) string?
   })

(def address-response-spec
  (ds/spec
    {:name ::address-response
     :spec address-response-data}))
