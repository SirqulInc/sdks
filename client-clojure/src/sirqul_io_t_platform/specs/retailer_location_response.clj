(ns sirqul-io-t-platform.specs.retailer-location-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.contact-info-response :refer :all]
            [sirqul-io-t-platform.specs.profile-short-response :refer :all]
            [sirqul-io-t-platform.specs.profile-short-response :refer :all]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.filter-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.billable-entity-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-count-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-short-response :refer :all]
            [sirqul-io-t-platform.specs.list-response :refer :all]
            )
  (:import (java.io File)))


(def retailer-location-response-data
  {
   (ds/opt :retailerLocationId) int?
   (ds/opt :name) string?
   (ds/opt :contact) contact-info-response-spec
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :active) boolean?
   (ds/opt :favoriteId) int?
   (ds/opt :favorite) boolean?
   (ds/opt :responsible) profile-short-response-spec
   (ds/opt :manager) profile-short-response-spec
   (ds/opt :categories) (s/coll-of category-response-spec)
   (ds/opt :filters) (s/coll-of filter-response-spec)
   (ds/opt :logo) asset-short-response-spec
   (ds/opt :picture1) asset-short-response-spec
   (ds/opt :picture2) asset-short-response-spec
   (ds/opt :billableEntity) billable-entity-response-spec
   (ds/opt :counts) retailer-count-response-spec
   (ds/opt :retailer) retailer-short-response-spec
   (ds/opt :offers) list-response-spec
   (ds/opt :internalId) string?
   (ds/opt :detailsHeader) string?
   (ds/opt :detailsBody) string?
   (ds/opt :hours) string?
   (ds/opt :locationToken) string?
   (ds/opt :building) string?
   (ds/opt :qrCodeUrl) string?
   (ds/opt :distance) float?
   (ds/opt :googlePlaceId) string?
   (ds/opt :yelpId) string?
   })

(def retailer-location-response-spec
  (ds/spec
    {:name ::retailer-location-response
     :spec retailer-location-response-data}))
