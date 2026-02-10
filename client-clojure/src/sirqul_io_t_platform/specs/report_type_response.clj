(ns sirqul-io-t-platform.specs.report-type-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def report-type-response-data
  {
   (ds/opt :type) string?
   (ds/opt :javaType) string?
   (ds/opt :label) string?
   (ds/opt :number) boolean?
   (ds/opt :majorAxis) boolean?
   })

(def report-type-response-spec
  (ds/spec
    {:name ::report-type-response
     :spec report-type-response-data}))
