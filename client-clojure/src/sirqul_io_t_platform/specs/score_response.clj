(ns sirqul-io-t-platform.specs.score-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def score-response-data
  {
   (ds/opt :action) string?
   (ds/opt :scoreId) int?
   (ds/opt :status) string?
   (ds/opt :points) int?
   (ds/opt :timeTaken) int?
   (ds/opt :ticketsEarned) int?
   (ds/opt :gameType) string?
   (ds/opt :accountId) int?
   (ds/opt :accountDisplay) string?
   })

(def score-response-spec
  (ds/spec
    {:name ::score-response
     :spec score-response-data}))
