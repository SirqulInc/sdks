(ns sirqul-io-t-platform.specs.profile-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.app-info-response :refer :all]
            [sirqul-io-t-platform.specs.connection-info-response :refer :all]
            [sirqul-io-t-platform.specs.profile-info-response :refer :all]
            )
  (:import (java.io File)))


(def profile-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :loginAccountId) int?
   (ds/opt :validated) boolean?
   (ds/opt :appInfo) app-info-response-spec
   (ds/opt :canViewAppInfo) boolean?
   (ds/opt :canViewFriendInfo) boolean?
   (ds/opt :canViewProfileInfo) boolean?
   (ds/opt :flagCount) int?
   (ds/opt :friendInfo) connection-info-response-spec
   (ds/opt :isBlocked) boolean?
   (ds/opt :isProfileOwner) boolean?
   (ds/opt :metFlagThreshold) boolean?
   (ds/opt :profileInfo) profile-info-response-spec
   (ds/opt :trusted) boolean?
   (ds/opt :following) boolean?
   (ds/opt :friendRequested) boolean?
   (ds/opt :friendRequestPending) boolean?
   (ds/opt :blocked) boolean?
   (ds/opt :flagged) boolean?
   (ds/opt :profileOwner) boolean?
   (ds/opt :friend) boolean?
   (ds/opt :returning) string?
   })

(def profile-response-spec
  (ds/spec
    {:name ::profile-response
     :spec profile-response-data}))
