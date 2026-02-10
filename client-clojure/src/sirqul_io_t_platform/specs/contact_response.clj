(ns sirqul-io-t-platform.specs.contact-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.contact-info-response :refer :all]
            )
  (:import (java.io File)))


(def contact-response-data
  {
   (ds/opt :firstName) string?
   (ds/opt :middleName) string?
   (ds/opt :lastName) string?
   (ds/opt :prefix) string?
   (ds/opt :suffix) string?
   (ds/opt :title) string?
   (ds/opt :contactInfo) contact-info-response-spec
   })

(def contact-response-spec
  (ds/spec
    {:name ::contact-response
     :spec contact-response-data}))
