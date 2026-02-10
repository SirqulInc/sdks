(ns sirqul-io-t-platform.specs.application-short-response
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


(def application-short-response-data
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
   (ds/opt :returning) string?
   })

(def application-short-response-spec
  (ds/spec
    {:name ::application-short-response
     :spec application-short-response-data}))
