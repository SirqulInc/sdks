(ns sirqul-io-t-platform.specs.orson-ai-add-movie-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def orson-ai-add-movie-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :id) string?
   (ds/opt :hasBeenIndexed) boolean?
   })

(def orson-ai-add-movie-response-spec
  (ds/spec
    {:name ::orson-ai-add-movie-response
     :spec orson-ai-add-movie-response-data}))
