(ns sirqul-io-t-platform.specs.offer
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.billable-entity :refer :all]
            [sirqul-io-t-platform.specs.offer-location :refer :all]
            [sirqul-io-t-platform.specs.mission :refer :all]
            [sirqul-io-t-platform.specs.offer :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.filter :refer :all]
            [sirqul-io-t-platform.specs.product :refer :all]
            [sirqul-io-t-platform.specs.media :refer :all]
            [sirqul-io-t-platform.specs.event :refer :all]
            [sirqul-io-t-platform.specs.device :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.yay-or-nay :refer :all]
            [sirqul-io-t-platform.specs.flag :refer :all]
            [sirqul-io-t-platform.specs.flag-threshold :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def offer-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :testField) string?
   (ds/opt :billableEntity) billable-entity-spec
   (ds/opt :offerLocations) (s/coll-of offer-location-spec)
   (ds/opt :missions) (s/coll-of mission-spec)
   (ds/opt :activated) inst?
   (ds/opt :expires) inst?
   (ds/opt :redeemableStart) inst?
   (ds/opt :redeemableEnd) inst?
   (ds/opt :title) string?
   (ds/opt :subTitle) string?
   (ds/opt :type) string?
   (ds/opt :specialOfferType) string?
   (ds/opt :details) string?
   (ds/opt :subDetails) string?
   (ds/opt :finePrint) string?
   (ds/opt :getThereNowNotification) string?
   (ds/opt :maxPrints) int?
   (ds/opt :viewLimit) int?
   (ds/opt :featured) boolean?
   (ds/opt :replaced) boolean?
   (ds/opt :showRemaining) boolean?
   (ds/opt :showRedeemed) boolean?
   (ds/opt :parentOffer) offer-spec
   (ds/opt :artwork) asset-spec
   (ds/opt :offerImage1) asset-spec
   (ds/opt :offerImage2) asset-spec
   (ds/opt :offerImage3) asset-spec
   (ds/opt :offerImage4) asset-spec
   (ds/opt :offerImage5) asset-spec
   (ds/opt :barCode) asset-spec
   (ds/opt :barCodeType) string?
   (ds/opt :barCodeEntry) string?
   (ds/opt :categories) (s/coll-of category-spec)
   (ds/opt :filters) (s/coll-of filter-spec)
   (ds/opt :ticketType) string?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :ticketPriceType) string?
   (ds/opt :ticketPrice) int?
   (ds/opt :fullPrice) float?
   (ds/opt :discountPrice) float?
   (ds/opt :availableLimit) int?
   (ds/opt :availableLimitPerUser) int?
   (ds/opt :addedLimit) int?
   (ds/opt :usedCount) int?
   (ds/opt :addedCount) int?
   (ds/opt :removedCount) int?
   (ds/opt :viewedCount) int?
   (ds/opt :clickedCount) int?
   (ds/opt :offerVisibility) string?
   (ds/opt :offerProcessorId) string?
   (ds/opt :externalId) string?
   (ds/opt :externalUrl) string?
   (ds/opt :externalUntrackedUrl) string?
   (ds/opt :sqootId) int?
   (ds/opt :sqootUrl) string?
   (ds/opt :sqootCategorySlug) string?
   (ds/opt :sqootCategoryName) string?
   (ds/opt :yipitId) int?
   (ds/opt :redeemAuthOptions) string?
   (ds/opt :publisher) string?
   (ds/opt :product) product-spec
   (ds/opt :media) media-spec
   (ds/opt :event) event-spec
   (ds/opt :device) device-spec
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :favoriteCount) int?
   (ds/opt :hasRatings) boolean?
   (ds/opt :likes) (s/coll-of yay-or-nay-spec)
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :availabilitySummary) string?
   (ds/opt :flags) (s/coll-of flag-spec)
   (ds/opt :flagCount) int?
   (ds/opt :flagThreshold) flag-threshold-spec
   (ds/opt :savings) float?
   (ds/opt :clickStream) float?
   (ds/opt :ticketCount) int?
   (ds/opt :display) string?
   (ds/opt :appKey) string?
   (ds/opt :categoryTree) string?
   (ds/opt :filterTree) string?
   (ds/opt :indexable) boolean?
   (ds/opt :billableId) int?
   (ds/opt :subType) string?
   (ds/opt :contentName) string?
   (ds/opt :defaultThreshold) int?
   (ds/opt :contentAsset) asset-spec
   (ds/opt :owner) account-spec
   (ds/opt :secondaryType) string?
   (ds/opt :discountPercentage) float?
   })

(def offer-spec
  (ds/spec
    {:name ::offer
     :spec offer-data}))
