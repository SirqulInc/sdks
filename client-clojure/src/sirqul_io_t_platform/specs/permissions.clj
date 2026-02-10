(ns sirqul-io-t-platform.specs.permissions
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def permissions-data
  {
   (ds/opt :read) boolean?
   (ds/opt :write) boolean?
   (ds/opt :delete) boolean?
   (ds/opt :add) boolean?
   })

(def permissions-spec
  (ds/spec
    {:name ::permissions
     :spec permissions-data}))
