#' Create a new Dimensions
#'
#' @description
#' Dimensions Class
#'
#' @docType class
#' @title Dimensions
#' @description Dimensions Class
#' @format An \code{R6Class} generator object
#' @field width  numeric [optional]
#' @field height  numeric [optional]
#' @field depth  numeric [optional]
#' @field volume  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Dimensions <- R6::R6Class(
  "Dimensions",
  public = list(
    `width` = NULL,
    `height` = NULL,
    `depth` = NULL,
    `volume` = NULL,

    #' @description
    #' Initialize a new Dimensions class.
    #'
    #' @param width width
    #' @param height height
    #' @param depth depth
    #' @param volume volume
    #' @param ... Other optional arguments.
    initialize = function(`width` = NULL, `height` = NULL, `depth` = NULL, `volume` = NULL, ...) {
      if (!is.null(`width`)) {
        if (!(is.numeric(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be a number:", `width`))
        }
        self$`width` <- `width`
      }
      if (!is.null(`height`)) {
        if (!(is.numeric(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be a number:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`depth`)) {
        if (!(is.numeric(`depth`) && length(`depth`) == 1)) {
          stop(paste("Error! Invalid data for `depth`. Must be a number:", `depth`))
        }
        self$`depth` <- `depth`
      }
      if (!is.null(`volume`)) {
        if (!(is.numeric(`volume`) && length(`volume`) == 1)) {
          stop(paste("Error! Invalid data for `volume`. Must be a number:", `volume`))
        }
        self$`volume` <- `volume`
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
    #' @return Dimensions as a base R list.
    #' @examples
    #' # convert array of Dimensions (x) to a data frame
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
    #' Convert Dimensions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DimensionsObject <- list()
      if (!is.null(self$`width`)) {
        DimensionsObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`height`)) {
        DimensionsObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`depth`)) {
        DimensionsObject[["depth"]] <-
          self$`depth`
      }
      if (!is.null(self$`volume`)) {
        DimensionsObject[["volume"]] <-
          self$`volume`
      }
      return(DimensionsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Dimensions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Dimensions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`depth`)) {
        self$`depth` <- this_object$`depth`
      }
      if (!is.null(this_object$`volume`)) {
        self$`volume` <- this_object$`volume`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Dimensions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Dimensions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Dimensions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`width` <- this_object$`width`
      self$`height` <- this_object$`height`
      self$`depth` <- this_object$`depth`
      self$`volume` <- this_object$`volume`
      self
    },

    #' @description
    #' Validate JSON input with respect to Dimensions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Dimensions
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
# Dimensions$unlock()
#
## Below is an example to define the print function
# Dimensions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Dimensions$lock()

