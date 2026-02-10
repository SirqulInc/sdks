(ns sirqul-io-t-platform.specs.question-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.answer-response :refer :all]
            [sirqul-io-t-platform.specs.score-list-response :refer :all]
            [sirqul-io-t-platform.specs.ticket-list-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def question-response-data
  {
   (ds/opt :id) int?
   (ds/opt :question) string?
   (ds/opt :image) asset-short-response-spec
   (ds/opt :videoURL) string?
   (ds/opt :active) boolean?
   (ds/opt :answers) (s/coll-of answer-response-spec)
   (ds/opt :scores) score-list-response-spec
   (ds/opt :tickets) ticket-list-response-spec
   (ds/opt :owner) account-short-response-spec
   (ds/opt :icon) asset-short-response-spec
   (ds/opt :authorOverride) string?
   (ds/opt :updatedDate) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :createdDate) int?
   (ds/opt :tags) string?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :ticketType) string?
   (ds/opt :ticketCount) int?
   (ds/opt :points) int?
   })

(def question-response-spec
  (ds/spec
    {:name ::question-response
     :spec question-response-data}))
