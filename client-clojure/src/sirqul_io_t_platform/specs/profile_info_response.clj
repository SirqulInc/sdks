(ns sirqul-io-t-platform.specs.profile-info-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.contact-response :refer :all]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.personal-profile-response :refer :all]
            [sirqul-io-t-platform.specs.user-settings-response :refer :all]
            [sirqul-io-t-platform.specs.postal-code-response :refer :all]
            )
  (:import (java.io File)))


(def profile-info-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :accountId) int?
   (ds/opt :locationDisplay) string?
   (ds/opt :display) string?
   (ds/opt :username) string?
   (ds/opt :profileImage) string?
   (ds/opt :profileAvatar) asset-short-response-spec
   (ds/opt :aboutUs) string?
   (ds/opt :locale) string?
   (ds/opt :summaryTitle) string?
   (ds/opt :gender) string?
   (ds/opt :age) string?
   (ds/opt :gameExperience) string?
   (ds/opt :contact) contact-response-spec
   (ds/opt :categories) (s/coll-of category-response-spec)
   (ds/opt :personalProfile) personal-profile-response-spec
   (ds/opt :userSettings) user-settings-response-spec
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :currentPostalCode) postal-code-response-spec
   (ds/opt :accountType) string?
   (ds/opt :premiumExpiration) int?
   (ds/opt :matchIndex) int?
   (ds/opt :tags) string?
   (ds/opt :returning) string?
   })

(def profile-info-response-spec
  (ds/spec
    {:name ::profile-info-response
     :spec profile-info-response-data}))
