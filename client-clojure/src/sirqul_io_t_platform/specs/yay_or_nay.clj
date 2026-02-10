(ns sirqul-io-t-platform.specs.yay-or-nay
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            )
  (:import (java.io File)))


(def yay-or-nay-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :yayOrNay) boolean?
   (ds/opt :likableObjectType) string?
   (ds/opt :likableObjectId) int?
   })

(def yay-or-nay-spec
  (ds/spec
    {:name ::yay-or-nay
     :spec yay-or-nay-data}))
