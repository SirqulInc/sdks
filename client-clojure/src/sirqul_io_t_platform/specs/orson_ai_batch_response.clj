(ns sirqul-io-t-platform.specs.orson-ai-batch-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.orson-ai-batch-transcript-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-batch-topics-response :refer :all]
            [sirqul-io-t-platform.specs.orson-ai-batch-emotions-response :refer :all]
            )
  (:import (java.io File)))


(def orson-ai-batch-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :transcript) orson-ai-batch-transcript-response-spec
   (ds/opt :topics) orson-ai-batch-topics-response-spec
   (ds/opt :emotions) orson-ai-batch-emotions-response-spec
   })

(def orson-ai-batch-response-spec
  (ds/spec
    {:name ::orson-ai-batch-response
     :spec orson-ai-batch-response-data}))
