(ns sirqul-io-t-platform.specs.connection-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def connection-response-data
  {
   (ds/opt :connectionId) int?
   (ds/opt :connectionAccountId) string?
   (ds/opt :connectionPendingId) string?
   (ds/opt :display) string?
   (ds/opt :locationDisplay) string?
   (ds/opt :connectionViewedDate) int?
   (ds/opt :profileImage) string?
   (ds/opt :title) string?
   (ds/opt :connectionAccountType) string?
   (ds/opt :trusted) boolean?
   (ds/opt :following) boolean?
   (ds/opt :friendRequested) boolean?
   (ds/opt :friendRequestPending) boolean?
   (ds/opt :blocked) boolean?
   (ds/opt :friend) boolean?
   })

(def connection-response-spec
  (ds/spec
    {:name ::connection-response
     :spec connection-response-data}))
