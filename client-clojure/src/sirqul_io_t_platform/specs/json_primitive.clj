(ns sirqul-io-t-platform.specs.json-primitive
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [sirqul-io-t-platform.specs. :refer :all]
            [sirqul-io-t-platform.specs.json-object :refer :all]
            [sirqul-io-t-platform.specs.json-array :refer :all]
            [sirqul-io-t-platform.specs.json-primitive :refer :all]
            [sirqul-io-t-platform.specs.json-null :refer :all]
            )
  (:import (java.io File)))


(def json-primitive-data
  {
   (ds/opt :asInt) int?
   (ds/opt :number) boolean?
   (ds/opt :boolean) boolean?
   (ds/opt :asString) string?
   (ds/opt :asBoolean) boolean?
   (ds/opt :asNumber) any?
   (ds/opt :asDouble) float?
   (ds/opt :asFloat) float?
   (ds/opt :asLong) int?
   (ds/opt :asByte) any?
   (ds/opt :asCharacter) string?
   (ds/opt :asBigDecimal) float?
   (ds/opt :asBigInteger) int?
   (ds/opt :asShort) int?
   (ds/opt :string) boolean?
   (ds/opt :asJsonObject) json-object-spec
   (ds/opt :jsonNull) boolean?
   (ds/opt :jsonArray) boolean?
   (ds/opt :jsonObject) boolean?
   (ds/opt :jsonPrimitive) boolean?
   (ds/opt :asJsonArray) json-array-spec
   (ds/opt :asJsonPrimitive) json-primitive-spec
   (ds/opt :asJsonNull) json-null-spec
   })

(def json-primitive-spec
  (ds/spec
    {:name ::json-primitive
     :spec json-primitive-data}))
