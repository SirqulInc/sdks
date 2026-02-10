(ns sirqul-io-t-platform.specs.bid-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def bid-response-data
  {
   (ds/opt :bidId) int?
   (ds/opt :biddableType) string?
   (ds/opt :biddableId) int?
   (ds/opt :amountPerView) float?
   (ds/opt :amountPerAction) float?
   (ds/opt :currentDailyBudget) float?
   (ds/opt :currentBudget) float?
   (ds/opt :currentBudgetExpiration) int?
   (ds/opt :currentBudgetStart) int?
   (ds/opt :budgetAmount) float?
   (ds/opt :budgetSchedule) string?
   })

(def bid-response-spec
  (ds/spec
    {:name ::bid-response
     :spec bid-response-data}))
