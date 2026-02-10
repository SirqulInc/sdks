(ns sirqul-io-t-platform.specs.orson-ai-voice-canvas-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def orson-ai-voice-canvas-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :filenames) (s/coll-of string?)
   })

(def orson-ai-voice-canvas-response-spec
  (ds/spec
    {:name ::orson-ai-voice-canvas-response
     :spec orson-ai-voice-canvas-response-data}))
