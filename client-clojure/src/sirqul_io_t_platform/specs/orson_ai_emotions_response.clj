(ns sirqul-io-t-platform.specs.orson-ai-emotions-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.orson-ai-visual-emotion-response :refer :all]
            )
  (:import (java.io File)))


(def orson-ai-emotions-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :status) string?
   (ds/opt :error) string?
   (ds/opt :audioEmotions) (s/coll-of string?)
   (ds/opt :visualEmotions) (s/coll-of orson-ai-visual-emotion-response-spec)
   })

(def orson-ai-emotions-response-spec
  (ds/spec
    {:name ::orson-ai-emotions-response
     :spec orson-ai-emotions-response-data}))
