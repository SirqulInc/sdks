(ns sirqul-io-t-platform.specs.geo-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def geo-response-data
  {
   (ds/opt :geoId) string?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   })

(def geo-response-spec
  (ds/spec
    {:name ::geo-response
     :spec geo-response-data}))
