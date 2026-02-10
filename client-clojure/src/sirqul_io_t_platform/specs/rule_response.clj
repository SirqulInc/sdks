(ns sirqul-io-t-platform.specs.rule-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def rule-response-data
  {
   (ds/opt :ruleId) int?
   (ds/opt :title) string?
   (ds/opt :description) string?
   (ds/opt :ruleTypeId) int?
   (ds/opt :ruleTypeTitle) string?
   (ds/opt :ruleTypeDescription) string?
   (ds/opt :ruleValueType) string?
   (ds/opt :ruleValue) string?
   })

(def rule-response-spec
  (ds/spec
    {:name ::rule-response
     :spec rule-response-data}))
