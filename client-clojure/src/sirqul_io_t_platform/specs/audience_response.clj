(ns sirqul-io-t-platform.specs.audience-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.age-group-response :refer :all]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.application-short-response :refer :all]
            [sirqul-io-t-platform.specs.audience-device-response :refer :all]
            [sirqul-io-t-platform.specs.geocode-lat-lng-response :refer :all]
            )
  (:import (java.io File)))


(def audience-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :radius) float?
   (ds/opt :sendSuggestion) boolean?
   (ds/opt :description) string?
   (ds/opt :active) boolean?
   (ds/opt :searchTags) string?
   (ds/opt :ownerId) int?
   (ds/opt :gender) string?
   (ds/opt :ageGroups) (s/coll-of age-group-response-spec)
   (ds/opt :categories) (s/coll-of category-response-spec)
   (ds/opt :applications) (s/coll-of application-short-response-spec)
   (ds/opt :devices) (s/coll-of audience-device-response-spec)
   (ds/opt :gameExperienceLevel) string?
   (ds/opt :locations) (s/coll-of geocode-lat-lng-response-spec)
   (ds/opt :associateType) string?
   (ds/opt :associateId) int?
   (ds/opt :associateDescription) string?
   })

(def audience-response-spec
  (ds/spec
    {:name ::audience-response
     :spec audience-response-data}))
