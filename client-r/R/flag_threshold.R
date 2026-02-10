#' Create a new FlagThreshold
#'
#' @description
#' FlagThreshold Class
#'
#' @docType class
#' @title FlagThreshold
#' @description FlagThreshold Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field threshold  integer [optional]
#' @field flagableObjectType  character [optional]
#' @field application  \link{Application} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FlagThreshold <- R6::R6Class(
  "FlagThreshold",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `threshold` = NULL,
    `flagableObjectType` = NULL,
    `application` = NULL,

    #' @description
    #' Initialize a new FlagThreshold class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param threshold threshold
    #' @param flagableObjectType flagableObjectType
    #' @param application application
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `threshold` = NULL, `flagableObjectType` = NULL, `application` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`threshold`)) {
        if (!(is.numeric(`threshold`) && length(`threshold`) == 1)) {
          stop(paste("Error! Invalid data for `threshold`. Must be an integer:", `threshold`))
        }
        self$`threshold` <- `threshold`
      }
      if (!is.null(`flagableObjectType`)) {
        if (!(is.character(`flagableObjectType`) && length(`flagableObjectType`) == 1)) {
          stop(paste("Error! Invalid data for `flagableObjectType`. Must be a string:", `flagableObjectType`))
        }
        self$`flagableObjectType` <- `flagableObjectType`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
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
    #' @return FlagThreshold as a base R list.
    #' @examples
    #' # convert array of FlagThreshold (x) to a data frame
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
    #' Convert FlagThreshold to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FlagThresholdObject <- list()
      if (!is.null(self$`id`)) {
        FlagThresholdObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        FlagThresholdObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        FlagThresholdObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`threshold`)) {
        FlagThresholdObject[["threshold"]] <-
          self$`threshold`
      }
      if (!is.null(self$`flagableObjectType`)) {
        FlagThresholdObject[["flagableObjectType"]] <-
          self$`flagableObjectType`
      }
      if (!is.null(self$`application`)) {
        FlagThresholdObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      return(FlagThresholdObject)
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
    #' Deserialize JSON string into an instance of FlagThreshold
    #'
    #' @param input_json the JSON input
    #' @return the instance of FlagThreshold
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`threshold`)) {
        self$`threshold` <- this_object$`threshold`
      }
      if (!is.null(this_object$`flagableObjectType`)) {
        self$`flagableObjectType` <- this_object$`flagableObjectType`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FlagThreshold in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FlagThreshold
    #'
    #' @param input_json the JSON input
    #' @return the instance of FlagThreshold
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`threshold` <- this_object$`threshold`
      self$`flagableObjectType` <- this_object$`flagableObjectType`
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to FlagThreshold and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FlagThreshold
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
# FlagThreshold$unlock()
#
## Below is an example to define the print function
# FlagThreshold$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FlagThreshold$lock()

