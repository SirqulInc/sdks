(ns sirqul-io-t-platform.specs.object-store-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.json-object :refer :all]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def object-store-response-data
  {
   (ds/opt :jsonObject) json-object-spec
   (ds/opt :request) (s/coll-of name-string-value-response-spec)
   })

(def object-store-response-spec
  (ds/spec
    {:name ::object-store-response
     :spec object-store-response-data}))
