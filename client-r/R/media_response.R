#' Create a new MediaResponse
#'
#' @description
#' MediaResponse Class
#'
#' @docType class
#' @title MediaResponse
#' @description MediaResponse Class
#' @format An \code{R6Class} generator object
#' @field mediaType  character [optional]
#' @field duration  integer [optional]
#' @field author  character [optional]
#' @field releaseDate  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MediaResponse <- R6::R6Class(
  "MediaResponse",
  public = list(
    `mediaType` = NULL,
    `duration` = NULL,
    `author` = NULL,
    `releaseDate` = NULL,

    #' @description
    #' Initialize a new MediaResponse class.
    #'
    #' @param mediaType mediaType
    #' @param duration duration
    #' @param author author
    #' @param releaseDate releaseDate
    #' @param ... Other optional arguments.
    initialize = function(`mediaType` = NULL, `duration` = NULL, `author` = NULL, `releaseDate` = NULL, ...) {
      if (!is.null(`mediaType`)) {
        if (!(is.character(`mediaType`) && length(`mediaType`) == 1)) {
          stop(paste("Error! Invalid data for `mediaType`. Must be a string:", `mediaType`))
        }
        self$`mediaType` <- `mediaType`
      }
      if (!is.null(`duration`)) {
        if (!(is.numeric(`duration`) && length(`duration`) == 1)) {
          stop(paste("Error! Invalid data for `duration`. Must be an integer:", `duration`))
        }
        self$`duration` <- `duration`
      }
      if (!is.null(`author`)) {
        if (!(is.character(`author`) && length(`author`) == 1)) {
          stop(paste("Error! Invalid data for `author`. Must be a string:", `author`))
        }
        self$`author` <- `author`
      }
      if (!is.null(`releaseDate`)) {
        if (!(is.numeric(`releaseDate`) && length(`releaseDate`) == 1)) {
          stop(paste("Error! Invalid data for `releaseDate`. Must be an integer:", `releaseDate`))
        }
        self$`releaseDate` <- `releaseDate`
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
    #' @return MediaResponse as a base R list.
    #' @examples
    #' # convert array of MediaResponse (x) to a data frame
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
    #' Convert MediaResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MediaResponseObject <- list()
      if (!is.null(self$`mediaType`)) {
        MediaResponseObject[["mediaType"]] <-
          self$`mediaType`
      }
      if (!is.null(self$`duration`)) {
        MediaResponseObject[["duration"]] <-
          self$`duration`
      }
      if (!is.null(self$`author`)) {
        MediaResponseObject[["author"]] <-
          self$`author`
      }
      if (!is.null(self$`releaseDate`)) {
        MediaResponseObject[["releaseDate"]] <-
          self$`releaseDate`
      }
      return(MediaResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MediaResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MediaResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mediaType`)) {
        self$`mediaType` <- this_object$`mediaType`
      }
      if (!is.null(this_object$`duration`)) {
        self$`duration` <- this_object$`duration`
      }
      if (!is.null(this_object$`author`)) {
        self$`author` <- this_object$`author`
      }
      if (!is.null(this_object$`releaseDate`)) {
        self$`releaseDate` <- this_object$`releaseDate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MediaResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MediaResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MediaResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mediaType` <- this_object$`mediaType`
      self$`duration` <- this_object$`duration`
      self$`author` <- this_object$`author`
      self$`releaseDate` <- this_object$`releaseDate`
      self
    },

    #' @description
    #' Validate JSON input with respect to MediaResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MediaResponse
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
# MediaResponse$unlock()
#
## Below is an example to define the print function
# MediaResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MediaResponse$lock()

