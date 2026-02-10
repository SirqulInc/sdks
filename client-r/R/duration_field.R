#' Create a new DurationField
#'
#' @description
#' DurationField Class
#'
#' @docType class
#' @title DurationField
#' @description DurationField Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field type  \link{DurationFieldType} [optional]
#' @field supported  character [optional]
#' @field precise  character [optional]
#' @field unitMillis  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DurationField <- R6::R6Class(
  "DurationField",
  public = list(
    `name` = NULL,
    `type` = NULL,
    `supported` = NULL,
    `precise` = NULL,
    `unitMillis` = NULL,

    #' @description
    #' Initialize a new DurationField class.
    #'
    #' @param name name
    #' @param type type
    #' @param supported supported
    #' @param precise precise
    #' @param unitMillis unitMillis
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `type` = NULL, `supported` = NULL, `precise` = NULL, `unitMillis` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`type`)) {
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!is.null(`supported`)) {
        if (!(is.logical(`supported`) && length(`supported`) == 1)) {
          stop(paste("Error! Invalid data for `supported`. Must be a boolean:", `supported`))
        }
        self$`supported` <- `supported`
      }
      if (!is.null(`precise`)) {
        if (!(is.logical(`precise`) && length(`precise`) == 1)) {
          stop(paste("Error! Invalid data for `precise`. Must be a boolean:", `precise`))
        }
        self$`precise` <- `precise`
      }
      if (!is.null(`unitMillis`)) {
        if (!(is.numeric(`unitMillis`) && length(`unitMillis`) == 1)) {
          stop(paste("Error! Invalid data for `unitMillis`. Must be an integer:", `unitMillis`))
        }
        self$`unitMillis` <- `unitMillis`
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
    #' @return DurationField as a base R list.
    #' @examples
    #' # convert array of DurationField (x) to a data frame
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
    #' Convert DurationField to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DurationFieldObject <- list()
      if (!is.null(self$`name`)) {
        DurationFieldObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`type`)) {
        DurationFieldObject[["type"]] <-
          self$extractSimpleType(self$`type`)
      }
      if (!is.null(self$`supported`)) {
        DurationFieldObject[["supported"]] <-
          self$`supported`
      }
      if (!is.null(self$`precise`)) {
        DurationFieldObject[["precise"]] <-
          self$`precise`
      }
      if (!is.null(self$`unitMillis`)) {
        DurationFieldObject[["unitMillis"]] <-
          self$`unitMillis`
      }
      return(DurationFieldObject)
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
    #' Deserialize JSON string into an instance of DurationField
    #'
    #' @param input_json the JSON input
    #' @return the instance of DurationField
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`type`)) {
        `type_object` <- DurationFieldType$new()
        `type_object`$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
        self$`type` <- `type_object`
      }
      if (!is.null(this_object$`supported`)) {
        self$`supported` <- this_object$`supported`
      }
      if (!is.null(this_object$`precise`)) {
        self$`precise` <- this_object$`precise`
      }
      if (!is.null(this_object$`unitMillis`)) {
        self$`unitMillis` <- this_object$`unitMillis`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DurationField in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DurationField
    #'
    #' @param input_json the JSON input
    #' @return the instance of DurationField
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`type` <- DurationFieldType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self$`supported` <- this_object$`supported`
      self$`precise` <- this_object$`precise`
      self$`unitMillis` <- this_object$`unitMillis`
      self
    },

    #' @description
    #' Validate JSON input with respect to DurationField and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DurationField
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
# DurationField$unlock()
#
## Below is an example to define the print function
# DurationField$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DurationField$lock()

