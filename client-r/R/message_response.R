#' Create a new MessageResponse
#'
#' @description
#' MessageResponse Class
#'
#' @docType class
#' @title MessageResponse
#' @description MessageResponse Class
#' @format An \code{R6Class} generator object
#' @field message  character [optional]
#' @field code  integer [optional]
#' @field ids  character [optional]
#' @field updateValue  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessageResponse <- R6::R6Class(
  "MessageResponse",
  public = list(
    `message` = NULL,
    `code` = NULL,
    `ids` = NULL,
    `updateValue` = NULL,

    #' @description
    #' Initialize a new MessageResponse class.
    #'
    #' @param message message
    #' @param code code
    #' @param ids ids
    #' @param updateValue updateValue
    #' @param ... Other optional arguments.
    initialize = function(`message` = NULL, `code` = NULL, `ids` = NULL, `updateValue` = NULL, ...) {
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`code`)) {
        if (!(is.numeric(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be an integer:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`ids`)) {
        if (!(is.character(`ids`) && length(`ids`) == 1)) {
          stop(paste("Error! Invalid data for `ids`. Must be a string:", `ids`))
        }
        self$`ids` <- `ids`
      }
      if (!is.null(`updateValue`)) {
        if (!(is.character(`updateValue`) && length(`updateValue`) == 1)) {
          stop(paste("Error! Invalid data for `updateValue`. Must be a string:", `updateValue`))
        }
        self$`updateValue` <- `updateValue`
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
    #' @return MessageResponse as a base R list.
    #' @examples
    #' # convert array of MessageResponse (x) to a data frame
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
    #' Convert MessageResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MessageResponseObject <- list()
      if (!is.null(self$`message`)) {
        MessageResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`code`)) {
        MessageResponseObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`ids`)) {
        MessageResponseObject[["ids"]] <-
          self$`ids`
      }
      if (!is.null(self$`updateValue`)) {
        MessageResponseObject[["updateValue"]] <-
          self$`updateValue`
      }
      return(MessageResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MessageResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`ids`)) {
        self$`ids` <- this_object$`ids`
      }
      if (!is.null(this_object$`updateValue`)) {
        self$`updateValue` <- this_object$`updateValue`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MessageResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MessageResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`code` <- this_object$`code`
      self$`ids` <- this_object$`ids`
      self$`updateValue` <- this_object$`updateValue`
      self
    },

    #' @description
    #' Validate JSON input with respect to MessageResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MessageResponse
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
# MessageResponse$unlock()
#
## Below is an example to define the print function
# MessageResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MessageResponse$lock()

