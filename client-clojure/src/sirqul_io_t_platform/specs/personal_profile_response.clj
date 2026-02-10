(ns sirqul-io-t-platform.specs.personal-profile-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def personal-profile-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :preferredGender) string?
   (ds/opt :preferredEthnicity) string?
   (ds/opt :preferredEducation) string?
   (ds/opt :preferredEducationIndex) int?
   (ds/opt :preferredBodyType) string?
   (ds/opt :preferredMinAge) int?
   (ds/opt :preferredMaxAge) int?
   (ds/opt :preferredMinHeight) int?
   (ds/opt :preferredMaxHeight) int?
   (ds/opt :preferredLocationRange) float?
   (ds/opt :gender) string?
   (ds/opt :hometown) string?
   (ds/opt :height) string?
   (ds/opt :heightIndex) int?
   (ds/opt :ethnicity) string?
   (ds/opt :bodyType) string?
   (ds/opt :children) string?
   (ds/opt :companionship) string?
   (ds/opt :companionshipIndex) int?
   (ds/opt :drink) string?
   (ds/opt :education) string?
   (ds/opt :educationIndex) int?
   (ds/opt :maritalStatus) string?
   (ds/opt :smoke) string?
   (ds/opt :religion) string?
   (ds/opt :birthday) int?
   (ds/opt :returning) string?
   })

(def personal-profile-response-spec
  (ds/spec
    {:name ::personal-profile-response
     :spec personal-profile-response-data}))
