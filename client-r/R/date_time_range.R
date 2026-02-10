#' Create a new DateTimeRange
#'
#' @description
#' DateTimeRange Class
#'
#' @docType class
#' @title DateTimeRange
#' @description DateTimeRange Class
#' @format An \code{R6Class} generator object
#' @field start  character [optional]
#' @field end  character [optional]
#' @field interval  \link{Interval} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DateTimeRange <- R6::R6Class(
  "DateTimeRange",
  public = list(
    `start` = NULL,
    `end` = NULL,
    `interval` = NULL,

    #' @description
    #' Initialize a new DateTimeRange class.
    #'
    #' @param start start
    #' @param end end
    #' @param interval interval
    #' @param ... Other optional arguments.
    initialize = function(`start` = NULL, `end` = NULL, `interval` = NULL, ...) {
      if (!is.null(`start`)) {
        if (!is.character(`start`)) {
          stop(paste("Error! Invalid data for `start`. Must be a string:", `start`))
        }
        self$`start` <- `start`
      }
      if (!is.null(`end`)) {
        if (!is.character(`end`)) {
          stop(paste("Error! Invalid data for `end`. Must be a string:", `end`))
        }
        self$`end` <- `end`
      }
      if (!is.null(`interval`)) {
        stopifnot(R6::is.R6(`interval`))
        self$`interval` <- `interval`
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
    #' @return DateTimeRange as a base R list.
    #' @examples
    #' # convert array of DateTimeRange (x) to a data frame
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
    #' Convert DateTimeRange to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DateTimeRangeObject <- list()
      if (!is.null(self$`start`)) {
        DateTimeRangeObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`end`)) {
        DateTimeRangeObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`interval`)) {
        DateTimeRangeObject[["interval"]] <-
          self$extractSimpleType(self$`interval`)
      }
      return(DateTimeRangeObject)
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
    #' Deserialize JSON string into an instance of DateTimeRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateTimeRange
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`interval`)) {
        `interval_object` <- Interval$new()
        `interval_object`$fromJSON(jsonlite::toJSON(this_object$`interval`, auto_unbox = TRUE, digits = NA))
        self$`interval` <- `interval_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DateTimeRange in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DateTimeRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateTimeRange
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`start` <- this_object$`start`
      self$`end` <- this_object$`end`
      self$`interval` <- Interval$new()$fromJSON(jsonlite::toJSON(this_object$`interval`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to DateTimeRange and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DateTimeRange
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
# DateTimeRange$unlock()
#
## Below is an example to define the print function
# DateTimeRange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DateTimeRange$lock()

