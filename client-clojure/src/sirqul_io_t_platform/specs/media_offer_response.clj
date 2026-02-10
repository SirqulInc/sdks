(ns sirqul-io-t-platform.specs.media-offer-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-response :refer :all]
            [sirqul-io-t-platform.specs.base-offer-response :refer :all]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.filter-response :refer :all]
            )
  (:import (java.io File)))


(def media-offer-response-data
  {
   (ds/opt :title) string?
   (ds/opt :details) string?
   (ds/opt :subTitle) string?
   (ds/opt :activated) int?
   (ds/opt :expiration) int?
   (ds/opt :redeemableStart) int?
   (ds/opt :redeemableEnd) int?
   (ds/opt :offerType) string?
   (ds/opt :offerVisibility) string?
   (ds/opt :favorite) boolean?
   (ds/opt :deleted) int?
   (ds/opt :fullPrice) float?
   (ds/opt :discountPrice) float?
   (ds/opt :image) string?
   (ds/opt :image1) string?
   (ds/opt :image2) string?
   (ds/opt :image3) string?
   (ds/opt :image4) string?
   (ds/opt :image5) string?
   (ds/opt :images) (s/coll-of asset-response-spec)
   (ds/opt :barcode) string?
   (ds/opt :externalUrl) string?
   (ds/opt :active) boolean?
   (ds/opt :subDetails) string?
   (ds/opt :externalRedeemOptions) string?
   (ds/opt :publisher) string?
   (ds/opt :viewedCount) int?
   (ds/opt :clickedCount) int?
   (ds/opt :addedLimit) int?
   (ds/opt :addedCount) int?
   (ds/opt :usedCount) int?
   (ds/opt :removedCount) int?
   (ds/opt :ticketsReward) int?
   (ds/opt :ticketsRewardType) string?
   (ds/opt :specialOfferType) string?
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :favoriteCount) int?
   (ds/opt :noteCount) int?
   (ds/opt :billableEntityId) int?
   (ds/opt :responsibleAccountId) int?
   (ds/opt :availabilitySummary) string?
   (ds/opt :flagCount) int?
   (ds/opt :flagThreshold) int?
   (ds/opt :externalId) string?
   (ds/opt :parentOffer) base-offer-response-spec
   (ds/opt :categories) (s/coll-of category-response-spec)
   (ds/opt :filters) (s/coll-of filter-response-spec)
   })

(def media-offer-response-spec
  (ds/spec
    {:name ::media-offer-response
     :spec media-offer-response-data}))
