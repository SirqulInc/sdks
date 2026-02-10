(ns sirqul-io-t-platform.specs.fingerprint-biometric-image
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def fingerprint-biometric-image-data
  {
   (ds/opt :position) string?
   (ds/opt :data) string?
   (ds/opt :imageFormat) string?
   })

(def fingerprint-biometric-image-spec
  (ds/spec
    {:name ::fingerprint-biometric-image
     :spec fingerprint-biometric-image-data}))
