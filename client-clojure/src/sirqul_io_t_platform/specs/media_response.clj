(ns sirqul-io-t-platform.specs.media-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def media-response-data
  {
   (ds/opt :mediaType) string?
   (ds/opt :duration) int?
   (ds/opt :author) string?
   (ds/opt :releaseDate) int?
   })

(def media-response-spec
  (ds/spec
    {:name ::media-response
     :spec media-response-data}))
