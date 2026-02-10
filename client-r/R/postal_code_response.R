#' Create a new PostalCodeResponse
#'
#' @description
#' PostalCodeResponse Class
#'
#' @docType class
#' @title PostalCodeResponse
#' @description PostalCodeResponse Class
#' @format An \code{R6Class} generator object
#' @field city  character [optional]
#' @field stateCode  character [optional]
#' @field code  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field timezone  character [optional]
#' @field utcOffset  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostalCodeResponse <- R6::R6Class(
  "PostalCodeResponse",
  public = list(
    `city` = NULL,
    `stateCode` = NULL,
    `code` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `timezone` = NULL,
    `utcOffset` = NULL,

    #' @description
    #' Initialize a new PostalCodeResponse class.
    #'
    #' @param city city
    #' @param stateCode stateCode
    #' @param code code
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param timezone timezone
    #' @param utcOffset utcOffset
    #' @param ... Other optional arguments.
    initialize = function(`city` = NULL, `stateCode` = NULL, `code` = NULL, `latitude` = NULL, `longitude` = NULL, `timezone` = NULL, `utcOffset` = NULL, ...) {
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`stateCode`)) {
        if (!(is.character(`stateCode`) && length(`stateCode`) == 1)) {
          stop(paste("Error! Invalid data for `stateCode`. Must be a string:", `stateCode`))
        }
        self$`stateCode` <- `stateCode`
      }
      if (!is.null(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!is.null(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
      }
      if (!is.null(`timezone`)) {
        if (!(is.character(`timezone`) && length(`timezone`) == 1)) {
          stop(paste("Error! Invalid data for `timezone`. Must be a string:", `timezone`))
        }
        self$`timezone` <- `timezone`
      }
      if (!is.null(`utcOffset`)) {
        if (!(is.numeric(`utcOffset`) && length(`utcOffset`) == 1)) {
          stop(paste("Error! Invalid data for `utcOffset`. Must be an integer:", `utcOffset`))
        }
        self$`utcOffset` <- `utcOffset`
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
    #' @return PostalCodeResponse as a base R list.
    #' @examples
    #' # convert array of PostalCodeResponse (x) to a data frame
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
    #' Convert PostalCodeResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostalCodeResponseObject <- list()
      if (!is.null(self$`city`)) {
        PostalCodeResponseObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`stateCode`)) {
        PostalCodeResponseObject[["stateCode"]] <-
          self$`stateCode`
      }
      if (!is.null(self$`code`)) {
        PostalCodeResponseObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`latitude`)) {
        PostalCodeResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        PostalCodeResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`timezone`)) {
        PostalCodeResponseObject[["timezone"]] <-
          self$`timezone`
      }
      if (!is.null(self$`utcOffset`)) {
        PostalCodeResponseObject[["utcOffset"]] <-
          self$`utcOffset`
      }
      return(PostalCodeResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostalCodeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostalCodeResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`stateCode`)) {
        self$`stateCode` <- this_object$`stateCode`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`timezone`)) {
        self$`timezone` <- this_object$`timezone`
      }
      if (!is.null(this_object$`utcOffset`)) {
        self$`utcOffset` <- this_object$`utcOffset`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostalCodeResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostalCodeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostalCodeResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`city` <- this_object$`city`
      self$`stateCode` <- this_object$`stateCode`
      self$`code` <- this_object$`code`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`timezone` <- this_object$`timezone`
      self$`utcOffset` <- this_object$`utcOffset`
      self
    },

    #' @description
    #' Validate JSON input with respect to PostalCodeResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostalCodeResponse
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
# PostalCodeResponse$unlock()
#
## Below is an example to define the print function
# PostalCodeResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostalCodeResponse$lock()

