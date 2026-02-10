(ns sirqul-io-t-platform.specs.application
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.blob-file :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.billable-entity :refer :all]
            [sirqul-io-t-platform.specs.platform :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.placement :refer :all]
            [sirqul-io-t-platform.specs.retailer :refer :all]
            [sirqul-io-t-platform.specs.trilat-app-settings :refer :all]
            )
  (:import (java.io File)))


(def application-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :title) string?
   (ds/opt :about) string?
   (ds/opt :certificateUrl) string?
   (ds/opt :certificateName) string?
   (ds/opt :certificate) blob-file-spec
   (ds/opt :certificateLastUpdated) inst?
   (ds/opt :appDescription) string?
   (ds/opt :showInActivities) boolean?
   (ds/opt :cssClass) string?
   (ds/opt :inviteWelcomeText) string?
   (ds/opt :bundleId) string?
   (ds/opt :appType) string?
   (ds/opt :scoringType) string?
   (ds/opt :appKey) string?
   (ds/opt :appRestKey) string?
   (ds/opt :appTokenKey) string?
   (ds/opt :hintCost) int?
   (ds/opt :eulaDate) inst?
   (ds/opt :eulaVersion) string?
   (ds/opt :landingPageUrl) string?
   (ds/opt :invitePageUrl) string?
   (ds/opt :downloadUrls) string?
   (ds/opt :appName) string?
   (ds/opt :appIcon) asset-spec
   (ds/opt :appLogo) asset-spec
   (ds/opt :billableEntity) billable-entity-spec
   (ds/opt :facebookAppId) string?
   (ds/opt :facebookAppSecret) string?
   (ds/opt :twitterAppId) string?
   (ds/opt :twitterAppSecret) string?
   (ds/opt :twitterCallbackURL) string?
   (ds/opt :defaultImage) string?
   (ds/opt :modules) string?
   (ds/opt :authorizedServers) string?
   (ds/opt :authorizedCount) int?
   (ds/opt :activeServers) string?
   (ds/opt :licensePeriod) inst?
   (ds/opt :hasGameData) boolean?
   (ds/opt :currentBuildVersion) string?
   (ds/opt :currentApiVersion) string?
   (ds/opt :globalTickets) boolean?
   (ds/opt :ticketsPerPoint) float?
   (ds/opt :maxPointsPerScore) int?
   (ds/opt :useAppCache) boolean?
   (ds/opt :uniqueUserTag) string?
   (ds/opt :useMatchingAlgorithm) boolean?
   (ds/opt :platforms) (s/coll-of platform-spec)
   (ds/opt :categories) (s/coll-of category-spec)
   (ds/opt :placements) (s/coll-of placement-spec)
   (ds/opt :hasAdvertisements) boolean?
   (ds/opt :appleAppId) string?
   (ds/opt :googleAppId) string?
   (ds/opt :googleApiKey) string?
   (ds/opt :googleOAuthClientId) string?
   (ds/opt :googleOAuthSecret) string?
   (ds/opt :googleOAuthAccessToken) string?
   (ds/opt :googleOAuthRefreshToken) string?
   (ds/opt :baiduApiKey) string?
   (ds/opt :baiduSecretKey) string?
   (ds/opt :jpushAppKey) string?
   (ds/opt :jpushMasterSecret) string?
   (ds/opt :xgPushSecretKey) string?
   (ds/opt :publicNotifications) boolean?
   (ds/opt :urlScheme) string?
   (ds/opt :retailer) retailer-spec
   (ds/opt :objectStoreSession) string?
   (ds/opt :publicContentApproval) boolean?
   (ds/opt :productionMode) boolean?
   (ds/opt :griplyBaseUrl) string?
   (ds/opt :minimumSessionLength) int?
   (ds/opt :sessionGapLength) int?
   (ds/opt :processSessionData) boolean?
   (ds/opt :localAdsEnabled) boolean?
   (ds/opt :includeInReport) boolean?
   (ds/opt :sqootApiKey) string?
   (ds/opt :amqpEnabled) boolean?
   (ds/opt :trilatSettings) trilat-app-settings-spec
   })

(def application-spec
  (ds/spec
    {:name ::application
     :spec application-data}))
