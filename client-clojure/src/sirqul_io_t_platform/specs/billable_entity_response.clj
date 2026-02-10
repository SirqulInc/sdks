(ns sirqul-io-t-platform.specs.billable-entity-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.profile-short-response :refer :all]
            [sirqul-io-t-platform.specs.contact-info-response :refer :all]
            [sirqul-io-t-platform.specs.subscription-response :refer :all]
            [sirqul-io-t-platform.specs.payment-types-response :refer :all]
            )
  (:import (java.io File)))


(def billable-entity-response-data
  {
   (ds/opt :billableEntityId) int?
   (ds/opt :name) string?
   (ds/opt :responsible) profile-short-response-spec
   (ds/opt :contact) contact-info-response-spec
   (ds/opt :subscription) subscription-response-spec
   (ds/opt :payment) payment-types-response-spec
   })

(def billable-entity-response-spec
  (ds/spec
    {:name ::billable-entity-response
     :spec billable-entity-response-data}))
