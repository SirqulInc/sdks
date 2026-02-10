(ns sirqul-io-t-platform.specs.coords-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def coords-response-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :country) string?
   (ds/opt :countryCode) string?
   (ds/opt :region) string?
   (ds/opt :city) string?
   (ds/opt :postalCode) string?
   (ds/opt :regionCode) string?
   (ds/opt :returning) string?
   })

(def coords-response-spec
  (ds/spec
    {:name ::coords-response
     :spec coords-response-data}))
