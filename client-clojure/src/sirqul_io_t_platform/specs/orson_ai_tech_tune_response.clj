(ns sirqul-io-t-platform.specs.orson-ai-tech-tune-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def orson-ai-tech-tune-response-data
  {
   (ds/opt :requestId) string?
   (ds/opt :responseCode) int?
   (ds/opt :responseRaw) string?
   (ds/opt :people) int?
   (ds/opt :wasCutoff) boolean?
   (ds/opt :frames) int?
   (ds/opt :framesWithoutAFace) int?
   (ds/opt :framesWithFaceOffscreen) int?
   (ds/opt :framesWithWrongNumberOfPeople) int?
   (ds/opt :height) int?
   (ds/opt :width) int?
   (ds/opt :fps) int?
   })

(def orson-ai-tech-tune-response-spec
  (ds/spec
    {:name ::orson-ai-tech-tune-response
     :spec orson-ai-tech-tune-response-data}))
