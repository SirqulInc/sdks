(ns sirqul-io-t-platform.specs.pathing-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            [sirqul-io-t-platform.specs.direction-response :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            [sirqul-io-t-platform.specs.node-request :refer :all]
            )
  (:import (java.io File)))


(def pathing-response-data
  {
   (ds/opt :start) node-request-spec
   (ds/opt :end) node-request-spec
   (ds/opt :waypoints) (s/coll-of node-request-spec)
   (ds/opt :exclusions) (s/coll-of node-request-spec)
   (ds/opt :width) int?
   (ds/opt :height) int?
   (ds/opt :southwest) node-request-spec
   (ds/opt :northeast) node-request-spec
   (ds/opt :metersPerX) float?
   (ds/opt :metersPerY) float?
   (ds/opt :path) (s/coll-of node-request-spec)
   (ds/opt :pathCount) int?
   (ds/opt :directions) (s/coll-of direction-response-spec)
   (ds/opt :directionCount) int?
   (ds/opt :swcalibration) node-request-spec
   (ds/opt :calibrationBearings) float?
   (ds/opt :necalibration) node-request-spec
   })

(def pathing-response-spec
  (ds/spec
    {:name ::pathing-response
     :spec pathing-response-data}))
