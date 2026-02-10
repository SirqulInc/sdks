(ns sirqul-io-t-platform.specs.answer-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.asset-short-response :refer :all]
            )
  (:import (java.io File)))


(def answer-response-data
  {
   (ds/opt :answerId) int?
   (ds/opt :answer) string?
   (ds/opt :correct) boolean?
   (ds/opt :image) asset-short-response-spec
   (ds/opt :videoURL) string?
   })

(def answer-response-spec
  (ds/spec
    {:name ::answer-response
     :spec answer-response-data}))
