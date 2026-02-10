(ns sirqul-io-t-platform.specs.contact
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.cell-carrier :refer :all]
            [sirqul-io-t-platform.specs.address :refer :all]
            )
  (:import (java.io File)))


(def contact-data
  {
   (ds/opt :firstName) string?
   (ds/opt :middleName) string?
   (ds/opt :lastName) string?
   (ds/opt :prefix) string?
   (ds/opt :suffix) string?
   (ds/opt :title) string?
   (ds/opt :homePhone) string?
   (ds/opt :cellPhone) string?
   (ds/opt :cellCarrier) cell-carrier-spec
   (ds/opt :businessPhone) string?
   (ds/opt :businessPhoneExt) string?
   (ds/opt :faxNumber) string?
   (ds/opt :timeZone) string?
   (ds/opt :utcOffset) string?
   (ds/opt :code501c3) string?
   (ds/opt :emailAddress) string?
   (ds/opt :address) address-spec
   (ds/opt :web) string?
   (ds/opt :display) string?
   })

(def contact-spec
  (ds/spec
    {:name ::contact
     :spec contact-data}))
