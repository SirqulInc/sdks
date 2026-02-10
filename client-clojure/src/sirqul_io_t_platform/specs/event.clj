(ns sirqul-io-t-platform.specs.event
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.listing :refer :all]
            )
  (:import (java.io File)))


(def event-data
  {
   (ds/opt :sponsered) boolean?
   (ds/opt :listing) listing-spec
   })

(def event-spec
  (ds/spec
    {:name ::event
     :spec event-data}))
