(ns sirqul-io-t-platform.specs.audience-target-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.retailer-location :refer :all]
            [sirqul-io-t-platform.specs.offer-location :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.region :refer :all]
            )
  (:import (java.io File)))


(def audience-target-type-data
  {
   (ds/opt :targetType) string?
   (ds/opt :targetDescription) string?
   (ds/opt :retailerLocation) retailer-location-spec
   (ds/opt :offerLocation) offer-location-spec
   (ds/opt :account) account-spec
   (ds/opt :region) region-spec
   })

(def audience-target-type-spec
  (ds/spec
    {:name ::audience-target-type
     :spec audience-target-type-data}))
