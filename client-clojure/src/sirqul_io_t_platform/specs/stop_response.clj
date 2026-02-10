(ns sirqul-io-t-platform.specs.stop-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.load-short-response :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            )
  (:import (java.io File)))


(def stop-response-data
  {
   (ds/opt :geoId) string?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :startWindow) int?
   (ds/opt :endWindow) int?
   (ds/opt :type) string?
   (ds/opt :eta) int?
   (ds/opt :etd) int?
   (ds/opt :score) int?
   (ds/opt :errorCode) string?
   (ds/opt :error) string?
   (ds/opt :itemId) string?
   (ds/opt :itemSize) int?
   (ds/opt :load) load-short-response-spec
   (ds/opt :floorPlanPath) (s/coll-of node-request-spec)
   (ds/opt :valid) boolean?
   })

(def stop-response-spec
  (ds/spec
    {:name ::stop-response
     :spec stop-response-data}))
