(ns sirqul-io-t-platform.specs.biometric-image
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def biometric-image-data
  {
   (ds/opt :position) string?
   (ds/opt :data) string?
   })

(def biometric-image-spec
  (ds/spec
    {:name ::biometric-image
     :spec biometric-image-data}))
