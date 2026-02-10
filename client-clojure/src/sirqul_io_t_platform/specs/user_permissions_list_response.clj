(ns sirqul-io-t-platform.specs.user-permissions-list-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs.permission-response :refer :all]
            [sirqul-io-t-platform.specs.user-permissions-response :refer :all]
            )
  (:import (java.io File)))


(def user-permissions-list-response-data
  {
   (ds/opt :action) string?
   (ds/opt :visibility) string?
   (ds/opt :publicPermissions) permission-response-spec
   (ds/opt :userPermissions) (s/coll-of user-permissions-response-spec)
   })

(def user-permissions-list-response-spec
  (ds/spec
    {:name ::user-permissions-list-response
     :spec user-permissions-list-response-data}))
