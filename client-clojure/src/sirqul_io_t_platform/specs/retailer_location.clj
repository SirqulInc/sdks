(ns sirqul-io-t-platform.specs.retailer-location
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.filter :refer :all]
            [sirqul-io-t-platform.specs.offer-location :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.retailer :refer :all]
            [sirqul-io-t-platform.specs.assignment :refer :all]
            [sirqul-io-t-platform.specs.assignment :refer :all]
            [sirqul-io-t-platform.specs.retailer-profile :refer :all]
            [sirqul-io-t-platform.specs.region :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.building :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def retailer-location-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :categories) (s/coll-of category-spec)
   (ds/opt :filters) (s/coll-of filter-spec)
   (ds/opt :offerLocations) (s/coll-of offer-location-spec)
   (ds/opt :logo) asset-spec
   (ds/opt :picture1) asset-spec
   (ds/opt :picture2) asset-spec
   (ds/opt :qrCode) asset-spec
   (ds/opt :name) string?
   (ds/opt :locationId) string?
   (ds/opt :code) string?
   (ds/opt :retailer) retailer-spec
   (ds/opt :assignments) (s/coll-of assignment-spec)
   (ds/opt :currentAssignment) assignment-spec
   (ds/opt :profile) retailer-profile-spec
   (ds/opt :regions) (s/coll-of region-spec)
   (ds/opt :offerPrintKeyPrefix) string?
   (ds/opt :administrators) (s/coll-of account-spec)
   (ds/opt :sqootId) int?
   (ds/opt :yipitId) int?
   (ds/opt :locationToken) string?
   (ds/opt :building) building-spec
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :searchIndexUpdated) inst?
   (ds/opt :inSearchIndex) boolean?
   (ds/opt :favoriteCount) int?
   (ds/opt :hasRatings) boolean?
   (ds/opt :googlePlaceId) string?
   (ds/opt :yelpId) string?
   (ds/opt :display) string?
   (ds/opt :appKey) string?
   (ds/opt :categoryTree) string?
   (ds/opt :filterTree) string?
   (ds/opt :addressDisplay) string?
   (ds/opt :mapQuery) string?
   (ds/opt :sortName) string?
   (ds/opt :fullDisplay) string?
   (ds/opt :hasOffers) boolean?
   (ds/opt :billableId) int?
   (ds/opt :subType) string?
   (ds/opt :contentName) string?
   (ds/opt :owner) account-spec
   (ds/opt :secondaryType) string?
   (ds/opt :locationAddress) string?
   (ds/opt :validOfferLocationIds) (s/coll-of int?)
   })

(def retailer-location-spec
  (ds/spec
    {:name ::retailer-location
     :spec retailer-location-data}))
