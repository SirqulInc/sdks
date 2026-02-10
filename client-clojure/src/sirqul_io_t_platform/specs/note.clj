(ns sirqul-io-t-platform.specs.note
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.note :refer :all]
            [sirqul-io-t-platform.specs.yay-or-nay :refer :all]
            [sirqul-io-t-platform.specs.asset :refer :all]
            [sirqul-io-t-platform.specs.flag :refer :all]
            [sirqul-io-t-platform.specs.flag-threshold :refer :all]
            )
  (:import (java.io File)))


(def note-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   (ds/opt :locationDescription) string?
   (ds/opt :owner) account-spec
   (ds/opt :notableType) string?
   (ds/opt :notableId) int?
   (ds/opt :noteTag) string?
   (ds/opt :notes) (s/coll-of note-spec)
   (ds/opt :likes) (s/coll-of yay-or-nay-spec)
   (ds/opt :assets) (s/coll-of asset-spec)
   (ds/opt :noteDescription) string?
   (ds/opt :likeCount) int?
   (ds/opt :dislikeCount) int?
   (ds/opt :noteCount) int?
   (ds/opt :flags) (s/coll-of flag-spec)
   (ds/opt :flagCount) int?
   (ds/opt :flagThreshold) flag-threshold-spec
   (ds/opt :contentName) string?
   (ds/opt :defaultThreshold) int?
   })

(def note-spec
  (ds/spec
    {:name ::note
     :spec note-data}))
