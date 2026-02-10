(ns sirqul-io-t-platform.specs.event-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.listing-response :refer :all]
            )
  (:import (java.io File)))


(def event-response-data
  {
   (ds/opt :listing) listing-response-spec
   })

(def event-response-spec
  (ds/spec
    {:name ::event-response
     :spec event-response-data}))
