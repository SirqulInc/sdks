(ns sirqul-io-t-platform.specs.retailer-profile
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.cell-carrier :refer :all]
            [sirqul-io-t-platform.specs.address :refer :all]
            )
  (:import (java.io File)))


(def retailer-profile-data
  {
   (ds/opt :detailsHeader) string?
   (ds/opt :detailsBody) string?
   (ds/opt :detailsLineLeft1) string?
   (ds/opt :detailsLineLeft2) string?
   (ds/opt :detailsLineRight1) string?
   (ds/opt :metaDescription) string?
   (ds/opt :directions) string?
   (ds/opt :hours) string?
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
   (ds/opt :featured) boolean?
   (ds/opt :listed) boolean?
   })

(def retailer-profile-spec
  (ds/spec
    {:name ::retailer-profile
     :spec retailer-profile-data}))
