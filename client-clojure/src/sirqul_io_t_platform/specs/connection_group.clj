(ns sirqul-io-t-platform.specs.connection-group
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.connection :refer :all]
            [sirqul-io-t-platform.specs.group-permissions :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.connection-group :refer :all]
            )
  (:import (java.io File)))


(def connection-group-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :connections) (s/coll-of connection-spec)
   (ds/opt :permissions) group-permissions-spec
   (ds/opt :image) asset-spec
   (ds/opt :subGroups) (s/coll-of connection-group-spec)
   })

(def connection-group-spec
  (ds/spec
    {:name ::connection-group
     :spec connection-group-data}))
