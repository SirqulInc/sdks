(ns sirqul-io-t-platform.specs.offer-location
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.offer :refer :all]
            [sirqul-io-t-platform.specs.retailer-location :refer :all]
            [sirqul-io-t-platform.specs.audience :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def offer-location-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :offer) offer-spec
   (ds/opt :location) retailer-location-spec
   (ds/opt :distance) float?
   (ds/opt :altitude) float?
   (ds/opt :customValue) float?
   (ds/opt :locationDetail) string?
   (ds/opt :audiences) (s/coll-of audience-spec)
   (ds/opt :qrInviteCode) asset-spec
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :searchIndexUpdated) inst?
   (ds/opt :inSearchIndex) boolean?
   (ds/opt :favoriteCount) int?
   (ds/opt :addedCount) int?
   (ds/opt :display) string?
   (ds/opt :appKey) string?
   (ds/opt :devicePower) float?
   (ds/opt :powerLoss) float?
   (ds/opt :udid) string?
   (ds/opt :billableId) int?
   (ds/opt :subType) string?
   (ds/opt :contentName) string?
   (ds/opt :contentAsset) asset-spec
   (ds/opt :owner) account-spec
   (ds/opt :secondaryType) string?
   (ds/opt :categoryIds) (s/coll-of int?)
   (ds/opt :filterIds) (s/coll-of int?)
   })

(def offer-location-spec
  (ds/spec
    {:name ::offer-location
     :spec offer-location-data}))
