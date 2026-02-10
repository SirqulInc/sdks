(ns sirqul-io-t-platform.specs.url-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def url-response-data
  {
   (ds/opt :url) string?
   (ds/opt :asset) asset-short-response-spec
   })

(def url-response-spec
  (ds/spec
    {:name ::url-response
     :spec url-response-data}))
