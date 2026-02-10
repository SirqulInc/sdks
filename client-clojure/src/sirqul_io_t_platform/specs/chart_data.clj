(ns sirqul-io-t-platform.specs.chart-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def chart-data-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :message) string?
   (ds/opt :version) float?
   (ds/opt :serializeNulls) boolean?
   (ds/opt :startTimeLog) int?
   (ds/opt :errorCode) string?
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   (ds/opt :identifier) string?
   (ds/opt :idAttribute) string?
   (ds/opt :label) string?
   (ds/opt :maxValue) int?
   (ds/opt :totalCount) int?
   (ds/opt :items) (s/coll-of any?)
   (ds/opt :aggregatedItems) (s/coll-of any?)
   (ds/opt :caption) string?
   (ds/opt :showAnchor) string?
   (ds/opt :anchorAlpha) string?
   (ds/opt :getxAxisName) string?
   (ds/opt :getyAxisMinValue) string?
   (ds/opt :getyAxisName) string?
   (ds/opt :decimalPrecision) string?
   (ds/opt :formatNumberScale) string?
   (ds/opt :numberPrefix) string?
   (ds/opt :showNames) string?
   (ds/opt :showValues) string?
   (ds/opt :showAlternateHGridColor) string?
   (ds/opt :alternateHGridColor) string?
   (ds/opt :divLineColor) string?
   (ds/opt :divLineAlpha) string?
   (ds/opt :alternateHGridAlpha) string?
   (ds/opt :rotateNames) string?
   (ds/opt :returning) string?
   })

(def chart-data-spec
  (ds/spec
    {:name ::chart-data
     :spec chart-data-data}))
