(ns sirqul-io-t-platform.specs.postal-code
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.region :refer :all]
            )
  (:import (java.io File)))


(def postal-code-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :code) string?
   (ds/opt :plus4) string?
   (ds/opt :stateCode) string?
   (ds/opt :city) string?
   (ds/opt :timeZone) string?
   (ds/opt :utcOffset) int?
   (ds/opt :regions) (s/coll-of region-spec)
   (ds/opt :eliminated) boolean?
   (ds/opt :searchPoint) boolean?
   (ds/opt :lastOfferImport) inst?
   (ds/opt :truncatedLatitude) float?
   (ds/opt :truncatedLongitude) float?
   })

(def postal-code-spec
  (ds/spec
    {:name ::postal-code
     :spec postal-code-data}))
