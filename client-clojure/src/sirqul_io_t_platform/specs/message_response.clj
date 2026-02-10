(ns sirqul-io-t-platform.specs.message-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def message-response-data
  {
   (ds/opt :message) string?
   (ds/opt :code) int?
   (ds/opt :ids) string?
   (ds/opt :updateValue) string?
   })

(def message-response-spec
  (ds/spec
    {:name ::message-response
     :spec message-response-data}))
