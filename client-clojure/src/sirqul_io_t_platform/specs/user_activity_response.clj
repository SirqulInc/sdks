(ns sirqul-io-t-platform.specs.user-activity-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def user-activity-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :created) inst?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :tag) string?
   (ds/opt :customId) int?
   (ds/opt :customType) string?
   (ds/opt :userId) int?
   (ds/opt :username) string?
   (ds/opt :appTitle) string?
   (ds/opt :appId) int?
   (ds/opt :appUrl) string?
   (ds/opt :appDescription) string?
   (ds/opt :imageURL) string?
   (ds/opt :profileImage) string?
   (ds/opt :fields) string?
   (ds/opt :id) int?
   (ds/opt :customText) string?
   (ds/opt :customValue) float?
   (ds/opt :customMessage) string?
   (ds/opt :returning) string?
   })

(def user-activity-response-spec
  (ds/spec
    {:name ::user-activity-response
     :spec user-activity-response-data}))
