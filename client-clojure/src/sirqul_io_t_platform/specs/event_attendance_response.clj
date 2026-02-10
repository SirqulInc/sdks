(ns sirqul-io-t-platform.specs.event-attendance-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.offer-short-response :refer :all]
            [sirqul-io-t-platform.specs.category-response :refer :all]
            [sirqul-io-t-platform.specs.account-short-response :refer :all]
            )
  (:import (java.io File)))


(def event-attendance-response-data
  {
   (ds/opt :event) offer-short-response-spec
   (ds/opt :affiliatedCategories) (s/coll-of category-response-spec)
   (ds/opt :attendee) account-short-response-spec
   (ds/opt :friend) boolean?
   })

(def event-attendance-response-spec
  (ds/spec
    {:name ::event-attendance-response
     :spec event-attendance-response-data}))
