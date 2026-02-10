(ns sirqul-io-t-platform.specs.listing-full-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.participant-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.filter-response :refer :all]
            )
  (:import (java.io File)))


(def listing-full-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :start) int?
   (ds/opt :end) int?
   (ds/opt :locationName) string?
   (ds/opt :locationDescription) string?
   (ds/opt :privateListing) boolean?
   (ds/opt :active) boolean?
   (ds/opt :participants) (s/coll-of participant-response-spec)
   (ds/opt :owner) account-short-response-spec
   (ds/opt :filters) (s/coll-of filter-response-spec)
   })

(def listing-full-response-spec
  (ds/spec
    {:name ::listing-full-response
     :spec listing-full-response-data}))
