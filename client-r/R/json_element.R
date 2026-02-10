#' Create a new JsonElement
#'
#' @description
#' JsonElement Class
#'
#' @docType class
#' @title JsonElement
#' @description JsonElement Class
#' @format An \code{R6Class} generator object
#' @field asInt  integer [optional]
#' @field asJsonObject  \link{JsonObject} [optional]
#' @field jsonNull  character [optional]
#' @field asString  character [optional]
#' @field asBoolean  character [optional]
#' @field jsonArray  character [optional]
#' @field jsonObject  character [optional]
#' @field jsonPrimitive  character [optional]
#' @field asJsonArray  \link{JsonArray} [optional]
#' @field asJsonPrimitive  \link{JsonPrimitive} [optional]
#' @field asJsonNull  \link{JsonNull} [optional]
#' @field asNumber  object [optional]
#' @field asDouble  numeric [optional]
#' @field asFloat  numeric [optional]
#' @field asLong  integer [optional]
#' @field asByte  character [optional]
#' @field asCharacter  character [optional]
#' @field asBigDecimal  numeric [optional]
#' @field asBigInteger  integer [optional]
#' @field asShort  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JsonElement <- R6::R6Class(
  "JsonElement",
  public = list(
    `asInt` = NULL,
    `asJsonObject` = NULL,
    `jsonNull` = NULL,
    `asString` = NULL,
    `asBoolean` = NULL,
    `jsonArray` = NULL,
    `jsonObject` = NULL,
    `jsonPrimitive` = NULL,
    `asJsonArray` = NULL,
    `asJsonPrimitive` = NULL,
    `asJsonNull` = NULL,
    `asNumber` = NULL,
    `asDouble` = NULL,
    `asFloat` = NULL,
    `asLong` = NULL,
    `asByte` = NULL,
    `asCharacter` = NULL,
    `asBigDecimal` = NULL,
    `asBigInteger` = NULL,
    `asShort` = NULL,

    #' @description
    #' Initialize a new JsonElement class.
    #'
    #' @param asInt asInt
    #' @param asJsonObject asJsonObject
    #' @param jsonNull jsonNull
    #' @param asString asString
    #' @param asBoolean asBoolean
    #' @param jsonArray jsonArray
    #' @param jsonObject jsonObject
    #' @param jsonPrimitive jsonPrimitive
    #' @param asJsonArray asJsonArray
    #' @param asJsonPrimitive asJsonPrimitive
    #' @param asJsonNull asJsonNull
    #' @param asNumber asNumber
    #' @param asDouble asDouble
    #' @param asFloat asFloat
    #' @param asLong asLong
    #' @param asByte asByte
    #' @param asCharacter asCharacter
    #' @param asBigDecimal asBigDecimal
    #' @param asBigInteger asBigInteger
    #' @param asShort asShort
    #' @param ... Other optional arguments.
    initialize = function(`asInt` = NULL, `asJsonObject` = NULL, `jsonNull` = NULL, `asString` = NULL, `asBoolean` = NULL, `jsonArray` = NULL, `jsonObject` = NULL, `jsonPrimitive` = NULL, `asJsonArray` = NULL, `asJsonPrimitive` = NULL, `asJsonNull` = NULL, `asNumber` = NULL, `asDouble` = NULL, `asFloat` = NULL, `asLong` = NULL, `asByte` = NULL, `asCharacter` = NULL, `asBigDecimal` = NULL, `asBigInteger` = NULL, `asShort` = NULL, ...) {
      if (!is.null(`asInt`)) {
        if (!(is.numeric(`asInt`) && length(`asInt`) == 1)) {
          stop(paste("Error! Invalid data for `asInt`. Must be an integer:", `asInt`))
        }
        self$`asInt` <- `asInt`
      }
      if (!is.null(`asJsonObject`)) {
        stopifnot(R6::is.R6(`asJsonObject`))
        self$`asJsonObject` <- `asJsonObject`
      }
      if (!is.null(`jsonNull`)) {
        if (!(is.logical(`jsonNull`) && length(`jsonNull`) == 1)) {
          stop(paste("Error! Invalid data for `jsonNull`. Must be a boolean:", `jsonNull`))
        }
        self$`jsonNull` <- `jsonNull`
      }
      if (!is.null(`asString`)) {
        if (!(is.character(`asString`) && length(`asString`) == 1)) {
          stop(paste("Error! Invalid data for `asString`. Must be a string:", `asString`))
        }
        self$`asString` <- `asString`
      }
      if (!is.null(`asBoolean`)) {
        if (!(is.logical(`asBoolean`) && length(`asBoolean`) == 1)) {
          stop(paste("Error! Invalid data for `asBoolean`. Must be a boolean:", `asBoolean`))
        }
        self$`asBoolean` <- `asBoolean`
      }
      if (!is.null(`jsonArray`)) {
        if (!(is.logical(`jsonArray`) && length(`jsonArray`) == 1)) {
          stop(paste("Error! Invalid data for `jsonArray`. Must be a boolean:", `jsonArray`))
        }
        self$`jsonArray` <- `jsonArray`
      }
      if (!is.null(`jsonObject`)) {
        if (!(is.logical(`jsonObject`) && length(`jsonObject`) == 1)) {
          stop(paste("Error! Invalid data for `jsonObject`. Must be a boolean:", `jsonObject`))
        }
        self$`jsonObject` <- `jsonObject`
      }
      if (!is.null(`jsonPrimitive`)) {
        if (!(is.logical(`jsonPrimitive`) && length(`jsonPrimitive`) == 1)) {
          stop(paste("Error! Invalid data for `jsonPrimitive`. Must be a boolean:", `jsonPrimitive`))
        }
        self$`jsonPrimitive` <- `jsonPrimitive`
      }
      if (!is.null(`asJsonArray`)) {
        stopifnot(R6::is.R6(`asJsonArray`))
        self$`asJsonArray` <- `asJsonArray`
      }
      if (!is.null(`asJsonPrimitive`)) {
        stopifnot(R6::is.R6(`asJsonPrimitive`))
        self$`asJsonPrimitive` <- `asJsonPrimitive`
      }
      if (!is.null(`asJsonNull`)) {
        stopifnot(R6::is.R6(`asJsonNull`))
        self$`asJsonNull` <- `asJsonNull`
      }
      if (!is.null(`asNumber`)) {
        self$`asNumber` <- `asNumber`
      }
      if (!is.null(`asDouble`)) {
        if (!(is.numeric(`asDouble`) && length(`asDouble`) == 1)) {
          stop(paste("Error! Invalid data for `asDouble`. Must be a number:", `asDouble`))
        }
        self$`asDouble` <- `asDouble`
      }
      if (!is.null(`asFloat`)) {
        if (!(is.numeric(`asFloat`) && length(`asFloat`) == 1)) {
          stop(paste("Error! Invalid data for `asFloat`. Must be a number:", `asFloat`))
        }
        self$`asFloat` <- `asFloat`
      }
      if (!is.null(`asLong`)) {
        if (!(is.numeric(`asLong`) && length(`asLong`) == 1)) {
          stop(paste("Error! Invalid data for `asLong`. Must be an integer:", `asLong`))
        }
        self$`asLong` <- `asLong`
      }
      if (!is.null(`asByte`)) {
        self$`asByte` <- `asByte`
      }
      if (!is.null(`asCharacter`)) {
        if (!(is.character(`asCharacter`) && length(`asCharacter`) == 1)) {
          stop(paste("Error! Invalid data for `asCharacter`. Must be a string:", `asCharacter`))
        }
        self$`asCharacter` <- `asCharacter`
      }
      if (!is.null(`asBigDecimal`)) {
        self$`asBigDecimal` <- `asBigDecimal`
      }
      if (!is.null(`asBigInteger`)) {
        if (!(is.numeric(`asBigInteger`) && length(`asBigInteger`) == 1)) {
          stop(paste("Error! Invalid data for `asBigInteger`. Must be an integer:", `asBigInteger`))
        }
        self$`asBigInteger` <- `asBigInteger`
      }
      if (!is.null(`asShort`)) {
        if (!(is.numeric(`asShort`) && length(`asShort`) == 1)) {
          stop(paste("Error! Invalid data for `asShort`. Must be an integer:", `asShort`))
        }
        self$`asShort` <- `asShort`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return JsonElement as a base R list.
    #' @examples
    #' # convert array of JsonElement (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert JsonElement to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      JsonElementObject <- list()
      if (!is.null(self$`asInt`)) {
        JsonElementObject[["asInt"]] <-
          self$`asInt`
      }
      if (!is.null(self$`asJsonObject`)) {
        JsonElementObject[["asJsonObject"]] <-
          self$extractSimpleType(self$`asJsonObject`)
      }
      if (!is.null(self$`jsonNull`)) {
        JsonElementObject[["jsonNull"]] <-
          self$`jsonNull`
      }
      if (!is.null(self$`asString`)) {
        JsonElementObject[["asString"]] <-
          self$`asString`
      }
      if (!is.null(self$`asBoolean`)) {
        JsonElementObject[["asBoolean"]] <-
          self$`asBoolean`
      }
      if (!is.null(self$`jsonArray`)) {
        JsonElementObject[["jsonArray"]] <-
          self$`jsonArray`
      }
      if (!is.null(self$`jsonObject`)) {
        JsonElementObject[["jsonObject"]] <-
          self$`jsonObject`
      }
      if (!is.null(self$`jsonPrimitive`)) {
        JsonElementObject[["jsonPrimitive"]] <-
          self$`jsonPrimitive`
      }
      if (!is.null(self$`asJsonArray`)) {
        JsonElementObject[["asJsonArray"]] <-
          self$extractSimpleType(self$`asJsonArray`)
      }
      if (!is.null(self$`asJsonPrimitive`)) {
        JsonElementObject[["asJsonPrimitive"]] <-
          self$extractSimpleType(self$`asJsonPrimitive`)
      }
      if (!is.null(self$`asJsonNull`)) {
        JsonElementObject[["asJsonNull"]] <-
          self$extractSimpleType(self$`asJsonNull`)
      }
      if (!is.null(self$`asNumber`)) {
        JsonElementObject[["asNumber"]] <-
          self$`asNumber`
      }
      if (!is.null(self$`asDouble`)) {
        JsonElementObject[["asDouble"]] <-
          self$`asDouble`
      }
      if (!is.null(self$`asFloat`)) {
        JsonElementObject[["asFloat"]] <-
          self$`asFloat`
      }
      if (!is.null(self$`asLong`)) {
        JsonElementObject[["asLong"]] <-
          self$`asLong`
      }
      if (!is.null(self$`asByte`)) {
        JsonElementObject[["asByte"]] <-
          self$`asByte`
      }
      if (!is.null(self$`asCharacter`)) {
        JsonElementObject[["asCharacter"]] <-
          self$`asCharacter`
      }
      if (!is.null(self$`asBigDecimal`)) {
        JsonElementObject[["asBigDecimal"]] <-
          self$`asBigDecimal`
      }
      if (!is.null(self$`asBigInteger`)) {
        JsonElementObject[["asBigInteger"]] <-
          self$`asBigInteger`
      }
      if (!is.null(self$`asShort`)) {
        JsonElementObject[["asShort"]] <-
          self$`asShort`
      }
      return(JsonElementObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of JsonElement
    #'
    #' @param input_json the JSON input
    #' @return the instance of JsonElement
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`asInt`)) {
        self$`asInt` <- this_object$`asInt`
      }
      if (!is.null(this_object$`asJsonObject`)) {
        `asjsonobject_object` <- JsonObject$new()
        `asjsonobject_object`$fromJSON(jsonlite::toJSON(this_object$`asJsonObject`, auto_unbox = TRUE, digits = NA))
        self$`asJsonObject` <- `asjsonobject_object`
      }
      if (!is.null(this_object$`jsonNull`)) {
        self$`jsonNull` <- this_object$`jsonNull`
      }
      if (!is.null(this_object$`asString`)) {
        self$`asString` <- this_object$`asString`
      }
      if (!is.null(this_object$`asBoolean`)) {
        self$`asBoolean` <- this_object$`asBoolean`
      }
      if (!is.null(this_object$`jsonArray`)) {
        self$`jsonArray` <- this_object$`jsonArray`
      }
      if (!is.null(this_object$`jsonObject`)) {
        self$`jsonObject` <- this_object$`jsonObject`
      }
      if (!is.null(this_object$`jsonPrimitive`)) {
        self$`jsonPrimitive` <- this_object$`jsonPrimitive`
      }
      if (!is.null(this_object$`asJsonArray`)) {
        `asjsonarray_object` <- JsonArray$new()
        `asjsonarray_object`$fromJSON(jsonlite::toJSON(this_object$`asJsonArray`, auto_unbox = TRUE, digits = NA))
        self$`asJsonArray` <- `asjsonarray_object`
      }
      if (!is.null(this_object$`asJsonPrimitive`)) {
        `asjsonprimitive_object` <- JsonPrimitive$new()
        `asjsonprimitive_object`$fromJSON(jsonlite::toJSON(this_object$`asJsonPrimitive`, auto_unbox = TRUE, digits = NA))
        self$`asJsonPrimitive` <- `asjsonprimitive_object`
      }
      if (!is.null(this_object$`asJsonNull`)) {
        `asjsonnull_object` <- JsonNull$new()
        `asjsonnull_object`$fromJSON(jsonlite::toJSON(this_object$`asJsonNull`, auto_unbox = TRUE, digits = NA))
        self$`asJsonNull` <- `asjsonnull_object`
      }
      if (!is.null(this_object$`asNumber`)) {
        self$`asNumber` <- this_object$`asNumber`
      }
      if (!is.null(this_object$`asDouble`)) {
        self$`asDouble` <- this_object$`asDouble`
      }
      if (!is.null(this_object$`asFloat`)) {
        self$`asFloat` <- this_object$`asFloat`
      }
      if (!is.null(this_object$`asLong`)) {
        self$`asLong` <- this_object$`asLong`
      }
      if (!is.null(this_object$`asByte`)) {
        self$`asByte` <- this_object$`asByte`
      }
      if (!is.null(this_object$`asCharacter`)) {
        self$`asCharacter` <- this_object$`asCharacter`
      }
      if (!is.null(this_object$`asBigDecimal`)) {
        self$`asBigDecimal` <- this_object$`asBigDecimal`
      }
      if (!is.null(this_object$`asBigInteger`)) {
        self$`asBigInteger` <- this_object$`asBigInteger`
      }
      if (!is.null(this_object$`asShort`)) {
        self$`asShort` <- this_object$`asShort`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JsonElement in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of JsonElement
    #'
    #' @param input_json the JSON input
    #' @return the instance of JsonElement
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`asInt` <- this_object$`asInt`
      self$`asJsonObject` <- JsonObject$new()$fromJSON(jsonlite::toJSON(this_object$`asJsonObject`, auto_unbox = TRUE, digits = NA))
      self$`jsonNull` <- this_object$`jsonNull`
      self$`asString` <- this_object$`asString`
      self$`asBoolean` <- this_object$`asBoolean`
      self$`jsonArray` <- this_object$`jsonArray`
      self$`jsonObject` <- this_object$`jsonObject`
      self$`jsonPrimitive` <- this_object$`jsonPrimitive`
      self$`asJsonArray` <- JsonArray$new()$fromJSON(jsonlite::toJSON(this_object$`asJsonArray`, auto_unbox = TRUE, digits = NA))
      self$`asJsonPrimitive` <- JsonPrimitive$new()$fromJSON(jsonlite::toJSON(this_object$`asJsonPrimitive`, auto_unbox = TRUE, digits = NA))
      self$`asJsonNull` <- JsonNull$new()$fromJSON(jsonlite::toJSON(this_object$`asJsonNull`, auto_unbox = TRUE, digits = NA))
      self$`asNumber` <- this_object$`asNumber`
      self$`asDouble` <- this_object$`asDouble`
      self$`asFloat` <- this_object$`asFloat`
      self$`asLong` <- this_object$`asLong`
      self$`asByte` <- this_object$`asByte`
      self$`asCharacter` <- this_object$`asCharacter`
      self$`asBigDecimal` <- this_object$`asBigDecimal`
      self$`asBigInteger` <- this_object$`asBigInteger`
      self$`asShort` <- this_object$`asShort`
      self
    },

    #' @description
    #' Validate JSON input with respect to JsonElement and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of JsonElement
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (!str_detect(self$`asByte`, "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$")) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      if (!str_detect(self$`asByte`, "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$")) {
        invalid_fields["asByte"] <- "Invalid value for `asByte`, must conform to the pattern ^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$."
      }

      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# JsonElement$unlock()
#
## Below is an example to define the print function
# JsonElement$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JsonElement$lock()

