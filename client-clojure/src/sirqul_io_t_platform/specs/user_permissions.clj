(ns sirqul-io-t-platform.specs.user-permissions
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.connection-group :refer :all]
            [sirqul-io-t-platform.specs.connection :refer :all]
            [sirqul-io-t-platform.specs.permissions :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def user-permissions-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :permissionableType) string?
   (ds/opt :permissionableId) int?
   (ds/opt :connectionGroup) connection-group-spec
   (ds/opt :friendGroup) boolean?
   (ds/opt :connection) connection-spec
   (ds/opt :permissions) permissions-spec
   (ds/opt :exclude) boolean?
   (ds/opt :blocked) boolean?
   (ds/opt :owner) account-spec
   })

(def user-permissions-spec
  (ds/spec
    {:name ::user-permissions
     :spec user-permissions-data}))
