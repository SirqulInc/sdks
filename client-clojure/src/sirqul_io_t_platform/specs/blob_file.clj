(ns sirqul-io-t-platform.specs.blob-file
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.account :refer :all]
            [sirqul-io-t-platform.specs.application :refer :all]
            )
  (:import (java.io File)))


(def blob-file-data
  {
   (ds/opt :id) int?
   (ds/opt :active) boolean?
   (ds/opt :valid) boolean?
   (ds/opt :owner) account-spec
   (ds/opt :application) application-spec
   (ds/opt :folderUri) string?
   (ds/opt :fileName) string?
   (ds/opt :file) (s/coll-of any?)
   })

(def blob-file-spec
  (ds/spec
    {:name ::blob-file
     :spec blob-file-data}))
