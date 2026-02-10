(ns sirqul-io-t-platform.specs.task-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.billable-entity-short-response :refer :all]
            [sirqul-io-t-platform.specs.application-mini-response :refer :all]
            )
  (:import (java.io File)))


(def task-response-data
  {
   (ds/opt :scheduledNotificationId) int?
   (ds/opt :active) boolean?
   (ds/opt :status) string?
   (ds/opt :type) string?
   (ds/opt :name) string?
   (ds/opt :message) string?
   (ds/opt :groupingId) string?
   (ds/opt :scheduledDate) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :owner) account-short-response-spec
   (ds/opt :billableEntity) billable-entity-short-response-spec
   (ds/opt :contentId) int?
   (ds/opt :contentName) string?
   (ds/opt :contentType) string?
   (ds/opt :parentId) int?
   (ds/opt :parentType) string?
   (ds/opt :application) application-mini-response-spec
   (ds/opt :targetId) int?
   (ds/opt :targetName) string?
   (ds/opt :targetType) string?
   (ds/opt :targetParams) string?
   (ds/opt :deliverEstimate) int?
   (ds/opt :deliverCount) int?
   (ds/opt :deliverTotal) int?
   (ds/opt :deliverFailed) int?
   (ds/opt :processingTime) int?
   (ds/opt :sendingTime) int?
   (ds/opt :updated) int?
   (ds/opt :created) int?
   (ds/opt :cronExpression) string?
   (ds/opt :endpointURL) string?
   (ds/opt :payload) string?
   (ds/opt :conditionalInput) string?
   (ds/opt :connectionAccountIds) (s/coll-of int?)
   (ds/opt :templateType) string?
   (ds/opt :groupedTypes) (s/coll-of string?)
   (ds/opt :taskId) int?
   })

(def task-response-spec
  (ds/spec
    {:name ::task-response
     :spec task-response-data}))
