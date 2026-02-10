(ns sirqul-io-t-platform.specs.application-usage-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.billable-entity-response :refer :all]
            )
  (:import (java.io File)))


(def application-usage-response-data
  {
   (ds/opt :billableEntity) billable-entity-response-spec
   (ds/opt :applicationId) int?
   (ds/opt :invoiceDate) inst?
   (ds/opt :balance) float?
   (ds/opt :totalRequests) int?
   (ds/opt :totalDataStorage) int?
   (ds/opt :totalMediaStorage) int?
   (ds/opt :totalNotifications) int?
   (ds/opt :maxMissions) int?
   (ds/opt :maxVouchers) int?
   (ds/opt :maxCoupons) int?
   (ds/opt :maxProducts) int?
   (ds/opt :maxEvents) int?
   (ds/opt :maxMedia) int?
   (ds/opt :maxLocations) int?
   })

(def application-usage-response-spec
  (ds/spec
    {:name ::application-usage-response
     :spec application-usage-response-data}))
