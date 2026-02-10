(ns sirqul-io-t-platform.specs.user-settings-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.notification-settings-response :refer :all]
            )
  (:import (java.io File)))


(def user-settings-response-data
  {
   (ds/opt :showAsZipcode) boolean?
   (ds/opt :showExactLocation) boolean?
   (ds/opt :showOthersExactLocation) boolean?
   (ds/opt :suggestionCount) int?
   (ds/opt :suggestionTimeFrame) int?
   (ds/opt :suggestionMethod) string?
   (ds/opt :notifications) notification-settings-response-spec
   (ds/opt :publicShowFriendInfo) boolean?
   (ds/opt :publicShowGameInfo) boolean?
   (ds/opt :publicShowProfileInfo) boolean?
   (ds/opt :favoriteVisibility) string?
   })

(def user-settings-response-spec
  (ds/spec
    {:name ::user-settings-response
     :spec user-settings-response-data}))
