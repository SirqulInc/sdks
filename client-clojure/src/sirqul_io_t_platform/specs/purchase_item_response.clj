(ns sirqul-io-t-platform.specs.purchase-item-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def purchase-item-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :tickets) int?
   (ds/opt :coverAsset) asset-short-response-spec
   (ds/opt :promoAsset) asset-short-response-spec
   (ds/opt :giftable) boolean?
   (ds/opt :assetable) boolean?
   (ds/opt :gameType) string?
   (ds/opt :price) float?
   (ds/opt :purchaseType) string?
   (ds/opt :purchaseCode) string?
   (ds/opt :purchaseLimit) int?
   (ds/opt :quantity) int?
   (ds/opt :serviceAction) string?
   (ds/opt :appName) string?
   })

(def purchase-item-response-spec
  (ds/spec
    {:name ::purchase-item-response
     :spec purchase-item-response-data}))
