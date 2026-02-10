(ns sirqul-io-t-platform.specs.wordz-word-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.score-list-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def wordz-word-response-data
  {
   (ds/opt :id) int?
   (ds/opt :word) string?
   (ds/opt :definition) string?
   (ds/opt :scores) score-list-response-spec
   (ds/opt :icon) asset-short-response-spec
   (ds/opt :image) asset-short-response-spec
   (ds/opt :authorOverride) string?
   (ds/opt :updatedDate) int?
   (ds/opt :startDate) int?
   (ds/opt :endDate) int?
   (ds/opt :createdDate) int?
   (ds/opt :active) boolean?
   (ds/opt :allocateTickets) boolean?
   (ds/opt :ticketType) string?
   (ds/opt :ticketCount) int?
   (ds/opt :points) int?
   })

(def wordz-word-response-spec
  (ds/spec
    {:name ::wordz-word-response
     :spec wordz-word-response-data}))
