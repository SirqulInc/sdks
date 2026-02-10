(ns sirqul-io-t-platform.specs.orson-ai-batch-emotions-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.orson-ai-emotions-response :refer :all]
            )
  (:import (java.io File)))


(def orson-ai-batch-emotions-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :status) string?
   (ds/opt :error) string?
   (ds/opt :result) orson-ai-emotions-response-spec
   })

(def orson-ai-batch-emotions-response-spec
  (ds/spec
    {:name ::orson-ai-batch-emotions-response
     :spec orson-ai-batch-emotions-response-data}))
