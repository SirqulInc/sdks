(ns sirqul-io-t-platform.specs.game-object-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.score-list-response :refer :all]
            [sirqul-io-t-platform.specs.ticket-list-response :refer :all]
            [sirqul-io-t-platform.specs.name-string-value-response :refer :all]
            )
  (:import (java.io File)))


(def game-object-response-data
  {
   (ds/opt :action) string?
   (ds/opt :gameObjectId) int?
   (ds/opt :gameType) string?
   (ds/opt :ticketsEarned) int?
   (ds/opt :scores) score-list-response-spec
   (ds/opt :tickets) ticket-list-response-spec
   (ds/opt :items) (s/coll-of name-string-value-response-spec)
   (ds/opt :allocateTickets) boolean?
   })

(def game-object-response-spec
  (ds/spec
    {:name ::game-object-response
     :spec game-object-response-data}))
