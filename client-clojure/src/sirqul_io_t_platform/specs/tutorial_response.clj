(ns sirqul-io-t-platform.specs.tutorial-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def tutorial-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :alignment) string?
   (ds/opt :image) asset-short-response-spec
   (ds/opt :orderIndex) int?
   (ds/opt :objectType) string?
   (ds/opt :returning) string?
   })

(def tutorial-response-spec
  (ds/spec
    {:name ::tutorial-response
     :spec tutorial-response-data}))
