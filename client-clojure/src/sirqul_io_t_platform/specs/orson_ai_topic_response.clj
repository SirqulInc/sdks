(ns sirqul-io-t-platform.specs.orson-ai-topic-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def orson-ai-topic-response-data
  {
   (ds/opt :word) string?
   (ds/opt :score) float?
   })

(def orson-ai-topic-response-spec
  (ds/spec
    {:name ::orson-ai-topic-response
     :spec orson-ai-topic-response-data}))
