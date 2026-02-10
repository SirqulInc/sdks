(ns sirqul-io-t-platform.specs.orson-ai-topics-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.orson-ai-topic-response :refer :all]
            )
  (:import (java.io File)))


(def orson-ai-topics-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :topics) (s/coll-of orson-ai-topic-response-spec)
   })

(def orson-ai-topics-response-spec
  (ds/spec
    {:name ::orson-ai-topics-response
     :spec orson-ai-topics-response-data}))
