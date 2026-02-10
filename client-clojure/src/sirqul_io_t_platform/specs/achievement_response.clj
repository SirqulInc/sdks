(ns sirqul-io-t-platform.specs.achievement-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.achievement-tier-response :refer :all]
            )
  (:import (java.io File)))


(def achievement-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :achievementId) int?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :analyticsTag) string?
   (ds/opt :rankType) string?
   (ds/opt :rankIncrement) int?
   (ds/opt :validate) boolean?
   (ds/opt :appName) string?
   (ds/opt :active) boolean?
   (ds/opt :updated) int?
   (ds/opt :created) int?
   (ds/opt :tierCount) int?
   (ds/opt :minIncrement) int?
   (ds/opt :maxIncrement) int?
   (ds/opt :tiers) (s/coll-of achievement-tier-response-spec)
   (ds/opt :returning) string?
   })

(def achievement-response-spec
  (ds/spec
    {:name ::achievement-response
     :spec achievement-response-data}))
