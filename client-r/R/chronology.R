#' Create a new Chronology
#'
#' @description
#' Chronology Class
#'
#' @docType class
#' @title Chronology
#' @description Chronology Class
#' @format An \code{R6Class} generator object
#' @field zone  \link{DateTimeZone} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Chronology <- R6::R6Class(
  "Chronology",
  public = list(
    `zone` = NULL,

    #' @description
    #' Initialize a new Chronology class.
    #'
    #' @param zone zone
    #' @param ... Other optional arguments.
    initialize = function(`zone` = NULL, ...) {
      if (!is.null(`zone`)) {
        stopifnot(R6::is.R6(`zone`))
        self$`zone` <- `zone`
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
    #' @return Chronology as a base R list.
    #' @examples
    #' # convert array of Chronology (x) to a data frame
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
    #' Convert Chronology to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ChronologyObject <- list()
      if (!is.null(self$`zone`)) {
        ChronologyObject[["zone"]] <-
          self$extractSimpleType(self$`zone`)
      }
      return(ChronologyObject)
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
    #' Deserialize JSON string into an instance of Chronology
    #'
    #' @param input_json the JSON input
    #' @return the instance of Chronology
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`zone`)) {
        `zone_object` <- DateTimeZone$new()
        `zone_object`$fromJSON(jsonlite::toJSON(this_object$`zone`, auto_unbox = TRUE, digits = NA))
        self$`zone` <- `zone_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Chronology in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Chronology
    #'
    #' @param input_json the JSON input
    #' @return the instance of Chronology
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`zone` <- DateTimeZone$new()$fromJSON(jsonlite::toJSON(this_object$`zone`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Chronology and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Chronology
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
# Chronology$unlock()
#
## Below is an example to define the print function
# Chronology$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Chronology$lock()

