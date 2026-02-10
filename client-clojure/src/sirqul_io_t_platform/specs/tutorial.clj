(ns sirqul-io-t-platform.specs.tutorial
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset :refer :all]
            )
  (:import (java.io File)))


(def tutorial-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :alignment) string?
   (ds/opt :image) asset-spec
   (ds/opt :orderIndex) int?
   (ds/opt :tutorialObjectType) string?
   })

(def tutorial-spec
  (ds/spec
    {:name ::tutorial
     :spec tutorial-data}))
