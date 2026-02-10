(ns sirqul-io-t-platform.specs.account
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.region :refer :all]
            [sirqul-io-t-platform.specs.third-party-credentials :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.cell-carrier :refer :all]
            [sirqul-io-t-platform.specs.address :refer :all]
            [sirqul-io-t-platform.specs.account-profile-info :refer :all]
            [sirqul-io-t-platform.specs.retailer-location :refer :all]
            )
  (:import (java.io File)))


(def account-data
  {
   (ds/opt :id) int?
   (ds/opt :created) inst?
   (ds/opt :updated) inst?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :currentRegion) region-spec
   (ds/opt :locationLastUpdated) inst?
   (ds/opt :currentPostalCode) string?
   (ds/opt :currentPostalCodeLatitude) float?
   (ds/opt :currentPostalCodeLongitude) float?
   (ds/opt :locationUpdated) boolean?
   (ds/opt :premigrationId) int?
   (ds/opt :username) string?
   (ds/opt :locale) string?
   (ds/opt :inviteCode) string?
   (ds/opt :retailerInviteCode) string?
   (ds/opt :aboutUs) string?
   (ds/opt :businessName) string?
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :thirdPartyCredentials) (s/coll-of third-party-credentials-spec)
   (ds/opt :partnerActive) boolean?
   (ds/opt :resetToken) string?
   (ds/opt :profileImage) string?
   (ds/opt :accountType) string?
   (ds/opt :media) (s/coll-of asset-spec)
   (ds/opt :picture) asset-spec
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
   (ds/opt :website) string?
   (ds/opt :consumersNotes) string?
   (ds/opt :consumersAboutUs) string?
   (ds/opt :accountProfile) account-profile-info-spec
   (ds/opt :retailerLocations) (s/coll-of retailer-location-spec)
   (ds/opt :executive) boolean?
   (ds/opt :contentName) string?
   (ds/opt :defaultThreshold) int?
   (ds/opt :audienceInfo_gender) string?
   (ds/opt :flagThreshold_id) int?
   (ds/opt :contentType) string?
   })

(def account-spec
  (ds/spec
    {:name ::account
     :spec account-data}))
