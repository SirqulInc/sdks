(ns sirqul-io-t-platform.specs.media
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.album :refer :all]
            )
  (:import (java.io File)))


(def media-data
  {
   (ds/opt :mediaType) string?
   (ds/opt :condition) string?
   (ds/opt :isbn) string?
   (ds/opt :asin) string?
   (ds/opt :catalogNumbers) (s/coll-of string?)
   (ds/opt :duration) int?
   (ds/opt :author) string?
   (ds/opt :releaseDate) int?
   (ds/opt :availabilityDate) int?
   (ds/opt :parentalRating) string?
   (ds/opt :collections) (s/coll-of album-spec)
   (ds/opt :collectionCount) int?
   })

(def media-spec
  (ds/spec
    {:name ::media
     :spec media-data}))
