(ns sirqul-io-t-platform.specs.mission-task
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def mission-task-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :format) string?
   (ds/opt :suffix) string?
   (ds/opt :taskType) string?
   })

(def mission-task-spec
  (ds/spec
    {:name ::mission-task
     :spec mission-task-data}))
