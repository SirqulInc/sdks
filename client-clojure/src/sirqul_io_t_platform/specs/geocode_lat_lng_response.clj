(ns sirqul-io-t-platform.specs.geocode-lat-lng-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def geocode-lat-lng-response-data
  {
   (ds/opt :lat) float?
   (ds/opt :lng) float?
   })

(def geocode-lat-lng-response-spec
  (ds/spec
    {:name ::geocode-lat-lng-response
     :spec geocode-lat-lng-response-data}))
