(ns sirqul-io-t-platform.specs.ticket-count-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ticket-count-response-data
  {
   (ds/opt :count) int?
   (ds/opt :type) string?
   })

(def ticket-count-response-spec
  (ds/spec
    {:name ::ticket-count-response
     :spec ticket-count-response-data}))
