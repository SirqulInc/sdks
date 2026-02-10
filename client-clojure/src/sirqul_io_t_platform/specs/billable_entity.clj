(ns sirqul-io-t-platform.specs.billable-entity
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.contact-info :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.retailer :refer :all]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.category :refer :all]
            [sirqul-io-t-platform.specs.filter :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.album :refer :all]
            [sirqul-io-t-platform.specs.subscription :refer :all]
            [sirqul-io-t-platform.specs.third-party-network :refer :all]
            )
  (:import (java.io File)))


(def billable-entity-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :name) string?
   (ds/opt :contactInfo) contact-info-spec
   (ds/opt :responsible) account-spec
   (ds/opt :retailers) (s/coll-of retailer-spec)
   (ds/opt :managers) (s/coll-of account-spec)
   (ds/opt :categories) (s/coll-of category-spec)
   (ds/opt :filters) (s/coll-of filter-spec)
   (ds/opt :media) (s/coll-of asset-spec)
   (ds/opt :mediaAlbum) album-spec
   (ds/opt :subscription) subscription-spec
   (ds/opt :disbursementIntrospect) third-party-network-spec
   (ds/opt :authorizeNetTransactionKey) string?
   (ds/opt :authorizeNetApiKey) string?
   })

(def billable-entity-spec
  (ds/spec
    {:name ::billable-entity
     :spec billable-entity-data}))
