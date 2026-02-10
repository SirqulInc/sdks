#' Create a new LocalTime
#'
#' @description
#' LocalTime Class
#'
#' @docType class
#' @title LocalTime
#' @description LocalTime Class
#' @format An \code{R6Class} generator object
#' @field chronology  \link{Chronology} [optional]
#' @field hourOfDay  integer [optional]
#' @field minuteOfHour  integer [optional]
#' @field secondOfMinute  integer [optional]
#' @field millisOfSecond  integer [optional]
#' @field millisOfDay  integer [optional]
#' @field fields  list(\link{DateTimeField}) [optional]
#' @field values  list(integer) [optional]
#' @field fieldTypes  list(\link{DateTimeFieldType}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LocalTime <- R6::R6Class(
  "LocalTime",
  public = list(
    `chronology` = NULL,
    `hourOfDay` = NULL,
    `minuteOfHour` = NULL,
    `secondOfMinute` = NULL,
    `millisOfSecond` = NULL,
    `millisOfDay` = NULL,
    `fields` = NULL,
    `values` = NULL,
    `fieldTypes` = NULL,

    #' @description
    #' Initialize a new LocalTime class.
    #'
    #' @param chronology chronology
    #' @param hourOfDay hourOfDay
    #' @param minuteOfHour minuteOfHour
    #' @param secondOfMinute secondOfMinute
    #' @param millisOfSecond millisOfSecond
    #' @param millisOfDay millisOfDay
    #' @param fields fields
    #' @param values values
    #' @param fieldTypes fieldTypes
    #' @param ... Other optional arguments.
    initialize = function(`chronology` = NULL, `hourOfDay` = NULL, `minuteOfHour` = NULL, `secondOfMinute` = NULL, `millisOfSecond` = NULL, `millisOfDay` = NULL, `fields` = NULL, `values` = NULL, `fieldTypes` = NULL, ...) {
      if (!is.null(`chronology`)) {
        stopifnot(R6::is.R6(`chronology`))
        self$`chronology` <- `chronology`
      }
      if (!is.null(`hourOfDay`)) {
        if (!(is.numeric(`hourOfDay`) && length(`hourOfDay`) == 1)) {
          stop(paste("Error! Invalid data for `hourOfDay`. Must be an integer:", `hourOfDay`))
        }
        self$`hourOfDay` <- `hourOfDay`
      }
      if (!is.null(`minuteOfHour`)) {
        if (!(is.numeric(`minuteOfHour`) && length(`minuteOfHour`) == 1)) {
          stop(paste("Error! Invalid data for `minuteOfHour`. Must be an integer:", `minuteOfHour`))
        }
        self$`minuteOfHour` <- `minuteOfHour`
      }
      if (!is.null(`secondOfMinute`)) {
        if (!(is.numeric(`secondOfMinute`) && length(`secondOfMinute`) == 1)) {
          stop(paste("Error! Invalid data for `secondOfMinute`. Must be an integer:", `secondOfMinute`))
        }
        self$`secondOfMinute` <- `secondOfMinute`
      }
      if (!is.null(`millisOfSecond`)) {
        if (!(is.numeric(`millisOfSecond`) && length(`millisOfSecond`) == 1)) {
          stop(paste("Error! Invalid data for `millisOfSecond`. Must be an integer:", `millisOfSecond`))
        }
        self$`millisOfSecond` <- `millisOfSecond`
      }
      if (!is.null(`millisOfDay`)) {
        if (!(is.numeric(`millisOfDay`) && length(`millisOfDay`) == 1)) {
          stop(paste("Error! Invalid data for `millisOfDay`. Must be an integer:", `millisOfDay`))
        }
        self$`millisOfDay` <- `millisOfDay`
      }
      if (!is.null(`fields`)) {
        stopifnot(is.vector(`fields`), length(`fields`) != 0)
        sapply(`fields`, function(x) stopifnot(R6::is.R6(x)))
        self$`fields` <- `fields`
      }
      if (!is.null(`values`)) {
        stopifnot(is.vector(`values`), length(`values`) != 0)
        sapply(`values`, function(x) stopifnot(is.character(x)))
        self$`values` <- `values`
      }
      if (!is.null(`fieldTypes`)) {
        stopifnot(is.vector(`fieldTypes`), length(`fieldTypes`) != 0)
        sapply(`fieldTypes`, function(x) stopifnot(R6::is.R6(x)))
        self$`fieldTypes` <- `fieldTypes`
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
    #' @return LocalTime as a base R list.
    #' @examples
    #' # convert array of LocalTime (x) to a data frame
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
    #' Convert LocalTime to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LocalTimeObject <- list()
      if (!is.null(self$`chronology`)) {
        LocalTimeObject[["chronology"]] <-
          self$extractSimpleType(self$`chronology`)
      }
      if (!is.null(self$`hourOfDay`)) {
        LocalTimeObject[["hourOfDay"]] <-
          self$`hourOfDay`
      }
      if (!is.null(self$`minuteOfHour`)) {
        LocalTimeObject[["minuteOfHour"]] <-
          self$`minuteOfHour`
      }
      if (!is.null(self$`secondOfMinute`)) {
        LocalTimeObject[["secondOfMinute"]] <-
          self$`secondOfMinute`
      }
      if (!is.null(self$`millisOfSecond`)) {
        LocalTimeObject[["millisOfSecond"]] <-
          self$`millisOfSecond`
      }
      if (!is.null(self$`millisOfDay`)) {
        LocalTimeObject[["millisOfDay"]] <-
          self$`millisOfDay`
      }
      if (!is.null(self$`fields`)) {
        LocalTimeObject[["fields"]] <-
          self$extractSimpleType(self$`fields`)
      }
      if (!is.null(self$`values`)) {
        LocalTimeObject[["values"]] <-
          self$`values`
      }
      if (!is.null(self$`fieldTypes`)) {
        LocalTimeObject[["fieldTypes"]] <-
          self$extractSimpleType(self$`fieldTypes`)
      }
      return(LocalTimeObject)
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
    #' Deserialize JSON string into an instance of LocalTime
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalTime
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`chronology`)) {
        `chronology_object` <- Chronology$new()
        `chronology_object`$fromJSON(jsonlite::toJSON(this_object$`chronology`, auto_unbox = TRUE, digits = NA))
        self$`chronology` <- `chronology_object`
      }
      if (!is.null(this_object$`hourOfDay`)) {
        self$`hourOfDay` <- this_object$`hourOfDay`
      }
      if (!is.null(this_object$`minuteOfHour`)) {
        self$`minuteOfHour` <- this_object$`minuteOfHour`
      }
      if (!is.null(this_object$`secondOfMinute`)) {
        self$`secondOfMinute` <- this_object$`secondOfMinute`
      }
      if (!is.null(this_object$`millisOfSecond`)) {
        self$`millisOfSecond` <- this_object$`millisOfSecond`
      }
      if (!is.null(this_object$`millisOfDay`)) {
        self$`millisOfDay` <- this_object$`millisOfDay`
      }
      if (!is.null(this_object$`fields`)) {
        self$`fields` <- ApiClient$new()$deserializeObj(this_object$`fields`, "array[DateTimeField]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`values`)) {
        self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[integer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`fieldTypes`)) {
        self$`fieldTypes` <- ApiClient$new()$deserializeObj(this_object$`fieldTypes`, "array[DateTimeFieldType]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LocalTime in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LocalTime
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalTime
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`chronology` <- Chronology$new()$fromJSON(jsonlite::toJSON(this_object$`chronology`, auto_unbox = TRUE, digits = NA))
      self$`hourOfDay` <- this_object$`hourOfDay`
      self$`minuteOfHour` <- this_object$`minuteOfHour`
      self$`secondOfMinute` <- this_object$`secondOfMinute`
      self$`millisOfSecond` <- this_object$`millisOfSecond`
      self$`millisOfDay` <- this_object$`millisOfDay`
      self$`fields` <- ApiClient$new()$deserializeObj(this_object$`fields`, "array[DateTimeField]", loadNamespace("openapi"))
      self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[integer]", loadNamespace("openapi"))
      self$`fieldTypes` <- ApiClient$new()$deserializeObj(this_object$`fieldTypes`, "array[DateTimeFieldType]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to LocalTime and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LocalTime
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# LocalTime$unlock()
#
## Below is an example to define the print function
# LocalTime$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LocalTime$lock()

