(ns sirqul-io-t-platform.specs.like-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def like-response-data
  {
   (ds/opt :account) account-short-response-spec
   })

(def like-response-spec
  (ds/spec
    {:name ::like-response
     :spec like-response-data}))
