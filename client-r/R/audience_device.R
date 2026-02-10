#' Create a new AudienceDevice
#'
#' @description
#' AudienceDevice Class
#'
#' @docType class
#' @title AudienceDevice
#' @description AudienceDevice Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field name  character [optional]
#' @field minimum  integer [optional]
#' @field maximum  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AudienceDevice <- R6::R6Class(
  "AudienceDevice",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `name` = NULL,
    `minimum` = NULL,
    `maximum` = NULL,

    #' @description
    #' Initialize a new AudienceDevice class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param name name
    #' @param minimum minimum
    #' @param maximum maximum
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `name` = NULL, `minimum` = NULL, `maximum` = NULL, ...) {
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`minimum`)) {
        if (!(is.numeric(`minimum`) && length(`minimum`) == 1)) {
          stop(paste("Error! Invalid data for `minimum`. Must be an integer:", `minimum`))
        }
        self$`minimum` <- `minimum`
      }
      if (!is.null(`maximum`)) {
        if (!(is.numeric(`maximum`) && length(`maximum`) == 1)) {
          stop(paste("Error! Invalid data for `maximum`. Must be an integer:", `maximum`))
        }
        self$`maximum` <- `maximum`
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
    #' @return AudienceDevice as a base R list.
    #' @examples
    #' # convert array of AudienceDevice (x) to a data frame
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
    #' Convert AudienceDevice to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AudienceDeviceObject <- list()
      if (!is.null(self$`id`)) {
        AudienceDeviceObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        AudienceDeviceObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        AudienceDeviceObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`name`)) {
        AudienceDeviceObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`minimum`)) {
        AudienceDeviceObject[["minimum"]] <-
          self$`minimum`
      }
      if (!is.null(self$`maximum`)) {
        AudienceDeviceObject[["maximum"]] <-
          self$`maximum`
      }
      return(AudienceDeviceObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AudienceDevice
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceDevice
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`minimum`)) {
        self$`minimum` <- this_object$`minimum`
      }
      if (!is.null(this_object$`maximum`)) {
        self$`maximum` <- this_object$`maximum`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AudienceDevice in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AudienceDevice
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceDevice
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`name` <- this_object$`name`
      self$`minimum` <- this_object$`minimum`
      self$`maximum` <- this_object$`maximum`
      self
    },

    #' @description
    #' Validate JSON input with respect to AudienceDevice and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AudienceDevice
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
# AudienceDevice$unlock()
#
## Below is an example to define the print function
# AudienceDevice$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AudienceDevice$lock()

