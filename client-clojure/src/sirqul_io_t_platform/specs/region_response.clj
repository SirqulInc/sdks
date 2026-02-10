(ns sirqul-io-t-platform.specs.region-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.region-response :refer :all]
            [sirqul-io-t-platform.specs.region-response :refer :all]
            [sirqul-io-t-platform.specs.postal-code-response :refer :all]
            )
  (:import (java.io File)))


(def region-response-data
  {
   (ds/opt :id) int?
   (ds/opt :shortName) string?
   (ds/opt :fullName) string?
   (ds/opt :parent) region-response-spec
   (ds/opt :children) (s/coll-of region-response-spec)
   (ds/opt :postalCodes) (s/coll-of postal-code-response-spec)
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :active) boolean?
   (ds/opt :root) boolean?
   (ds/opt :regionClass) string?
   (ds/opt :start) int?
   (ds/opt :end) int?
   (ds/opt :polygon) string?
   (ds/opt :metaData) string?
   (ds/opt :distance) float?
   (ds/opt :versionCode) int?
   })

(def region-response-spec
  (ds/spec
    {:name ::region-response
     :spec region-response-data}))
