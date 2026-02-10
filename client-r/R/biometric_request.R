#' Create a new BiometricRequest
#'
#' @description
#' BiometricRequest Class
#'
#' @docType class
#' @title BiometricRequest
#' @description BiometricRequest Class
#' @format An \code{R6Class} generator object
#' @field face  \link{BiometricImage} [optional]
#' @field fingerprints  list(\link{FingerprintBiometricImage}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BiometricRequest <- R6::R6Class(
  "BiometricRequest",
  public = list(
    `face` = NULL,
    `fingerprints` = NULL,

    #' @description
    #' Initialize a new BiometricRequest class.
    #'
    #' @param face face
    #' @param fingerprints fingerprints
    #' @param ... Other optional arguments.
    initialize = function(`face` = NULL, `fingerprints` = NULL, ...) {
      if (!is.null(`face`)) {
        stopifnot(R6::is.R6(`face`))
        self$`face` <- `face`
      }
      if (!is.null(`fingerprints`)) {
        stopifnot(is.vector(`fingerprints`), length(`fingerprints`) != 0)
        sapply(`fingerprints`, function(x) stopifnot(R6::is.R6(x)))
        self$`fingerprints` <- `fingerprints`
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
    #' @return BiometricRequest as a base R list.
    #' @examples
    #' # convert array of BiometricRequest (x) to a data frame
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
    #' Convert BiometricRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BiometricRequestObject <- list()
      if (!is.null(self$`face`)) {
        BiometricRequestObject[["face"]] <-
          self$extractSimpleType(self$`face`)
      }
      if (!is.null(self$`fingerprints`)) {
        BiometricRequestObject[["fingerprints"]] <-
          self$extractSimpleType(self$`fingerprints`)
      }
      return(BiometricRequestObject)
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
    #' Deserialize JSON string into an instance of BiometricRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiometricRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`face`)) {
        `face_object` <- BiometricImage$new()
        `face_object`$fromJSON(jsonlite::toJSON(this_object$`face`, auto_unbox = TRUE, digits = NA))
        self$`face` <- `face_object`
      }
      if (!is.null(this_object$`fingerprints`)) {
        self$`fingerprints` <- ApiClient$new()$deserializeObj(this_object$`fingerprints`, "array[FingerprintBiometricImage]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BiometricRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BiometricRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiometricRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`face` <- BiometricImage$new()$fromJSON(jsonlite::toJSON(this_object$`face`, auto_unbox = TRUE, digits = NA))
      self$`fingerprints` <- ApiClient$new()$deserializeObj(this_object$`fingerprints`, "array[FingerprintBiometricImage]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to BiometricRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BiometricRequest
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
# BiometricRequest$unlock()
#
## Below is an example to define the print function
# BiometricRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BiometricRequest$lock()

