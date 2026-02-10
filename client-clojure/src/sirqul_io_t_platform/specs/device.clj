(ns sirqul-io-t-platform.specs.device
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def device-data
  {
   (ds/opt :rebootTimeHour) int?
   (ds/opt :rebootTimeMinute) int?
   (ds/opt :idleTimeoutInSecond) int?
   (ds/opt :serialNumber) string?
   (ds/opt :udid) string?
   (ds/opt :deviceType) string?
   (ds/opt :devicePower) float?
   (ds/opt :deviceInterference) float?
   (ds/opt :lastHeartbeatSent) inst?
   (ds/opt :lastDown) inst?
   (ds/opt :lastUp) inst?
   (ds/opt :lastNotificationSent) inst?
   (ds/opt :health) string?
   })

(def device-spec
  (ds/spec
    {:name ::device
     :spec device-data}))
