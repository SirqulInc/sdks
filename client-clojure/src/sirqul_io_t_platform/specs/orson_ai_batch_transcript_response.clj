(ns sirqul-io-t-platform.specs.orson-ai-batch-transcript-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def orson-ai-batch-transcript-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :status) string?
   (ds/opt :error) string?
   (ds/opt :result) string?
   })

(def orson-ai-batch-transcript-response-spec
  (ds/spec
    {:name ::orson-ai-batch-transcript-response
     :spec orson-ai-batch-transcript-response-data}))
