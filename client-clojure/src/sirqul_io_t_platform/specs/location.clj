(ns sirqul-io-t-platform.specs.location
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.territory :refer :all]
            [sirqul-io-t-platform.specs.service-hub :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.cell-carrier :refer :all]
            [sirqul-io-t-platform.specs.address :refer :all]
            [sirqul-io-t-platform.specs.program :refer :all]
            [sirqul-io-t-platform.specs.yay-or-nay :refer :all]
            )
  (:import (java.io File)))


(def location-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :name) string?
   (ds/opt :territory) territory-spec
   (ds/opt :hub) service-hub-spec
   (ds/opt :picture) asset-spec
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :noteCount) int?
   (ds/opt :homePhone) string?
   (ds/opt :cellPhone) string?
   (ds/opt :cellCarrier) cell-carrier-spec
   (ds/opt :businessPhone) string?
   (ds/opt :businessPhoneExt) string?
   (ds/opt :faxNumber) string?
   (ds/opt :timeZone) string?
   (ds/opt :utcOffset) string?
   (ds/opt :code501c3) string?
   (ds/opt :emailAddress) string?
   (ds/opt :address) address-spec
   (ds/opt :web) string?
   (ds/opt :program) program-spec
   (ds/opt :visibility) string?
   (ds/opt :groupingId) string?
   (ds/opt :destination) boolean?
   (ds/opt :dockingTime) int?
   (ds/opt :usageCount) int?
   (ds/opt :timeFramesAllowed) string?
   (ds/opt :likes) (s/coll-of yay-or-nay-spec)
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :ownerDisplay) string?
   (ds/opt :contentName) string?
   })

(def location-spec
  (ds/spec
    {:name ::location
     :spec location-data}))
