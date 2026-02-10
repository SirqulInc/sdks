(ns sirqul-io-t-platform.specs.orson-episode-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.orson-render-response :refer :all]
            )
  (:import (java.io File)))


(def orson-episode-response-data
  {
   (ds/opt :id) string?
   (ds/opt :status) string?
   (ds/opt :statusDescription) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :renders) (s/coll-of orson-render-response-spec)
   })

(def orson-episode-response-spec
  (ds/spec
    {:name ::orson-episode-response
     :spec orson-episode-response-data}))
