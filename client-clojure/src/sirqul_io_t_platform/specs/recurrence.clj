(ns sirqul-io-t-platform.specs.recurrence
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def recurrence-data
  {
   (ds/opt :frequency) string?
   (ds/opt :daysOfWeek) (s/coll-of int?)
   (ds/opt :start) inst?
   (ds/opt :count) int?
   (ds/opt :until) inst?
   })

(def recurrence-spec
  (ds/spec
    {:name ::recurrence
     :spec recurrence-data}))
