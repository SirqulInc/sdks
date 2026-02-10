(ns sirqul-io-t-platform.specs.application-settings-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.application-mini-response :refer :all]
            )
  (:import (java.io File)))


(def application-settings-response-data
  {
   (ds/opt :application) application-mini-response-spec
   (ds/opt :termsAcceptedDate) int?
   (ds/opt :updated) int?
   (ds/opt :created) int?
   })

(def application-settings-response-spec
  (ds/spec
    {:name ::application-settings-response
     :spec application-settings-response-data}))
