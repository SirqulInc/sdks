(ns sirqul-io-t-platform.specs.participant-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-mini-response :refer :all]
            )
  (:import (java.io File)))


(def participant-response-data
  {
   (ds/opt :id) int?
   (ds/opt :account) account-mini-response-spec
   (ds/opt :availableStart) int?
   (ds/opt :availableEnd) int?
   (ds/opt :color1) string?
   (ds/opt :color2) string?
   (ds/opt :type) string?
   })

(def participant-response-spec
  (ds/spec
    {:name ::participant-response
     :spec participant-response-data}))
