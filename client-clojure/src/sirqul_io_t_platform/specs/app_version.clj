(ns sirqul-io-t-platform.specs.app-version
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def app-version-data
  {
   (ds/opt :minorVersion) int?
   (ds/opt :majorVersion) int?
   (ds/opt :versionIndex) int?
   })

(def app-version-spec
  (ds/spec
    {:name ::app-version
     :spec app-version-data}))
