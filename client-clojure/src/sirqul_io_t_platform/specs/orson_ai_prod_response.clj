(ns sirqul-io-t-platform.specs.orson-ai-prod-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def orson-ai-prod-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   })

(def orson-ai-prod-response-spec
  (ds/spec
    {:name ::orson-ai-prod-response
     :spec orson-ai-prod-response-data}))
