(ns sirqul-io-t-platform.specs.vehicle-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.geo-response :refer :all]
            [sirqul-io-t-platform.specs.geo-response :refer :all]
            [sirqul-io-t-platform.specs.stop-response :refer :all]
            )
  (:import (java.io File)))


(def vehicle-response-data
  {
   (ds/opt :id) string?
   (ds/opt :name) string?
   (ds/opt :capacity) int?
   (ds/opt :depot) geo-response-spec
   (ds/opt :startWindow) int?
   (ds/opt :endWindow) int?
   (ds/opt :current) geo-response-spec
   (ds/opt :depotAsStop) stop-response-spec
   })

(def vehicle-response-spec
  (ds/spec
    {:name ::vehicle-response
     :spec vehicle-response-data}))
