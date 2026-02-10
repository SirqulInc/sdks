(ns sirqul-io-t-platform.specs.assignment
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.retailer-location :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.assignment-status :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            [sirqul-io-t-platform.specs.user-permissions :refer :all]
            [sirqul-io-t-platform.specs.assignment-status :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def assignment-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :assignee) account-spec
   (ds/opt :retailerLocation) retailer-location-spec
   (ds/opt :creator) account-spec
   (ds/opt :lastUpdatedBy) account-spec
   (ds/opt :currentStatus) assignment-status-spec
   (ds/opt :currentStatusType) string?
   (ds/opt :assets) (s/coll-of asset-spec)
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :publicPermissions) permissions-spec
   (ds/opt :userPermissions) (s/coll-of user-permissions-spec)
   (ds/opt :visibility) string?
   (ds/opt :statuses) (s/coll-of assignment-status-spec)
   (ds/opt :application) application-spec
   (ds/opt :approvalStatus) string?
   (ds/opt :contentName) string?
   (ds/opt :contentAsset) asset-spec
   (ds/opt :owner) account-spec
   (ds/opt :noteCount) int?
   })

(def assignment-spec
  (ds/spec
    {:name ::assignment
     :spec assignment-data}))
