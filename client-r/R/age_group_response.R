#' Create a new AgeGroupResponse
#'
#' @description
#' AgeGroupResponse Class
#'
#' @docType class
#' @title AgeGroupResponse
#' @description AgeGroupResponse Class
#' @format An \code{R6Class} generator object
#' @field key  character [optional]
#' @field toString  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AgeGroupResponse <- R6::R6Class(
  "AgeGroupResponse",
  public = list(
    `key` = NULL,
    `toString` = NULL,

    #' @description
    #' Initialize a new AgeGroupResponse class.
    #'
    #' @param key key
    #' @param toString toString
    #' @param ... Other optional arguments.
    initialize = function(`key` = NULL, `toString` = NULL, ...) {
      if (!is.null(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
      if (!is.null(`toString`)) {
        if (!(is.character(`toString`) && length(`toString`) == 1)) {
          stop(paste("Error! Invalid data for `toString`. Must be a string:", `toString`))
        }
        self$`toString` <- `toString`
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
    #' @return AgeGroupResponse as a base R list.
    #' @examples
    #' # convert array of AgeGroupResponse (x) to a data frame
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
    #' Convert AgeGroupResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AgeGroupResponseObject <- list()
      if (!is.null(self$`key`)) {
        AgeGroupResponseObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`toString`)) {
        AgeGroupResponseObject[["toString"]] <-
          self$`toString`
      }
      return(AgeGroupResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AgeGroupResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AgeGroupResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`toString`)) {
        self$`toString` <- this_object$`toString`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AgeGroupResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AgeGroupResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AgeGroupResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`key` <- this_object$`key`
      self$`toString` <- this_object$`toString`
      self
    },

    #' @description
    #' Validate JSON input with respect to AgeGroupResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AgeGroupResponse
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
# AgeGroupResponse$unlock()
#
## Below is an example to define the print function
# AgeGroupResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AgeGroupResponse$lock()

