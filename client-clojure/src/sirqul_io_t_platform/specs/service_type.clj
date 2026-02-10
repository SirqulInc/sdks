(ns sirqul-io-t-platform.specs.service-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.retailer :refer :all]
            [sirqul-io-t-platform.specs.service-hub :refer :all]
            [sirqul-io-t-platform.specs.address :refer :all]
            [sirqul-io-t-platform.specs.address :refer :all]
            [sirqul-io-t-platform.specs.local-time :refer :all]
            [sirqul-io-t-platform.specs.local-time :refer :all]
            [sirqul-io-t-platform.specs.local-time :refer :all]
            [sirqul-io-t-platform.specs.local-time :refer :all]
            )
  (:import (java.io File)))


(def service-type-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :business) retailer-spec
   (ds/opt :hub) service-hub-spec
   (ds/opt :name) string?
   (ds/opt :additionalLoadTime) int?
   (ds/opt :pickupAddressOverride) address-spec
   (ds/opt :dropoffAddressOverride) address-spec
   (ds/opt :pickupStartTimeOverride) local-time-spec
   (ds/opt :pickupEndTimeOverride) local-time-spec
   (ds/opt :dropoffStartTimeOverride) local-time-spec
   (ds/opt :dropoffEndTimeOverride) local-time-spec
   (ds/opt :dateOverride) string?
   })

(def service-type-spec
  (ds/spec
    {:name ::service-type
     :spec service-type-data}))
