(ns sirqul-io-t-platform.specs.rank-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def rank-response-data
  {
   (ds/opt :owner) account-short-response-spec
   (ds/opt :rank) string?
   (ds/opt :scoreValue) int?
   (ds/opt :timeValue) int?
   (ds/opt :countValue) int?
   (ds/opt :updated) int?
   })

(def rank-response-spec
  (ds/spec
    {:name ::rank-response
     :spec rank-response-data}))
