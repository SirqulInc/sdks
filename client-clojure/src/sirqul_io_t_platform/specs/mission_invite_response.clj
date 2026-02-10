(ns sirqul-io-t-platform.specs.mission-invite-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def mission-invite-response-data
  {
   (ds/opt :id) int?
   (ds/opt :status) string?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :owner) account-short-response-spec
   (ds/opt :permissionableId) int?
   (ds/opt :permissionableType) string?
   (ds/opt :ranked) boolean?
   (ds/opt :rewarded) boolean?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :updated) int?
   (ds/opt :buyBackAvailable) boolean?
   (ds/opt :inviteStatus) string?
   })

(def mission-invite-response-spec
  (ds/spec
    {:name ::mission-invite-response
     :spec mission-invite-response-data}))
