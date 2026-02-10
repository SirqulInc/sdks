#' Create a new DateTimeFieldType
#'
#' @description
#' DateTimeFieldType Class
#'
#' @docType class
#' @title DateTimeFieldType
#' @description DateTimeFieldType Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field rangeDurationType  \link{DurationFieldType} [optional]
#' @field durationType  \link{DurationFieldType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DateTimeFieldType <- R6::R6Class(
  "DateTimeFieldType",
  public = list(
    `name` = NULL,
    `rangeDurationType` = NULL,
    `durationType` = NULL,

    #' @description
    #' Initialize a new DateTimeFieldType class.
    #'
    #' @param name name
    #' @param rangeDurationType rangeDurationType
    #' @param durationType durationType
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `rangeDurationType` = NULL, `durationType` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`rangeDurationType`)) {
        stopifnot(R6::is.R6(`rangeDurationType`))
        self$`rangeDurationType` <- `rangeDurationType`
      }
      if (!is.null(`durationType`)) {
        stopifnot(R6::is.R6(`durationType`))
        self$`durationType` <- `durationType`
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
    #' @return DateTimeFieldType as a base R list.
    #' @examples
    #' # convert array of DateTimeFieldType (x) to a data frame
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
    #' Convert DateTimeFieldType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DateTimeFieldTypeObject <- list()
      if (!is.null(self$`name`)) {
        DateTimeFieldTypeObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`rangeDurationType`)) {
        DateTimeFieldTypeObject[["rangeDurationType"]] <-
          self$extractSimpleType(self$`rangeDurationType`)
      }
      if (!is.null(self$`durationType`)) {
        DateTimeFieldTypeObject[["durationType"]] <-
          self$extractSimpleType(self$`durationType`)
      }
      return(DateTimeFieldTypeObject)
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
    #' Deserialize JSON string into an instance of DateTimeFieldType
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateTimeFieldType
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`rangeDurationType`)) {
        `rangedurationtype_object` <- DurationFieldType$new()
        `rangedurationtype_object`$fromJSON(jsonlite::toJSON(this_object$`rangeDurationType`, auto_unbox = TRUE, digits = NA))
        self$`rangeDurationType` <- `rangedurationtype_object`
      }
      if (!is.null(this_object$`durationType`)) {
        `durationtype_object` <- DurationFieldType$new()
        `durationtype_object`$fromJSON(jsonlite::toJSON(this_object$`durationType`, auto_unbox = TRUE, digits = NA))
        self$`durationType` <- `durationtype_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DateTimeFieldType in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DateTimeFieldType
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateTimeFieldType
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`rangeDurationType` <- DurationFieldType$new()$fromJSON(jsonlite::toJSON(this_object$`rangeDurationType`, auto_unbox = TRUE, digits = NA))
      self$`durationType` <- DurationFieldType$new()$fromJSON(jsonlite::toJSON(this_object$`durationType`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to DateTimeFieldType and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DateTimeFieldType
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
# DateTimeFieldType$unlock()
#
## Below is an example to define the print function
# DateTimeFieldType$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DateTimeFieldType$lock()

