(ns sirqul-io-t-platform.specs.notification-settings-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def notification-settings-response-data
  {
   (ds/opt :blockedNotifications) (s/coll-of string?)
   })

(def notification-settings-response-spec
  (ds/spec
    {:name ::notification-settings-response
     :spec notification-settings-response-data}))
