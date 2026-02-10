(ns sirqul-io-t-platform.specs.address
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def address-data
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

(def address-spec
  (ds/spec
    {:name ::address
     :spec address-data}))
