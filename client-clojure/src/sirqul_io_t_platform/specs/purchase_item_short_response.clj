(ns sirqul-io-t-platform.specs.purchase-item-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def purchase-item-short-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :tickets) int?
   (ds/opt :coverAsset) asset-short-response-spec
   (ds/opt :promoAsset) asset-short-response-spec
   (ds/opt :giftable) boolean?
   (ds/opt :assetable) boolean?
   })

(def purchase-item-short-response-spec
  (ds/spec
    {:name ::purchase-item-short-response
     :spec purchase-item-short-response-data}))
