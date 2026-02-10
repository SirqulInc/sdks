#' Create a new GeoBox
#'
#' @description
#' GeoBox Class
#'
#' @docType class
#' @title GeoBox
#' @description GeoBox Class
#' @format An \code{R6Class} generator object
#' @field north  numeric [optional]
#' @field east  numeric [optional]
#' @field south  numeric [optional]
#' @field west  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoBox <- R6::R6Class(
  "GeoBox",
  public = list(
    `north` = NULL,
    `east` = NULL,
    `south` = NULL,
    `west` = NULL,

    #' @description
    #' Initialize a new GeoBox class.
    #'
    #' @param north north
    #' @param east east
    #' @param south south
    #' @param west west
    #' @param ... Other optional arguments.
    initialize = function(`north` = NULL, `east` = NULL, `south` = NULL, `west` = NULL, ...) {
      if (!is.null(`north`)) {
        if (!(is.numeric(`north`) && length(`north`) == 1)) {
          stop(paste("Error! Invalid data for `north`. Must be a number:", `north`))
        }
        self$`north` <- `north`
      }
      if (!is.null(`east`)) {
        if (!(is.numeric(`east`) && length(`east`) == 1)) {
          stop(paste("Error! Invalid data for `east`. Must be a number:", `east`))
        }
        self$`east` <- `east`
      }
      if (!is.null(`south`)) {
        if (!(is.numeric(`south`) && length(`south`) == 1)) {
          stop(paste("Error! Invalid data for `south`. Must be a number:", `south`))
        }
        self$`south` <- `south`
      }
      if (!is.null(`west`)) {
        if (!(is.numeric(`west`) && length(`west`) == 1)) {
          stop(paste("Error! Invalid data for `west`. Must be a number:", `west`))
        }
        self$`west` <- `west`
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
    #' @return GeoBox as a base R list.
    #' @examples
    #' # convert array of GeoBox (x) to a data frame
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
    #' Convert GeoBox to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoBoxObject <- list()
      if (!is.null(self$`north`)) {
        GeoBoxObject[["north"]] <-
          self$`north`
      }
      if (!is.null(self$`east`)) {
        GeoBoxObject[["east"]] <-
          self$`east`
      }
      if (!is.null(self$`south`)) {
        GeoBoxObject[["south"]] <-
          self$`south`
      }
      if (!is.null(self$`west`)) {
        GeoBoxObject[["west"]] <-
          self$`west`
      }
      return(GeoBoxObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoBox
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoBox
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`north`)) {
        self$`north` <- this_object$`north`
      }
      if (!is.null(this_object$`east`)) {
        self$`east` <- this_object$`east`
      }
      if (!is.null(this_object$`south`)) {
        self$`south` <- this_object$`south`
      }
      if (!is.null(this_object$`west`)) {
        self$`west` <- this_object$`west`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoBox in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoBox
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoBox
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`north` <- this_object$`north`
      self$`east` <- this_object$`east`
      self$`south` <- this_object$`south`
      self$`west` <- this_object$`west`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoBox and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoBox
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
# GeoBox$unlock()
#
## Below is an example to define the print function
# GeoBox$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoBox$lock()

