(ns sirqul-io-t-platform.specs.orson-video-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def orson-video-response-data
  {
   (ds/opt :uri) string?
   (ds/opt :expires) string?
   })

(def orson-video-response-spec
  (ds/spec
    {:name ::orson-video-response
     :spec orson-video-response-data}))
