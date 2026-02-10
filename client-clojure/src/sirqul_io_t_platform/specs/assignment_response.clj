(ns sirqul-io-t-platform.specs.assignment-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-location-short-response :refer :all]
            [sirqul-io-t-platform.specs.assignment-status-response :refer :all]
            )
  (:import (java.io File)))


(def assignment-response-data
  {
   (ds/opt :assignmentId) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :active) boolean?
   (ds/opt :created) int?
   (ds/opt :updated) int?
   (ds/opt :assignee) account-short-response-spec
   (ds/opt :creator) account-short-response-spec
   (ds/opt :lastReportedBy) account-short-response-spec
   (ds/opt :location) retailer-location-short-response-spec
   (ds/opt :currentStatus) assignment-status-response-spec
   (ds/opt :currentStatusType) string?
   })

(def assignment-response-spec
  (ds/spec
    {:name ::assignment-response
     :spec assignment-response-data}))
