(ns sirqul-io-t-platform.specs.contact-info-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.address-response :refer :all]
            [sirqul-io-t-platform.specs.cell-carrier-response :refer :all]
            )
  (:import (java.io File)))


(def contact-info-response-data
  {
   (ds/opt :homePhone) string?
   (ds/opt :cellPhone) string?
   (ds/opt :cellPhoneCarrier) string?
   (ds/opt :businessPhone) string?
   (ds/opt :businessPhoneExt) string?
   (ds/opt :faxNumber) string?
   (ds/opt :timeZone) string?
   (ds/opt :utcOffset) string?
   (ds/opt :code501c3) string?
   (ds/opt :emailAddress) string?
   (ds/opt :address) address-response-spec
   (ds/opt :web) string?
   (ds/opt :cellCarrier) cell-carrier-response-spec
   })

(def contact-info-response-spec
  (ds/spec
    {:name ::contact-info-response
     :spec contact-info-response-data}))
