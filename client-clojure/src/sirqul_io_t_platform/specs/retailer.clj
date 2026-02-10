(ns sirqul-io-t-platform.specs.retailer
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.cell-carrier :refer :all]
            [sirqul-io-t-platform.specs.address :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.territory :refer :all]
            [sirqul-io-t-platform.specs.retailer-location :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def retailer-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :name) string?
   (ds/opt :responsible) account-spec
   (ds/opt :manager) account-spec
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
   (ds/opt :categories) (s/coll-of category-spec)
   (ds/opt :territory) territory-spec
   (ds/opt :locations) (s/coll-of retailer-location-spec)
   (ds/opt :yipitId) int?
   (ds/opt :facebookUrl) string?
   (ds/opt :twitterUrl) string?
   (ds/opt :visibility) string?
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :appKey) string?
   (ds/opt :categoryTree) string?
   (ds/opt :filterTree) string?
   (ds/opt :billableId) int?
   (ds/opt :subType) string?
   (ds/opt :contentName) string?
   (ds/opt :owner) account-spec
   })

(def retailer-spec
  (ds/spec
    {:name ::retailer
     :spec retailer-data}))
