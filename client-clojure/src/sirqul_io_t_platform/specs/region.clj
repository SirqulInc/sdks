(ns sirqul-io-t-platform.specs.region
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.geo-box :refer :all]
            [sirqul-io-t-platform.specs.region :refer :all]
            [sirqul-io-t-platform.specs.region :refer :all]
            [sirqul-io-t-platform.specs.postal-code :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.filter :refer :all]
            )
  (:import (java.io File)))


(def region-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :owner) account-spec
   (ds/opt :shortName) string?
   (ds/opt :fullName) string?
   (ds/opt :bounds) geo-box-spec
   (ds/opt :start) inst?
   (ds/opt :end) inst?
   (ds/opt :polygon) string?
   (ds/opt :metaData) string?
   (ds/opt :children) (s/coll-of region-spec)
   (ds/opt :parents) (s/coll-of region-spec)
   (ds/opt :postalCodes) (s/coll-of postal-code-spec)
   (ds/opt :regionClass) string?
   (ds/opt :root) boolean?
   (ds/opt :webActive) boolean?
   (ds/opt :adminActive) boolean?
   (ds/opt :visibility) string?
   (ds/opt :categories) (s/coll-of category-spec)
   (ds/opt :filters) (s/coll-of filter-spec)
   (ds/opt :truncatedLatitude) float?
   (ds/opt :truncatedLongitude) float?
   (ds/opt :versionCode) int?
   (ds/opt :display) string?
   (ds/opt :contentName) string?
   })

(def region-spec
  (ds/spec
    {:name ::region
     :spec region-data}))
