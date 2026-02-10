(ns sirqul-io-t-platform.specs.retailer-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.contact-info-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.profile-short-response :refer :all]
            [sirqul-io-t-platform.specs.profile-short-response :refer :all]
            [sirqul-io-t-platform.specs.billable-entity-response :refer :all]
            [sirqul-io-t-platform.specs.retailer-count-response :refer :all]
            )
  (:import (java.io File)))


(def retailer-response-data
  {
   (ds/opt :retailerId) int?
   (ds/opt :name) string?
   (ds/opt :facebookUrl) string?
   (ds/opt :twitterUrl) string?
   (ds/opt :active) boolean?
   (ds/opt :contact) contact-info-response-spec
   (ds/opt :logo) asset-short-response-spec
   (ds/opt :picture1) asset-short-response-spec
   (ds/opt :picture2) asset-short-response-spec
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :visibility) string?
   (ds/opt :responsible) profile-short-response-spec
   (ds/opt :manager) profile-short-response-spec
   (ds/opt :billableEntity) billable-entity-response-spec
   (ds/opt :counts) retailer-count-response-spec
   })

(def retailer-response-spec
  (ds/spec
    {:name ::retailer-response
     :spec retailer-response-data}))
