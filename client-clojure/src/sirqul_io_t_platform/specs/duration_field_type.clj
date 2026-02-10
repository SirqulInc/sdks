(ns sirqul-io-t-platform.specs.duration-field-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def duration-field-type-data
  {
   (ds/opt :name) string?
   })

(def duration-field-type-spec
  (ds/spec
    {:name ::duration-field-type
     :spec duration-field-type-data}))
