(ns sirqul-io-t-platform.specs.application-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.platform-response :refer :all]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.billable-entity-short-response :refer :all]
            [sirqul-io-t-platform.specs.trilat-app-settings :refer :all]
            )
  (:import (java.io File)))


(def application-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :applicationId) int?
   (ds/opt :appKey) string?
   (ds/opt :title) string?
   (ds/opt :currentBuildVersion) string?
   (ds/opt :currentApiVersion) string?
   (ds/opt :appIcon) asset-short-response-spec
   (ds/opt :appLogo) asset-short-response-spec
   (ds/opt :active) boolean?
   (ds/opt :about) string?
   (ds/opt :landingPageUrl) string?
   (ds/opt :landingPageFullUrl) string?
   (ds/opt :defaultImageFullUrl) string?
   (ds/opt :activityDescription) string?
   (ds/opt :platforms) (s/coll-of platform-response-spec)
   (ds/opt :categories) (s/coll-of category-response-spec)
   (ds/opt :placementCount) int?
   (ds/opt :billable) billable-entity-short-response-spec
   (ds/opt :hasAds) boolean?
   (ds/opt :publicNotifications) boolean?
   (ds/opt :urlScheme) string?
   (ds/opt :global) boolean?
   (ds/opt :downloadUrls) string?
   (ds/opt :localAdsEnabled) boolean?
   (ds/opt :trilatSettings) trilat-app-settings-spec
   (ds/opt :appType) string?
   (ds/opt :appName) string?
   (ds/opt :bundleId) string?
   (ds/opt :scoringType) string?
   (ds/opt :hintCost) int?
   (ds/opt :maxScore) int?
   (ds/opt :ticketsPerPoint) float?
   (ds/opt :hasGameData) boolean?
   (ds/opt :globalTickets) boolean?
   (ds/opt :eulaVersion) string?
   (ds/opt :eulaDateUpdated) int?
   (ds/opt :modules) string?
   (ds/opt :billableEntityName) string?
   (ds/opt :showInActivities) boolean?
   (ds/opt :cssClass) string?
   (ds/opt :inviteWelcomeText) string?
   (ds/opt :invitePageUrl) string?
   (ds/opt :apnsCertificateFileName) string?
   (ds/opt :facebookAppId) string?
   (ds/opt :facebookAppSecret) string?
   (ds/opt :appToken) string?
   (ds/opt :googleApiKey) string?
   (ds/opt :appRestKey) string?
   (ds/opt :publicContentApproval) boolean?
   (ds/opt :productionMode) boolean?
   (ds/opt :minimumSessionLength) int?
   (ds/opt :sessionGapLength) int?
   (ds/opt :sqootApiKey) string?
   (ds/opt :amqpEnabled) boolean?
   (ds/opt :authorizedCount) int?
   (ds/opt :authorizedServers) string?
   (ds/opt :returning) string?
   })

(def application-response-spec
  (ds/spec
    {:name ::application-response
     :spec application-response-data}))
