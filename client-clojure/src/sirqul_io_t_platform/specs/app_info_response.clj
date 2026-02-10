(ns sirqul-io-t-platform.specs.app-info-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.purchase-item-list-response :refer :all]
            [sirqul-io-t-platform.specs.achievement-progress-response :refer :all]
            [sirqul-io-t-platform.specs.achievement-progress-response :refer :all]
            [sirqul-io-t-platform.specs.ticket-count-response :refer :all]
            )
  (:import (java.io File)))


(def app-info-response-data
  {
   (ds/opt :points) int?
   (ds/opt :ticketsAvailable) int?
   (ds/opt :ticketsEarned) int?
   (ds/opt :ticketsPurchased) int?
   (ds/opt :ticketsUsed) int?
   (ds/opt :rank) string?
   (ds/opt :maxPoints) int?
   (ds/opt :maxTickets) int?
   (ds/opt :pointToTicketModifier) float?
   (ds/opt :scoringType) string?
   (ds/opt :purchaseItemListResponse) purchase-item-list-response-spec
   (ds/opt :termsAcceptedDate) int?
   (ds/opt :requiresTermsAcceptance) boolean?
   (ds/opt :completedAchievements) (s/coll-of achievement-progress-response-spec)
   (ds/opt :wipAchievements) (s/coll-of achievement-progress-response-spec)
   (ds/opt :appBlob) string?
   (ds/opt :enablePush) boolean?
   (ds/opt :enableSMS) boolean?
   (ds/opt :enableEmail) boolean?
   (ds/opt :ticketCounts) (s/coll-of ticket-count-response-spec)
   })

(def app-info-response-spec
  (ds/spec
    {:name ::app-info-response
     :spec app-info-response-data}))
