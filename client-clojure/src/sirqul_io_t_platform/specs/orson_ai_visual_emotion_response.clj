(ns sirqul-io-t-platform.specs.orson-ai-visual-emotion-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def orson-ai-visual-emotion-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :userIndex) int?
   (ds/opt :emotion) string?
   (ds/opt :probability) float?
   })

(def orson-ai-visual-emotion-response-spec
  (ds/spec
    {:name ::orson-ai-visual-emotion-response
     :spec orson-ai-visual-emotion-response-data}))
