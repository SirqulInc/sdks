(ns sirqul-io-t-platform.specs.platform-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def platform-response-data
  {
   (ds/opt :deviceId) int?
   (ds/opt :active) boolean?
   (ds/opt :name) string?
   (ds/opt :display) string?
   (ds/opt :minimum) int?
   (ds/opt :maximum) int?
   (ds/opt :downloadUrl) string?
   (ds/opt :description) string?
   })

(def platform-response-spec
  (ds/spec
    {:name ::platform-response
     :spec platform-response-data}))
