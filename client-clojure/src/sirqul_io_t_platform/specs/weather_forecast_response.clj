(ns sirqul-io-t-platform.specs.weather-forecast-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def weather-forecast-response-data
  {
   (ds/opt :id) int?
   (ds/opt :forecastDate) int?
   (ds/opt :precipMM) float?
   (ds/opt :tempMaxC) int?
   (ds/opt :tempMaxF) int?
   (ds/opt :tempMinC) int?
   (ds/opt :tempMinF) int?
   (ds/opt :weatherCode) int?
   (ds/opt :weatherDesc) string?
   (ds/opt :weatherIconUrl) string?
   (ds/opt :winddir16Point) string?
   (ds/opt :winddirDegree) int?
   (ds/opt :winddirection) string?
   (ds/opt :windspeedKmph) int?
   (ds/opt :windspeedMiles) int?
   })

(def weather-forecast-response-spec
  (ds/spec
    {:name ::weather-forecast-response
     :spec weather-forecast-response-data}))
