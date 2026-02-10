#' Create a new GeocodeLatLngResponse
#'
#' @description
#' GeocodeLatLngResponse Class
#'
#' @docType class
#' @title GeocodeLatLngResponse
#' @description GeocodeLatLngResponse Class
#' @format An \code{R6Class} generator object
#' @field lat  numeric [optional]
#' @field lng  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeocodeLatLngResponse <- R6::R6Class(
  "GeocodeLatLngResponse",
  public = list(
    `lat` = NULL,
    `lng` = NULL,

    #' @description
    #' Initialize a new GeocodeLatLngResponse class.
    #'
    #' @param lat lat
    #' @param lng lng
    #' @param ... Other optional arguments.
    initialize = function(`lat` = NULL, `lng` = NULL, ...) {
      if (!is.null(`lat`)) {
        if (!(is.numeric(`lat`) && length(`lat`) == 1)) {
          stop(paste("Error! Invalid data for `lat`. Must be a number:", `lat`))
        }
        self$`lat` <- `lat`
      }
      if (!is.null(`lng`)) {
        if (!(is.numeric(`lng`) && length(`lng`) == 1)) {
          stop(paste("Error! Invalid data for `lng`. Must be a number:", `lng`))
        }
        self$`lng` <- `lng`
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
    #' @return GeocodeLatLngResponse as a base R list.
    #' @examples
    #' # convert array of GeocodeLatLngResponse (x) to a data frame
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
    #' Convert GeocodeLatLngResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeocodeLatLngResponseObject <- list()
      if (!is.null(self$`lat`)) {
        GeocodeLatLngResponseObject[["lat"]] <-
          self$`lat`
      }
      if (!is.null(self$`lng`)) {
        GeocodeLatLngResponseObject[["lng"]] <-
          self$`lng`
      }
      return(GeocodeLatLngResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeocodeLatLngResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeocodeLatLngResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`lat`)) {
        self$`lat` <- this_object$`lat`
      }
      if (!is.null(this_object$`lng`)) {
        self$`lng` <- this_object$`lng`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeocodeLatLngResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeocodeLatLngResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeocodeLatLngResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`lat` <- this_object$`lat`
      self$`lng` <- this_object$`lng`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeocodeLatLngResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeocodeLatLngResponse
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
# GeocodeLatLngResponse$unlock()
#
## Below is an example to define the print function
# GeocodeLatLngResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeocodeLatLngResponse$lock()

