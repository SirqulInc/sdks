(ns sirqul-io-t-platform.specs.audience
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.audience-device-version-range :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.audience-location :refer :all]
            [sirqul-io-t-platform.specs.audience-target-type :refer :all]
            )
  (:import (java.io File)))


(def audience-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :name) string?
   (ds/opt :display) boolean?
   (ds/opt :description) string?
   (ds/opt :owner) account-spec
   (ds/opt :gender) string?
   (ds/opt :ageGroups) (s/coll-of string?)
   (ds/opt :gameExperienceLevel) string?
   (ds/opt :deviceVersionRanges) (s/coll-of audience-device-version-range-spec)
   (ds/opt :categories) (s/coll-of category-spec)
   (ds/opt :applications) (s/coll-of application-spec)
   (ds/opt :radius) float?
   (ds/opt :locations) (s/coll-of audience-location-spec)
   (ds/opt :sendSuggestion) boolean?
   (ds/opt :startTimeOffset) int?
   (ds/opt :endTimeOffset) int?
   (ds/opt :target) audience-target-type-spec
   (ds/opt :associateContentName) string?
   (ds/opt :polygon) string?
   (ds/opt :associateType) string?
   (ds/opt :associateId) int?
   })

(def audience-spec
  (ds/spec
    {:name ::audience
     :spec audience-data}))
