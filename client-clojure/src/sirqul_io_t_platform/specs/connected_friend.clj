(ns sirqul-io-t-platform.specs.connected-friend
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset :refer :all]
            )
  (:import (java.io File)))


(def connected-friend-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :display) string?
   (ds/opt :avatar) asset-spec
   (ds/opt :avatarURL) string?
   (ds/opt :platform) string?
   (ds/opt :platformId) string?
   (ds/opt :invited) boolean?
   (ds/opt :locationDescription) string?
   })

(def connected-friend-spec
  (ds/spec
    {:name ::connected-friend
     :spec connected-friend-data}))
