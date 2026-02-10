#' Create a new OrsonAiProtoResponse
#'
#' @description
#' OrsonAiProtoResponse Class
#'
#' @docType class
#' @title OrsonAiProtoResponse
#' @description OrsonAiProtoResponse Class
#' @format An \code{R6Class} generator object
#' @field rawResponse  character [optional]
#' @field assetResponse  \link{AssetShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrsonAiProtoResponse <- R6::R6Class(
  "OrsonAiProtoResponse",
  public = list(
    `rawResponse` = NULL,
    `assetResponse` = NULL,

    #' @description
    #' Initialize a new OrsonAiProtoResponse class.
    #'
    #' @param rawResponse rawResponse
    #' @param assetResponse assetResponse
    #' @param ... Other optional arguments.
    initialize = function(`rawResponse` = NULL, `assetResponse` = NULL, ...) {
      if (!is.null(`rawResponse`)) {
        if (!(is.character(`rawResponse`) && length(`rawResponse`) == 1)) {
          stop(paste("Error! Invalid data for `rawResponse`. Must be a string:", `rawResponse`))
        }
        self$`rawResponse` <- `rawResponse`
      }
      if (!is.null(`assetResponse`)) {
        stopifnot(R6::is.R6(`assetResponse`))
        self$`assetResponse` <- `assetResponse`
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
    #' @return OrsonAiProtoResponse as a base R list.
    #' @examples
    #' # convert array of OrsonAiProtoResponse (x) to a data frame
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
    #' Convert OrsonAiProtoResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrsonAiProtoResponseObject <- list()
      if (!is.null(self$`rawResponse`)) {
        OrsonAiProtoResponseObject[["rawResponse"]] <-
          self$`rawResponse`
      }
      if (!is.null(self$`assetResponse`)) {
        OrsonAiProtoResponseObject[["assetResponse"]] <-
          self$extractSimpleType(self$`assetResponse`)
      }
      return(OrsonAiProtoResponseObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiProtoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiProtoResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`rawResponse`)) {
        self$`rawResponse` <- this_object$`rawResponse`
      }
      if (!is.null(this_object$`assetResponse`)) {
        `assetresponse_object` <- AssetShortResponse$new()
        `assetresponse_object`$fromJSON(jsonlite::toJSON(this_object$`assetResponse`, auto_unbox = TRUE, digits = NA))
        self$`assetResponse` <- `assetresponse_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrsonAiProtoResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrsonAiProtoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrsonAiProtoResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`rawResponse` <- this_object$`rawResponse`
      self$`assetResponse` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`assetResponse`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to OrsonAiProtoResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrsonAiProtoResponse
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
# OrsonAiProtoResponse$unlock()
#
## Below is an example to define the print function
# OrsonAiProtoResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrsonAiProtoResponse$lock()

