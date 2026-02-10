#' Create a new TwiMLResponse
#'
#' @description
#' TwiMLResponse Class
#'
#' @docType class
#' @title TwiMLResponse
#' @description TwiMLResponse Class
#' @format An \code{R6Class} generator object
#' @field tag  character [optional]
#' @field body  character [optional]
#' @field attributes  named list(character) [optional]
#' @field children  list(\link{Verb}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TwiMLResponse <- R6::R6Class(
  "TwiMLResponse",
  public = list(
    `tag` = NULL,
    `body` = NULL,
    `attributes` = NULL,
    `children` = NULL,

    #' @description
    #' Initialize a new TwiMLResponse class.
    #'
    #' @param tag tag
    #' @param body body
    #' @param attributes attributes
    #' @param children children
    #' @param ... Other optional arguments.
    initialize = function(`tag` = NULL, `body` = NULL, `attributes` = NULL, `children` = NULL, ...) {
      if (!is.null(`tag`)) {
        if (!(is.character(`tag`) && length(`tag`) == 1)) {
          stop(paste("Error! Invalid data for `tag`. Must be a string:", `tag`))
        }
        self$`tag` <- `tag`
      }
      if (!is.null(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!is.null(`attributes`)) {
        stopifnot(is.vector(`attributes`), length(`attributes`) != 0)
        sapply(`attributes`, function(x) stopifnot(is.character(x)))
        self$`attributes` <- `attributes`
      }
      if (!is.null(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(R6::is.R6(x)))
        self$`children` <- `children`
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
    #' @return TwiMLResponse as a base R list.
    #' @examples
    #' # convert array of TwiMLResponse (x) to a data frame
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
    #' Convert TwiMLResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TwiMLResponseObject <- list()
      if (!is.null(self$`tag`)) {
        TwiMLResponseObject[["tag"]] <-
          self$`tag`
      }
      if (!is.null(self$`body`)) {
        TwiMLResponseObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`attributes`)) {
        TwiMLResponseObject[["attributes"]] <-
          self$`attributes`
      }
      if (!is.null(self$`children`)) {
        TwiMLResponseObject[["children"]] <-
          self$extractSimpleType(self$`children`)
      }
      return(TwiMLResponseObject)
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
    #' Deserialize JSON string into an instance of TwiMLResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TwiMLResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tag`)) {
        self$`tag` <- this_object$`tag`
      }
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`attributes`)) {
        self$`attributes` <- ApiClient$new()$deserializeObj(this_object$`attributes`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[Verb]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TwiMLResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TwiMLResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TwiMLResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tag` <- this_object$`tag`
      self$`body` <- this_object$`body`
      self$`attributes` <- ApiClient$new()$deserializeObj(this_object$`attributes`, "map(character)", loadNamespace("openapi"))
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[Verb]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to TwiMLResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TwiMLResponse
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
# TwiMLResponse$unlock()
#
## Below is an example to define the print function
# TwiMLResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TwiMLResponse$lock()

