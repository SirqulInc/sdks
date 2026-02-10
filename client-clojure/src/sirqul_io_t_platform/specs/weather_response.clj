(ns sirqul-io-t-platform.specs.weather-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.weather-forecast-response :refer :all]
            )
  (:import (java.io File)))


(def weather-response-data
  {
   (ds/opt :id) int?
   (ds/opt :cloudcover) int?
   (ds/opt :humidity) int?
   (ds/opt :observationTime) int?
   (ds/opt :precipMM) float?
   (ds/opt :pressure) int?
   (ds/opt :temp_C) int?
   (ds/opt :temp_F) int?
   (ds/opt :visibility) int?
   (ds/opt :weatherCode) int?
   (ds/opt :weatherDesc) string?
   (ds/opt :weatherIconUrl) string?
   (ds/opt :winddir16Point) string?
   (ds/opt :winddirDegree) int?
   (ds/opt :windspeedKmph) int?
   (ds/opt :windspeedMiles) int?
   (ds/opt :forecasts) (s/coll-of weather-forecast-response-spec)
   })

(def weather-response-spec
  (ds/spec
    {:name ::weather-response
     :spec weather-response-data}))
