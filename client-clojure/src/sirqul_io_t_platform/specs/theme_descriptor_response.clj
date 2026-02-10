(ns sirqul-io-t-platform.specs.theme-descriptor-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def theme-descriptor-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :themeDescriptorId) int?
   (ds/opt :returning) string?
   })

(def theme-descriptor-response-spec
  (ds/spec
    {:name ::theme-descriptor-response
     :spec theme-descriptor-response-data}))
