(ns sirqul-io-t-platform.specs.group-permissions
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def group-permissions-data
  {
   (ds/opt :canViewProfileInfo) boolean?
   (ds/opt :canViewGameInfo) boolean?
   (ds/opt :canViewFriendInfo) boolean?
   })

(def group-permissions-spec
  (ds/spec
    {:name ::group-permissions
     :spec group-permissions-data}))
