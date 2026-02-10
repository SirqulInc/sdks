#' Create a new ApplicationSettingsResponse
#'
#' @description
#' ApplicationSettingsResponse Class
#'
#' @docType class
#' @title ApplicationSettingsResponse
#' @description ApplicationSettingsResponse Class
#' @format An \code{R6Class} generator object
#' @field application  \link{ApplicationMiniResponse} [optional]
#' @field termsAcceptedDate  integer [optional]
#' @field updated  integer [optional]
#' @field created  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationSettingsResponse <- R6::R6Class(
  "ApplicationSettingsResponse",
  public = list(
    `application` = NULL,
    `termsAcceptedDate` = NULL,
    `updated` = NULL,
    `created` = NULL,

    #' @description
    #' Initialize a new ApplicationSettingsResponse class.
    #'
    #' @param application application
    #' @param termsAcceptedDate termsAcceptedDate
    #' @param updated updated
    #' @param created created
    #' @param ... Other optional arguments.
    initialize = function(`application` = NULL, `termsAcceptedDate` = NULL, `updated` = NULL, `created` = NULL, ...) {
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`termsAcceptedDate`)) {
        if (!(is.numeric(`termsAcceptedDate`) && length(`termsAcceptedDate`) == 1)) {
          stop(paste("Error! Invalid data for `termsAcceptedDate`. Must be an integer:", `termsAcceptedDate`))
        }
        self$`termsAcceptedDate` <- `termsAcceptedDate`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
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
    #' @return ApplicationSettingsResponse as a base R list.
    #' @examples
    #' # convert array of ApplicationSettingsResponse (x) to a data frame
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
    #' Convert ApplicationSettingsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApplicationSettingsResponseObject <- list()
      if (!is.null(self$`application`)) {
        ApplicationSettingsResponseObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`termsAcceptedDate`)) {
        ApplicationSettingsResponseObject[["termsAcceptedDate"]] <-
          self$`termsAcceptedDate`
      }
      if (!is.null(self$`updated`)) {
        ApplicationSettingsResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`created`)) {
        ApplicationSettingsResponseObject[["created"]] <-
          self$`created`
      }
      return(ApplicationSettingsResponseObject)
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
    #' Deserialize JSON string into an instance of ApplicationSettingsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationSettingsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`application`)) {
        `application_object` <- ApplicationMiniResponse$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`termsAcceptedDate`)) {
        self$`termsAcceptedDate` <- this_object$`termsAcceptedDate`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ApplicationSettingsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationSettingsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationSettingsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`application` <- ApplicationMiniResponse$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`termsAcceptedDate` <- this_object$`termsAcceptedDate`
      self$`updated` <- this_object$`updated`
      self$`created` <- this_object$`created`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApplicationSettingsResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApplicationSettingsResponse
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
# ApplicationSettingsResponse$unlock()
#
## Below is an example to define the print function
# ApplicationSettingsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApplicationSettingsResponse$lock()

