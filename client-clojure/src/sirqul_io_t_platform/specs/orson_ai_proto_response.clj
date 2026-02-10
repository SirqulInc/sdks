(ns sirqul-io-t-platform.specs.orson-ai-proto-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def orson-ai-proto-response-data
  {
   (ds/opt :rawResponse) string?
   (ds/opt :assetResponse) asset-short-response-spec
   })

(def orson-ai-proto-response-spec
  (ds/spec
    {:name ::orson-ai-proto-response
     :spec orson-ai-proto-response-data}))
