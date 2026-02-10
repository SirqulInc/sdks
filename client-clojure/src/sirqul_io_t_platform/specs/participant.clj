(ns sirqul-io-t-platform.specs.participant
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def participant-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :account) account-spec
   (ds/opt :availableStart) inst?
   (ds/opt :availableEnd) inst?
   (ds/opt :color1) string?
   (ds/opt :color2) string?
   (ds/opt :type) string?
   })

(def participant-spec
  (ds/spec
    {:name ::participant
     :spec participant-data}))
