(ns sirqul-io-t-platform.specs.order-package
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def order-package-data
  {
   (ds/opt :valid) boolean?
   (ds/opt :PackageTypeName) string?
   (ds/opt :PackageCount) int?
   (ds/opt :CubicFeet) float?
   })

(def order-package-spec
  (ds/spec
    {:name ::order-package
     :spec order-package-data}))
