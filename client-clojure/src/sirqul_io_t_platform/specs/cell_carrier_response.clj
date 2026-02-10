(ns sirqul-io-t-platform.specs.cell-carrier-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cell-carrier-response-data
  {
   (ds/opt :id) int?
   (ds/opt :uid) string?
   (ds/opt :display) string?
   })

(def cell-carrier-response-spec
  (ds/spec
    {:name ::cell-carrier-response
     :spec cell-carrier-response-data}))
