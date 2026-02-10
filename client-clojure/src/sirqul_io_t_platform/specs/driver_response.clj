(ns sirqul-io-t-platform.specs.driver-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.location-response :refer :all]
            [sirqul-io-t-platform.specs.availability-response :refer :all]
            )
  (:import (java.io File)))


(def driver-response-data
  {
   (ds/opt :id) string?
   (ds/opt :name) string?
   (ds/opt :depot) location-response-spec
   (ds/opt :availability) (s/coll-of availability-response-spec)
   })

(def driver-response-spec
  (ds/spec
    {:name ::driver-response
     :spec driver-response-data}))
