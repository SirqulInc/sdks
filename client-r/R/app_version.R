#' Create a new AppVersion
#'
#' @description
#' AppVersion Class
#'
#' @docType class
#' @title AppVersion
#' @description AppVersion Class
#' @format An \code{R6Class} generator object
#' @field minorVersion  integer [optional]
#' @field majorVersion  integer [optional]
#' @field versionIndex  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AppVersion <- R6::R6Class(
  "AppVersion",
  public = list(
    `minorVersion` = NULL,
    `majorVersion` = NULL,
    `versionIndex` = NULL,

    #' @description
    #' Initialize a new AppVersion class.
    #'
    #' @param minorVersion minorVersion
    #' @param majorVersion majorVersion
    #' @param versionIndex versionIndex
    #' @param ... Other optional arguments.
    initialize = function(`minorVersion` = NULL, `majorVersion` = NULL, `versionIndex` = NULL, ...) {
      if (!is.null(`minorVersion`)) {
        if (!(is.numeric(`minorVersion`) && length(`minorVersion`) == 1)) {
          stop(paste("Error! Invalid data for `minorVersion`. Must be an integer:", `minorVersion`))
        }
        self$`minorVersion` <- `minorVersion`
      }
      if (!is.null(`majorVersion`)) {
        if (!(is.numeric(`majorVersion`) && length(`majorVersion`) == 1)) {
          stop(paste("Error! Invalid data for `majorVersion`. Must be an integer:", `majorVersion`))
        }
        self$`majorVersion` <- `majorVersion`
      }
      if (!is.null(`versionIndex`)) {
        if (!(is.numeric(`versionIndex`) && length(`versionIndex`) == 1)) {
          stop(paste("Error! Invalid data for `versionIndex`. Must be an integer:", `versionIndex`))
        }
        self$`versionIndex` <- `versionIndex`
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
    #' @return AppVersion as a base R list.
    #' @examples
    #' # convert array of AppVersion (x) to a data frame
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
    #' Convert AppVersion to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AppVersionObject <- list()
      if (!is.null(self$`minorVersion`)) {
        AppVersionObject[["minorVersion"]] <-
          self$`minorVersion`
      }
      if (!is.null(self$`majorVersion`)) {
        AppVersionObject[["majorVersion"]] <-
          self$`majorVersion`
      }
      if (!is.null(self$`versionIndex`)) {
        AppVersionObject[["versionIndex"]] <-
          self$`versionIndex`
      }
      return(AppVersionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AppVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppVersion
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`minorVersion`)) {
        self$`minorVersion` <- this_object$`minorVersion`
      }
      if (!is.null(this_object$`majorVersion`)) {
        self$`majorVersion` <- this_object$`majorVersion`
      }
      if (!is.null(this_object$`versionIndex`)) {
        self$`versionIndex` <- this_object$`versionIndex`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AppVersion in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AppVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppVersion
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`minorVersion` <- this_object$`minorVersion`
      self$`majorVersion` <- this_object$`majorVersion`
      self$`versionIndex` <- this_object$`versionIndex`
      self
    },

    #' @description
    #' Validate JSON input with respect to AppVersion and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AppVersion
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
# AppVersion$unlock()
#
## Below is an example to define the print function
# AppVersion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AppVersion$lock()

