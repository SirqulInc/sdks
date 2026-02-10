(ns sirqul-io-t-platform.specs.consumer-invite-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.connection-response :refer :all]
            [sirqul-io-t-platform.specs.application-short-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-location-response :refer :all]
            [sirqul-io-t-platform.specs.offer-short-response :refer :all]
            [sirqul-io-t-platform.specs.album-response :refer :all]
            )
  (:import (java.io File)))


(def consumer-invite-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :inviterId) int?
   (ds/opt :inviter) account-short-response-spec
   (ds/opt :connection) connection-response-spec
   (ds/opt :inviteText) string?
   (ds/opt :token) string?
   (ds/opt :albumCoverUrl) string?
   (ds/opt :albumTitle) string?
   (ds/opt :appName) string?
   (ds/opt :welcomeText) string?
   (ds/opt :application) application-short-response-spec
   (ds/opt :retailerLocation) retailer-location-response-spec
   (ds/opt :offer) offer-short-response-spec
   (ds/opt :album) album-response-spec
   (ds/opt :returning) string?
   })

(def consumer-invite-response-spec
  (ds/spec
    {:name ::consumer-invite-response
     :spec consumer-invite-response-data}))
