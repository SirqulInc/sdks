(ns sirqul-io-t-platform.specs.retailer-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.contact-info-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def retailer-short-response-data
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
   })

(def retailer-short-response-spec
  (ds/spec
    {:name ::retailer-short-response
     :spec retailer-short-response-data}))
