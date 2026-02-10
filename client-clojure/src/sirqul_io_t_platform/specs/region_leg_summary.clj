(ns sirqul-io-t-platform.specs.region-leg-summary
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def region-leg-summary-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :regionId) int?
   (ds/opt :floorId) string?
   (ds/opt :retailerLocationId) int?
   (ds/opt :legId) int?
   })

(def region-leg-summary-spec
  (ds/spec
    {:name ::region-leg-summary
     :spec region-leg-summary-data}))
