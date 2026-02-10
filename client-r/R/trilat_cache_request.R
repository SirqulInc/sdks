#' Create a new TrilatCacheRequest
#'
#' @description
#' TrilatCacheRequest Class
#'
#' @docType class
#' @title TrilatCacheRequest
#' @description TrilatCacheRequest Class
#' @format An \code{R6Class} generator object
#' @field udid  character [optional]
#' @field sourceTime  integer [optional]
#' @field minimumSampleSize  integer [optional]
#' @field samples  list(\link{TrilatCacheSample}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrilatCacheRequest <- R6::R6Class(
  "TrilatCacheRequest",
  public = list(
    `udid` = NULL,
    `sourceTime` = NULL,
    `minimumSampleSize` = NULL,
    `samples` = NULL,

    #' @description
    #' Initialize a new TrilatCacheRequest class.
    #'
    #' @param udid udid
    #' @param sourceTime sourceTime
    #' @param minimumSampleSize minimumSampleSize
    #' @param samples samples
    #' @param ... Other optional arguments.
    initialize = function(`udid` = NULL, `sourceTime` = NULL, `minimumSampleSize` = NULL, `samples` = NULL, ...) {
      if (!is.null(`udid`)) {
        if (!(is.character(`udid`) && length(`udid`) == 1)) {
          stop(paste("Error! Invalid data for `udid`. Must be a string:", `udid`))
        }
        self$`udid` <- `udid`
      }
      if (!is.null(`sourceTime`)) {
        if (!(is.numeric(`sourceTime`) && length(`sourceTime`) == 1)) {
          stop(paste("Error! Invalid data for `sourceTime`. Must be an integer:", `sourceTime`))
        }
        self$`sourceTime` <- `sourceTime`
      }
      if (!is.null(`minimumSampleSize`)) {
        if (!(is.numeric(`minimumSampleSize`) && length(`minimumSampleSize`) == 1)) {
          stop(paste("Error! Invalid data for `minimumSampleSize`. Must be an integer:", `minimumSampleSize`))
        }
        self$`minimumSampleSize` <- `minimumSampleSize`
      }
      if (!is.null(`samples`)) {
        stopifnot(is.vector(`samples`), length(`samples`) != 0)
        sapply(`samples`, function(x) stopifnot(R6::is.R6(x)))
        self$`samples` <- `samples`
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
    #' @return TrilatCacheRequest as a base R list.
    #' @examples
    #' # convert array of TrilatCacheRequest (x) to a data frame
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
    #' Convert TrilatCacheRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrilatCacheRequestObject <- list()
      if (!is.null(self$`udid`)) {
        TrilatCacheRequestObject[["udid"]] <-
          self$`udid`
      }
      if (!is.null(self$`sourceTime`)) {
        TrilatCacheRequestObject[["sourceTime"]] <-
          self$`sourceTime`
      }
      if (!is.null(self$`minimumSampleSize`)) {
        TrilatCacheRequestObject[["minimumSampleSize"]] <-
          self$`minimumSampleSize`
      }
      if (!is.null(self$`samples`)) {
        TrilatCacheRequestObject[["samples"]] <-
          self$extractSimpleType(self$`samples`)
      }
      return(TrilatCacheRequestObject)
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
    #' Deserialize JSON string into an instance of TrilatCacheRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrilatCacheRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`udid`)) {
        self$`udid` <- this_object$`udid`
      }
      if (!is.null(this_object$`sourceTime`)) {
        self$`sourceTime` <- this_object$`sourceTime`
      }
      if (!is.null(this_object$`minimumSampleSize`)) {
        self$`minimumSampleSize` <- this_object$`minimumSampleSize`
      }
      if (!is.null(this_object$`samples`)) {
        self$`samples` <- ApiClient$new()$deserializeObj(this_object$`samples`, "array[TrilatCacheSample]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrilatCacheRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrilatCacheRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrilatCacheRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`udid` <- this_object$`udid`
      self$`sourceTime` <- this_object$`sourceTime`
      self$`minimumSampleSize` <- this_object$`minimumSampleSize`
      self$`samples` <- ApiClient$new()$deserializeObj(this_object$`samples`, "array[TrilatCacheSample]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to TrilatCacheRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrilatCacheRequest
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
# TrilatCacheRequest$unlock()
#
## Below is an example to define the print function
# TrilatCacheRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrilatCacheRequest$lock()

