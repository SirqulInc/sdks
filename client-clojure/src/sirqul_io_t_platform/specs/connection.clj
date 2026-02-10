(ns sirqul-io-t-platform.specs.connection
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.connected-friend :refer :all]
            )
  (:import (java.io File)))


(def connection-data
  {
   (ds/opt :id) int?
   (ds/opt :created) inst?
   (ds/opt :updated) inst?
   (ds/opt :deleted) inst?
   (ds/opt :objectType) string?
   (ds/opt :legacyId) string?
   (ds/opt :searchTags) string?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :account) account-spec
   (ds/opt :connection) account-spec
   (ds/opt :pendingConnection) connected-friend-spec
   (ds/opt :friend) boolean?
   (ds/opt :friendRequested) boolean?
   (ds/opt :friendRequestPending) boolean?
   (ds/opt :following) boolean?
   (ds/opt :follower) boolean?
   (ds/opt :trusted) boolean?
   (ds/opt :blocked) boolean?
   (ds/opt :friendRequestDate) inst?
   (ds/opt :friendResponseDate) inst?
   (ds/opt :display) string?
   (ds/opt :connectionViewedDate) inst?
   (ds/opt :connectionType) string?
   (ds/opt :title) string?
   (ds/opt :pendingConnection_id) int?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   })

(def connection-spec
  (ds/spec
    {:name ::connection
     :spec connection-data}))
