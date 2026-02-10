(ns sirqul-io-t-platform.specs.billable-entity-short-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.profile-short-response :refer :all]
            )
  (:import (java.io File)))


(def billable-entity-short-response-data
  {
   (ds/opt :billableEntityId) int?
   (ds/opt :name) string?
   (ds/opt :responsible) profile-short-response-spec
   })

(def billable-entity-short-response-spec
  (ds/spec
    {:name ::billable-entity-short-response
     :spec billable-entity-short-response-data}))
