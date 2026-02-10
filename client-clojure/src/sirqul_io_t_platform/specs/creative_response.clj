(ns sirqul-io-t-platform.specs.creative-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            [sirqul-io-t-platform.specs.json-element :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            [sirqul-io-t-platform.specs.bid-response :refer :all]
            )
  (:import (java.io File)))


(def creative-response-data
  {
   (ds/opt :creativeId) int?
   (ds/opt :active) boolean?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :image) asset-short-response-spec
   (ds/opt :action) string?
   (ds/opt :content) json-element-spec
   (ds/opt :suffix) string?
   (ds/opt :type) string?
   (ds/opt :appVersion) string?
   (ds/opt :preview) boolean?
   (ds/opt :owner) account-short-response-spec
   (ds/opt :currentBid) bid-response-spec
   })

(def creative-response-spec
  (ds/spec
    {:name ::creative-response
     :spec creative-response-data}))
