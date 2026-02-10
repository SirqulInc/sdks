(ns sirqul-io-t-platform.specs.offer-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.mission-list-response :refer :all]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-location-response :refer :all]
            [sirqul-io-t-platform.specs.product-response :refer :all]
            [sirqul-io-t-platform.specs.event-response :refer :all]
            [sirqul-io-t-platform.specs.media-response :refer :all]
            [sirqul-io-t-platform.specs.offer-short-response :refer :all]
            [sirqul-io-t-platform.specs.audience-response :refer :all]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.filter-response :refer :all]
            )
  (:import (java.io File)))


(def offer-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :offerLocationId) int?
   (ds/opt :offerId) int?
   (ds/opt :retailerId) int?
   (ds/opt :transactionId) int?
   (ds/opt :favoriteId) int?
   (ds/opt :offerName) string?
   (ds/opt :subTitle) string?
   (ds/opt :locationName) string?
   (ds/opt :starts) inst?
   (ds/opt :expires) inst?
   (ds/opt :activated) int?
   (ds/opt :expiration) int?
   (ds/opt :redeemableStart) int?
   (ds/opt :redeemableEnd) int?
   (ds/opt :distance) float?
   (ds/opt :offerType) string?
   (ds/opt :longitude) float?
   (ds/opt :latitude) float?
   (ds/opt :favorite) boolean?
   (ds/opt :fullPrice) float?
   (ds/opt :discountPrice) float?
   (ds/opt :estimatedValue) float?
   (ds/opt :voucherDiscountPrice) float?
   (ds/opt :missionListResponse) mission-list-response-spec
   (ds/opt :image) string?
   (ds/opt :image1) string?
   (ds/opt :image2) string?
   (ds/opt :image3) string?
   (ds/opt :image4) string?
   (ds/opt :image5) string?
   (ds/opt :images) (s/coll-of asset-response-spec)
   (ds/opt :barcode) string?
   (ds/opt :externalUrl) string?
   (ds/opt :sqootUrl) string?
   (ds/opt :active) boolean?
   (ds/opt :location) retailer-location-response-spec
   (ds/opt :subDetails) string?
   (ds/opt :externalRedeemAuth) int?
   (ds/opt :externalRedeemOptions) string?
   (ds/opt :publisher) string?
   (ds/opt :product) product-response-spec
   (ds/opt :event) event-response-spec
   (ds/opt :media) media-response-spec
   (ds/opt :viewedCount) int?
   (ds/opt :clickedCount) int?
   (ds/opt :addedLimit) int?
   (ds/opt :addedCount) int?
   (ds/opt :usedCount) int?
   (ds/opt :removedCount) int?
   (ds/opt :locationAddedCount) int?
   (ds/opt :barcodeEntry) string?
   (ds/opt :barcodeType) string?
   (ds/opt :ticketsReward) int?
   (ds/opt :ticketsRewardType) string?
   (ds/opt :specialOfferType) string?
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :favoriteCount) int?
   (ds/opt :noteCount) int?
   (ds/opt :logId) int?
   (ds/opt :billableEntityId) int?
   (ds/opt :responsibleAccountId) int?
   (ds/opt :availabilitySummary) string?
   (ds/opt :externalId) string?
   (ds/opt :parentOffer) offer-short-response-spec
   (ds/opt :address) string?
   (ds/opt :details) string?
   (ds/opt :finePrint) string?
   (ds/opt :retailerPhoneNumber) string?
   (ds/opt :ticketPriceType) string?
   (ds/opt :ticketPrice) int?
   (ds/opt :discountPercentage) float?
   (ds/opt :paymentFees) float?
   (ds/opt :voucherPrice) float?
   (ds/opt :purchasesRemaining) int?
   (ds/opt :redemptionsRemaining) int?
   (ds/opt :redemptionStatus) int?
   (ds/opt :redemptionCode) string?
   (ds/opt :audiences) (s/coll-of audience-response-spec)
   (ds/opt :audienceCount) int?
   (ds/opt :walletCount) int?
   (ds/opt :qrCodeUrl) string?
   (ds/opt :showRemaining) boolean?
   (ds/opt :showRedeemed) boolean?
   (ds/opt :purchaseLimit) int?
   (ds/opt :purchaseLimitPerUser) int?
   (ds/opt :redemptionLimit) int?
   (ds/opt :userRedemptionLimit) int?
   (ds/opt :categories) (s/coll-of category-response-spec)
   (ds/opt :filters) (s/coll-of filter-response-spec)
   (ds/opt :returning) string?
   })

(def offer-response-spec
  (ds/spec
    {:name ::offer-response
     :spec offer-response-data}))
