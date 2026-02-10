(ns sirqul-io-t-platform.specs.mission-format-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def mission-format-response-data
  {
   (ds/opt :missionFormatId) int?
   (ds/opt :formatType) string?
   (ds/opt :active) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :format) string?
   (ds/opt :suffix) string?
   })

(def mission-format-response-spec
  (ds/spec
    {:name ::mission-format-response
     :spec mission-format-response-data}))
