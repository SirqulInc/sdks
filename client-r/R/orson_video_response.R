#' Create a new OrsonVideoResponse
#'
#' @description
#' OrsonVideoResponse Class
#'
#' @docType class
#' @title OrsonVideoResponse
#' @description OrsonVideoResponse Class
#' @format An \code{R6Class} generator object
#' @field uri  character [optional]
#' @field expires  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonVideoResponse <- R6::R6Class(
  "OrsonVideoResponse",
  public = list(
    `uri` = NULL,
    `expires` = NULL,

    #' @description
    #' Initialize a new OrsonVideoResponse class.
    #'
    #' @param uri uri
    #' @param expires expires
    #' @param ... Other optional arguments.
    initialize = function(`uri` = NULL, `expires` = NULL, ...) {
      if (!is.null(`uri`)) {
        if (!(is.character(`uri`) && length(`uri`) == 1)) {
          stop(paste("Error! Invalid data for `uri`. Must be a string:", `uri`))
        }
        self$`uri` <- `uri`
      }
      if (!is.null(`expires`)) {
        if (!(is.character(`expires`) && length(`expires`) == 1)) {
          stop(paste("Error! Invalid data for `expires`. Must be a string:", `expires`))
        }
        self$`expires` <- `expires`
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
    #' @return OrsonVideoResponse as a base R list.
    #' @examples
    #' # convert array of OrsonVideoResponse (x) to a data frame
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
    #' Convert OrsonVideoResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonVideoResponseObject <- list()
      if (!is.null(self$`uri`)) {
        OrsonVideoResponseObject[["uri"]] <-
          self$`uri`
      }
      if (!is.null(self$`expires`)) {
        OrsonVideoResponseObject[["expires"]] <-
          self$`expires`
      }
      return(OrsonVideoResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonVideoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonVideoResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`uri`)) {
        self$`uri` <- this_object$`uri`
      }
      if (!is.null(this_object$`expires`)) {
        self$`expires` <- this_object$`expires`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonVideoResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonVideoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonVideoResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uri` <- this_object$`uri`
      self$`expires` <- this_object$`expires`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonVideoResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonVideoResponse
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
# OrsonVideoResponse$unlock()
#
## Below is an example to define the print function
# OrsonVideoResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonVideoResponse$lock()

