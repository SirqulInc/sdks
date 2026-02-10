(ns sirqul-io-t-platform.specs.orson-ai-tts-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def orson-ai-tts-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :asset) asset-short-response-spec
   })

(def orson-ai-tts-response-spec
  (ds/spec
    {:name ::orson-ai-tts-response
     :spec orson-ai-tts-response-data}))
