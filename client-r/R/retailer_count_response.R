#' Create a new RetailerCountResponse
#'
#' @description
#' RetailerCountResponse Class
#'
#' @docType class
#' @title RetailerCountResponse
#' @description RetailerCountResponse Class
#' @format An \code{R6Class} generator object
#' @field locations  integer [optional]
#' @field transactions  integer [optional]
#' @field offers  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RetailerCountResponse <- R6::R6Class(
  "RetailerCountResponse",
  public = list(
    `locations` = NULL,
    `transactions` = NULL,
    `offers` = NULL,

    #' @description
    #' Initialize a new RetailerCountResponse class.
    #'
    #' @param locations locations
    #' @param transactions transactions
    #' @param offers offers
    #' @param ... Other optional arguments.
    initialize = function(`locations` = NULL, `transactions` = NULL, `offers` = NULL, ...) {
      if (!is.null(`locations`)) {
        if (!(is.numeric(`locations`) && length(`locations`) == 1)) {
          stop(paste("Error! Invalid data for `locations`. Must be an integer:", `locations`))
        }
        self$`locations` <- `locations`
      }
      if (!is.null(`transactions`)) {
        if (!(is.numeric(`transactions`) && length(`transactions`) == 1)) {
          stop(paste("Error! Invalid data for `transactions`. Must be an integer:", `transactions`))
        }
        self$`transactions` <- `transactions`
      }
      if (!is.null(`offers`)) {
        if (!(is.numeric(`offers`) && length(`offers`) == 1)) {
          stop(paste("Error! Invalid data for `offers`. Must be an integer:", `offers`))
        }
        self$`offers` <- `offers`
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
    #' @return RetailerCountResponse as a base R list.
    #' @examples
    #' # convert array of RetailerCountResponse (x) to a data frame
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
    #' Convert RetailerCountResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RetailerCountResponseObject <- list()
      if (!is.null(self$`locations`)) {
        RetailerCountResponseObject[["locations"]] <-
          self$`locations`
      }
      if (!is.null(self$`transactions`)) {
        RetailerCountResponseObject[["transactions"]] <-
          self$`transactions`
      }
      if (!is.null(self$`offers`)) {
        RetailerCountResponseObject[["offers"]] <-
          self$`offers`
      }
      return(RetailerCountResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RetailerCountResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerCountResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`locations`)) {
        self$`locations` <- this_object$`locations`
      }
      if (!is.null(this_object$`transactions`)) {
        self$`transactions` <- this_object$`transactions`
      }
      if (!is.null(this_object$`offers`)) {
        self$`offers` <- this_object$`offers`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RetailerCountResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RetailerCountResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerCountResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`locations` <- this_object$`locations`
      self$`transactions` <- this_object$`transactions`
      self$`offers` <- this_object$`offers`
      self
    },

    #' @description
    #' Validate JSON input with respect to RetailerCountResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RetailerCountResponse
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
# RetailerCountResponse$unlock()
#
## Below is an example to define the print function
# RetailerCountResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RetailerCountResponse$lock()

