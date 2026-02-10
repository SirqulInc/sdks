(ns sirqul-io-t-platform.specs.import-statuses
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.shipment-import-status :refer :all]
            )
  (:import (java.io File)))


(def import-statuses-data
  {
   (ds/opt :statuses) (s/coll-of shipment-import-status-spec)
   })

(def import-statuses-spec
  (ds/spec
    {:name ::import-statuses
     :spec import-statuses-data}))
