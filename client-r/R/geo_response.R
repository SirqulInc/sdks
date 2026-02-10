#' Create a new GeoResponse
#'
#' @description
#' GeoResponse Class
#'
#' @docType class
#' @title GeoResponse
#' @description GeoResponse Class
#' @format An \code{R6Class} generator object
#' @field geoId  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoResponse <- R6::R6Class(
  "GeoResponse",
  public = list(
    `geoId` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,

    #' @description
    #' Initialize a new GeoResponse class.
    #'
    #' @param geoId geoId
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param ... Other optional arguments.
    initialize = function(`geoId` = NULL, `latitude` = NULL, `longitude` = NULL, ...) {
      if (!is.null(`geoId`)) {
        if (!(is.character(`geoId`) && length(`geoId`) == 1)) {
          stop(paste("Error! Invalid data for `geoId`. Must be a string:", `geoId`))
        }
        self$`geoId` <- `geoId`
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
    #' @return GeoResponse as a base R list.
    #' @examples
    #' # convert array of GeoResponse (x) to a data frame
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
    #' Convert GeoResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoResponseObject <- list()
      if (!is.null(self$`geoId`)) {
        GeoResponseObject[["geoId"]] <-
          self$`geoId`
      }
      if (!is.null(self$`latitude`)) {
        GeoResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        GeoResponseObject[["longitude"]] <-
          self$`longitude`
      }
      return(GeoResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`geoId`)) {
        self$`geoId` <- this_object$`geoId`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`geoId` <- this_object$`geoId`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoResponse
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
# GeoResponse$unlock()
#
## Below is an example to define the print function
# GeoResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoResponse$lock()

