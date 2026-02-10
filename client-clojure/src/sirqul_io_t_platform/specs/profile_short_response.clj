(ns sirqul-io-t-platform.specs.profile-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def profile-short-response-data
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
   (ds/opt :returning) string?
   })

(def profile-short-response-spec
  (ds/spec
    {:name ::profile-short-response
     :spec profile-short-response-data}))
