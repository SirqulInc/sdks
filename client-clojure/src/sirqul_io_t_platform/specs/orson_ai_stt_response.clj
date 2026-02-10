(ns sirqul-io-t-platform.specs.orson-ai-stt-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def orson-ai-stt-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :text) string?
   })

(def orson-ai-stt-response-spec
  (ds/spec
    {:name ::orson-ai-stt-response
     :spec orson-ai-stt-response-data}))
