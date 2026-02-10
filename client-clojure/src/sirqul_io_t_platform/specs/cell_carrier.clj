(ns sirqul-io-t-platform.specs.cell-carrier
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cell-carrier-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :uid) string?
   (ds/opt :display) string?
   (ds/opt :emailFormat) string?
   (ds/opt :apiUrl) string?
   (ds/opt :authUrl) string?
   (ds/opt :shortCode) string?
   (ds/opt :clientId) string?
   (ds/opt :clientSecret) string?
   })

(def cell-carrier-spec
  (ds/spec
    {:name ::cell-carrier
     :spec cell-carrier-data}))
