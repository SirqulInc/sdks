#' Create a new TrilatAppSettings
#'
#' @description
#' TrilatAppSettings Class
#'
#' @docType class
#' @title TrilatAppSettings
#' @description TrilatAppSettings Class
#' @format An \code{R6Class} generator object
#' @field processingType  character [optional]
#' @field maxSampleSize  integer [optional]
#' @field minRSSI  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrilatAppSettings <- R6::R6Class(
  "TrilatAppSettings",
  public = list(
    `processingType` = NULL,
    `maxSampleSize` = NULL,
    `minRSSI` = NULL,

    #' @description
    #' Initialize a new TrilatAppSettings class.
    #'
    #' @param processingType processingType
    #' @param maxSampleSize maxSampleSize
    #' @param minRSSI minRSSI
    #' @param ... Other optional arguments.
    initialize = function(`processingType` = NULL, `maxSampleSize` = NULL, `minRSSI` = NULL, ...) {
      if (!is.null(`processingType`)) {
        if (!(`processingType` %in% c("DEFAULT", "FINGERPRINT", "FINGERPRINT_V2"))) {
          stop(paste("Error! \"", `processingType`, "\" cannot be assigned to `processingType`. Must be \"DEFAULT\", \"FINGERPRINT\", \"FINGERPRINT_V2\".", sep = ""))
        }
        if (!(is.character(`processingType`) && length(`processingType`) == 1)) {
          stop(paste("Error! Invalid data for `processingType`. Must be a string:", `processingType`))
        }
        self$`processingType` <- `processingType`
      }
      if (!is.null(`maxSampleSize`)) {
        if (!(is.numeric(`maxSampleSize`) && length(`maxSampleSize`) == 1)) {
          stop(paste("Error! Invalid data for `maxSampleSize`. Must be an integer:", `maxSampleSize`))
        }
        self$`maxSampleSize` <- `maxSampleSize`
      }
      if (!is.null(`minRSSI`)) {
        if (!(is.numeric(`minRSSI`) && length(`minRSSI`) == 1)) {
          stop(paste("Error! Invalid data for `minRSSI`. Must be a number:", `minRSSI`))
        }
        self$`minRSSI` <- `minRSSI`
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
    #' @return TrilatAppSettings as a base R list.
    #' @examples
    #' # convert array of TrilatAppSettings (x) to a data frame
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
    #' Convert TrilatAppSettings to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrilatAppSettingsObject <- list()
      if (!is.null(self$`processingType`)) {
        TrilatAppSettingsObject[["processingType"]] <-
          self$`processingType`
      }
      if (!is.null(self$`maxSampleSize`)) {
        TrilatAppSettingsObject[["maxSampleSize"]] <-
          self$`maxSampleSize`
      }
      if (!is.null(self$`minRSSI`)) {
        TrilatAppSettingsObject[["minRSSI"]] <-
          self$`minRSSI`
      }
      return(TrilatAppSettingsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TrilatAppSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrilatAppSettings
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`processingType`)) {
        if (!is.null(this_object$`processingType`) && !(this_object$`processingType` %in% c("DEFAULT", "FINGERPRINT", "FINGERPRINT_V2"))) {
          stop(paste("Error! \"", this_object$`processingType`, "\" cannot be assigned to `processingType`. Must be \"DEFAULT\", \"FINGERPRINT\", \"FINGERPRINT_V2\".", sep = ""))
        }
        self$`processingType` <- this_object$`processingType`
      }
      if (!is.null(this_object$`maxSampleSize`)) {
        self$`maxSampleSize` <- this_object$`maxSampleSize`
      }
      if (!is.null(this_object$`minRSSI`)) {
        self$`minRSSI` <- this_object$`minRSSI`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrilatAppSettings in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrilatAppSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrilatAppSettings
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`processingType`) && !(this_object$`processingType` %in% c("DEFAULT", "FINGERPRINT", "FINGERPRINT_V2"))) {
        stop(paste("Error! \"", this_object$`processingType`, "\" cannot be assigned to `processingType`. Must be \"DEFAULT\", \"FINGERPRINT\", \"FINGERPRINT_V2\".", sep = ""))
      }
      self$`processingType` <- this_object$`processingType`
      self$`maxSampleSize` <- this_object$`maxSampleSize`
      self$`minRSSI` <- this_object$`minRSSI`
      self
    },

    #' @description
    #' Validate JSON input with respect to TrilatAppSettings and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrilatAppSettings
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
# TrilatAppSettings$unlock()
#
## Below is an example to define the print function
# TrilatAppSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrilatAppSettings$lock()

