(ns sirqul-io-t-platform.specs.employee-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.contact-response :refer :all]
            [sirqul-io-t-platform.specs.account-mini-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-location-short-response :refer :all]
            )
  (:import (java.io File)))


(def employee-response-data
  {
   (ds/opt :accountId) int?
   (ds/opt :locationDisplay) string?
   (ds/opt :display) string?
   (ds/opt :username) string?
   (ds/opt :accountType) string?
   (ds/opt :profileImage) string?
   (ds/opt :gender) string?
   (ds/opt :contactEmail) string?
   (ds/opt :contact) contact-response-spec
   (ds/opt :manager) account-mini-response-spec
   (ds/opt :active) boolean?
   (ds/opt :locations) (s/coll-of retailer-location-short-response-spec)
   (ds/opt :hasDelegateAccess) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationLastUpdated) int?
   (ds/opt :locationCount) int?
   })

(def employee-response-spec
  (ds/spec
    {:name ::employee-response
     :spec employee-response-data}))
