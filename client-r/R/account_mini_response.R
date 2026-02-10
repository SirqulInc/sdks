#' Create a new AccountMiniResponse
#'
#' @description
#' AccountMiniResponse Class
#'
#' @docType class
#' @title AccountMiniResponse
#' @description AccountMiniResponse Class
#' @format An \code{R6Class} generator object
#' @field accountId  integer [optional]
#' @field locationDisplay  character [optional]
#' @field display  character [optional]
#' @field username  character [optional]
#' @field accountType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountMiniResponse <- R6::R6Class(
  "AccountMiniResponse",
  public = list(
    `accountId` = NULL,
    `locationDisplay` = NULL,
    `display` = NULL,
    `username` = NULL,
    `accountType` = NULL,

    #' @description
    #' Initialize a new AccountMiniResponse class.
    #'
    #' @param accountId accountId
    #' @param locationDisplay locationDisplay
    #' @param display display
    #' @param username username
    #' @param accountType accountType
    #' @param ... Other optional arguments.
    initialize = function(`accountId` = NULL, `locationDisplay` = NULL, `display` = NULL, `username` = NULL, `accountType` = NULL, ...) {
      if (!is.null(`accountId`)) {
        if (!(is.numeric(`accountId`) && length(`accountId`) == 1)) {
          stop(paste("Error! Invalid data for `accountId`. Must be an integer:", `accountId`))
        }
        self$`accountId` <- `accountId`
      }
      if (!is.null(`locationDisplay`)) {
        if (!(is.character(`locationDisplay`) && length(`locationDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `locationDisplay`. Must be a string:", `locationDisplay`))
        }
        self$`locationDisplay` <- `locationDisplay`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!is.null(`accountType`)) {
        if (!(is.character(`accountType`) && length(`accountType`) == 1)) {
          stop(paste("Error! Invalid data for `accountType`. Must be a string:", `accountType`))
        }
        self$`accountType` <- `accountType`
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
    #' @return AccountMiniResponse as a base R list.
    #' @examples
    #' # convert array of AccountMiniResponse (x) to a data frame
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
    #' Convert AccountMiniResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountMiniResponseObject <- list()
      if (!is.null(self$`accountId`)) {
        AccountMiniResponseObject[["accountId"]] <-
          self$`accountId`
      }
      if (!is.null(self$`locationDisplay`)) {
        AccountMiniResponseObject[["locationDisplay"]] <-
          self$`locationDisplay`
      }
      if (!is.null(self$`display`)) {
        AccountMiniResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`username`)) {
        AccountMiniResponseObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`accountType`)) {
        AccountMiniResponseObject[["accountType"]] <-
          self$`accountType`
      }
      return(AccountMiniResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountMiniResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountMiniResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accountId`)) {
        self$`accountId` <- this_object$`accountId`
      }
      if (!is.null(this_object$`locationDisplay`)) {
        self$`locationDisplay` <- this_object$`locationDisplay`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`accountType`)) {
        self$`accountType` <- this_object$`accountType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountMiniResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountMiniResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountMiniResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accountId` <- this_object$`accountId`
      self$`locationDisplay` <- this_object$`locationDisplay`
      self$`display` <- this_object$`display`
      self$`username` <- this_object$`username`
      self$`accountType` <- this_object$`accountType`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountMiniResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountMiniResponse
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
# AccountMiniResponse$unlock()
#
## Below is an example to define the print function
# AccountMiniResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountMiniResponse$lock()

