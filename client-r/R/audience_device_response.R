#' Create a new AudienceDeviceResponse
#'
#' @description
#' AudienceDeviceResponse Class
#'
#' @docType class
#' @title AudienceDeviceResponse
#' @description AudienceDeviceResponse Class
#' @format An \code{R6Class} generator object
#' @field deviceId  integer [optional]
#' @field active  character [optional]
#' @field name  character [optional]
#' @field display  character [optional]
#' @field minimum  integer [optional]
#' @field maximum  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AudienceDeviceResponse <- R6::R6Class(
  "AudienceDeviceResponse",
  public = list(
    `deviceId` = NULL,
    `active` = NULL,
    `name` = NULL,
    `display` = NULL,
    `minimum` = NULL,
    `maximum` = NULL,

    #' @description
    #' Initialize a new AudienceDeviceResponse class.
    #'
    #' @param deviceId deviceId
    #' @param active active
    #' @param name name
    #' @param display display
    #' @param minimum minimum
    #' @param maximum maximum
    #' @param ... Other optional arguments.
    initialize = function(`deviceId` = NULL, `active` = NULL, `name` = NULL, `display` = NULL, `minimum` = NULL, `maximum` = NULL, ...) {
      if (!is.null(`deviceId`)) {
        if (!(is.numeric(`deviceId`) && length(`deviceId`) == 1)) {
          stop(paste("Error! Invalid data for `deviceId`. Must be an integer:", `deviceId`))
        }
        self$`deviceId` <- `deviceId`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
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
    #' @return AudienceDeviceResponse as a base R list.
    #' @examples
    #' # convert array of AudienceDeviceResponse (x) to a data frame
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
    #' Convert AudienceDeviceResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AudienceDeviceResponseObject <- list()
      if (!is.null(self$`deviceId`)) {
        AudienceDeviceResponseObject[["deviceId"]] <-
          self$`deviceId`
      }
      if (!is.null(self$`active`)) {
        AudienceDeviceResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`name`)) {
        AudienceDeviceResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`display`)) {
        AudienceDeviceResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`minimum`)) {
        AudienceDeviceResponseObject[["minimum"]] <-
          self$`minimum`
      }
      if (!is.null(self$`maximum`)) {
        AudienceDeviceResponseObject[["maximum"]] <-
          self$`maximum`
      }
      return(AudienceDeviceResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AudienceDeviceResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceDeviceResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`deviceId`)) {
        self$`deviceId` <- this_object$`deviceId`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
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
    #' @return AudienceDeviceResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AudienceDeviceResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceDeviceResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`deviceId` <- this_object$`deviceId`
      self$`active` <- this_object$`active`
      self$`name` <- this_object$`name`
      self$`display` <- this_object$`display`
      self$`minimum` <- this_object$`minimum`
      self$`maximum` <- this_object$`maximum`
      self
    },

    #' @description
    #' Validate JSON input with respect to AudienceDeviceResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AudienceDeviceResponse
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
# AudienceDeviceResponse$unlock()
#
## Below is an example to define the print function
# AudienceDeviceResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AudienceDeviceResponse$lock()

