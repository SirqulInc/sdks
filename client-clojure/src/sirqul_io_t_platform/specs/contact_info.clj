(ns sirqul-io-t-platform.specs.contact-info
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.cell-carrier :refer :all]
            [sirqul-io-t-platform.specs.address :refer :all]
            )
  (:import (java.io File)))


(def contact-info-data
  {
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
   })

(def contact-info-spec
  (ds/spec
    {:name ::contact-info
     :spec contact-info-data}))
