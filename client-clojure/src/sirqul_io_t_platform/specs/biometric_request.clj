(ns sirqul-io-t-platform.specs.biometric-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.biometric-image :refer :all]
            [sirqul-io-t-platform.specs.fingerprint-biometric-image :refer :all]
            )
  (:import (java.io File)))


(def biometric-request-data
  {
   (ds/opt :face) biometric-image-spec
   (ds/opt :fingerprints) (s/coll-of fingerprint-biometric-image-spec)
   })

(def biometric-request-spec
  (ds/spec
    {:name ::biometric-request
     :spec biometric-request-data}))
