(ns sirqul-io-t-platform.specs.shipment-order
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.order-package :refer :all]
            )
  (:import (java.io File)))


(def shipment-order-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :BatchID) int?
   (ds/opt :BatchSize) int?
   (ds/opt :OrderTrackingID) float?
   (ds/opt :ClientRefNo) string?
   (ds/opt :ClientRefNo2) string?
   (ds/opt :HubCode) string?
   (ds/opt :AccountNo) string?
   (ds/opt :CompanyName) string?
   (ds/opt :VehicleTypeName) string?
   (ds/opt :ServiceTypeName) string?
   (ds/opt :ServiceCode) string?
   (ds/opt :Pieces) int?
   (ds/opt :Weight) float?
   (ds/opt :CubicFeet) float?
   (ds/opt :PickupCompany) string?
   (ds/opt :PickupContact) string?
   (ds/opt :PickupPhone) string?
   (ds/opt :PickupStreet) string?
   (ds/opt :PickupStreet2) string?
   (ds/opt :PickupCity) string?
   (ds/opt :PickupState) string?
   (ds/opt :PickupZip) string?
   (ds/opt :PickupTargetFrom) inst?
   (ds/opt :PickupTargetTo) inst?
   (ds/opt :DeliveryCompany) string?
   (ds/opt :DeliveryContact) string?
   (ds/opt :DeliveryPhone) string?
   (ds/opt :DeliveryStreet) string?
   (ds/opt :DeliveryStreet2) string?
   (ds/opt :DeliveryCity) string?
   (ds/opt :DeliveryState) string?
   (ds/opt :DeliveryZip) string?
   (ds/opt :DeliveryTargetFrom) inst?
   (ds/opt :DeliveryTargetTo) inst?
   (ds/opt :OrderPackages) (s/coll-of order-package-spec)
   (ds/opt :RouteID) int?
   (ds/opt :DriverID) int?
   (ds/opt :PickupSequenceNo) int?
   (ds/opt :DeliverySequenceNo) int?
   (ds/opt :PickupETA) string?
   (ds/opt :DeliveryETA) string?
   })

(def shipment-order-spec
  (ds/spec
    {:name ::shipment-order
     :spec shipment-order-data}))
