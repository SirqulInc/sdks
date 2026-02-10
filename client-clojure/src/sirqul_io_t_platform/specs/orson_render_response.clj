(ns sirqul-io-t-platform.specs.orson-render-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.orson-video-response :refer :all]
            )
  (:import (java.io File)))


(def orson-render-response-data
  {
   (ds/opt :id) string?
   (ds/opt :thirdPartyAccountId) string?
   (ds/opt :status) string?
   (ds/opt :statusDescription) string?
   (ds/opt :completedOn) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :video) orson-video-response-spec
   })

(def orson-render-response-spec
  (ds/spec
    {:name ::orson-render-response
     :spec orson-render-response-data}))
