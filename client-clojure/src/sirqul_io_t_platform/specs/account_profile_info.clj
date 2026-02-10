(ns sirqul-io-t-platform.specs.account-profile-info
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def account-profile-info-data
  {
   (ds/opt :id) int?
   (ds/opt :created) inst?
   (ds/opt :updated) inst?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :account) account-spec
   (ds/opt :gender) string?
   (ds/opt :birthday) inst?
   (ds/opt :ageGroup) string?
   (ds/opt :preferredMinAge) int?
   (ds/opt :preferredMaxAge) int?
   (ds/opt :preferredMinHeight) int?
   (ds/opt :preferredMaxHeight) int?
   (ds/opt :preferredGender) string?
   (ds/opt :preferredEducation) string?
   (ds/opt :preferredEducationIndex) int?
   (ds/opt :preferredBodyType) string?
   (ds/opt :preferredEthnicity) string?
   (ds/opt :preferredLocation) string?
   (ds/opt :preferredLocationRange) float?
   (ds/opt :height) string?
   (ds/opt :heightIndex) int?
   (ds/opt :ethnicity) string?
   (ds/opt :bodyType) string?
   (ds/opt :maritalStatus) string?
   (ds/opt :children) string?
   (ds/opt :religion) string?
   (ds/opt :education) string?
   (ds/opt :educationIndex) int?
   (ds/opt :smoke) string?
   (ds/opt :drink) string?
   (ds/opt :companionship) string?
   (ds/opt :companionshipIndex) int?
   (ds/opt :developmentPlatforms) (s/coll-of string?)
   (ds/opt :matchToken) int?
   (ds/opt :matchString) string?
   (ds/opt :noneZeroMatchToken) int?
   (ds/opt :preferredMaxBirthday) inst?
   (ds/opt :preferredMinBirthday) inst?
   })

(def account-profile-info-spec
  (ds/spec
    {:name ::account-profile-info
     :spec account-profile-info-data}))
