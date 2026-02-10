(ns sirqul-io-t-platform.specs.listing
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.participant :refer :all]
            [sirqul-io-t-platform.specs.filter :refer :all]
            )
  (:import (java.io File)))


(def listing-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :start) inst?
   (ds/opt :end) inst?
   (ds/opt :locationName) string?
   (ds/opt :locationDescription) string?
   (ds/opt :participants) (s/coll-of participant-spec)
   (ds/opt :externalId) string?
   (ds/opt :externalGroupId) string?
   (ds/opt :filters) (s/coll-of filter-spec)
   (ds/opt :private) boolean?
   })

(def listing-spec
  (ds/spec
    {:name ::listing
     :spec listing-data}))
