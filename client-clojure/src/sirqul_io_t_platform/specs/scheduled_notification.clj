(ns sirqul-io-t-platform.specs.scheduled-notification
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.billable-entity :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.connection-group :refer :all]
            [sirqul-io-t-platform.specs.audience :refer :all]
            [sirqul-io-t-platform.specs.report-definition :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            [sirqul-io-t-platform.specs.user-permissions :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            )
  (:import (java.io File)))


(def scheduled-notification-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :billableEntity) billable-entity-spec
   (ds/opt :type) string?
   (ds/opt :status) string?
   (ds/opt :templateType) string?
   (ds/opt :name) string?
   (ds/opt :errorMessage) string?
   (ds/opt :message) string?
   (ds/opt :payload) string?
   (ds/opt :contentName) string?
   (ds/opt :contentId) int?
   (ds/opt :contentType) string?
   (ds/opt :parentId) int?
   (ds/opt :parentType) string?
   (ds/opt :application) application-spec
   (ds/opt :connectionGroups) (s/coll-of connection-group-spec)
   (ds/opt :accountIds) (s/coll-of int?)
   (ds/opt :audiences) (s/coll-of audience-spec)
   (ds/opt :report) report-definition-spec
   (ds/opt :reportParams) string?
   (ds/opt :endpointURL) string?
   (ds/opt :lastActionDate) inst?
   (ds/opt :scheduledDate) inst?
   (ds/opt :startDate) inst?
   (ds/opt :endDate) inst?
   (ds/opt :cronExpression) string?
   (ds/opt :deliverEstimate) int?
   (ds/opt :deliverCount) int?
   (ds/opt :deliverFailed) int?
   (ds/opt :deliverTotal) int?
   (ds/opt :deliverStart) int?
   (ds/opt :deliverLimit) int?
   (ds/opt :processingTime) int?
   (ds/opt :sendingTime) int?
   (ds/opt :groupingId) string?
   (ds/opt :conditionalInput) string?
   (ds/opt :conditionalCode) string?
   (ds/opt :publicPermissions) permissions-spec
   (ds/opt :userPermissions) (s/coll-of user-permissions-spec)
   (ds/opt :visibility) string?
   (ds/opt :approvalStatus) string?
   (ds/opt :contentAsset) asset-spec
   })

(def scheduled-notification-spec
  (ds/spec
    {:name ::scheduled-notification
     :spec scheduled-notification-data}))
