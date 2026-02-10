(ns sirqul-io-t-platform.specs.preview-persona-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account-mini-response :refer :all]
            )
  (:import (java.io File)))


(def preview-persona-response-data
  {
   (ds/opt :personaId) int?
   (ds/opt :title) string?
   (ds/opt :previewAccounts) (s/coll-of account-mini-response-spec)
   (ds/opt :active) boolean?
   (ds/opt :date) int?
   (ds/opt :age) int?
   (ds/opt :gender) string?
   (ds/opt :gameExperienceLevel) string?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   })

(def preview-persona-response-spec
  (ds/spec
    {:name ::preview-persona-response
     :spec preview-persona-response-data}))
