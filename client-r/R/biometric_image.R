#' Create a new BiometricImage
#'
#' @description
#' BiometricImage Class
#'
#' @docType class
#' @title BiometricImage
#' @description BiometricImage Class
#' @format An \code{R6Class} generator object
#' @field position  character [optional]
#' @field data  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BiometricImage <- R6::R6Class(
  "BiometricImage",
  public = list(
    `position` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new BiometricImage class.
    #'
    #' @param position position
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`position` = NULL, `data` = NULL, ...) {
      if (!is.null(`position`)) {
        if (!(`position` %in% c("UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT"))) {
          stop(paste("Error! \"", `position`, "\" cannot be assigned to `position`. Must be \"UNKNOWN\", \"LEFT_INDEX\", \"LEFT_MIDDLE\", \"LEFT_RING\", \"LEFT_LITTLE\", \"LEFT_THUMB\", \"RIGHT_INDEX\", \"RIGHT_MIDDLE\", \"RIGHT_RING\", \"RIGHT_LITTLE\", \"RIGHT_THUMB\", \"LEFT\", \"RIGHT\".", sep = ""))
        }
        if (!(is.character(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be a string:", `position`))
        }
        self$`position` <- `position`
      }
      if (!is.null(`data`)) {
        if (!(is.character(`data`) && length(`data`) == 1)) {
          stop(paste("Error! Invalid data for `data`. Must be a string:", `data`))
        }
        self$`data` <- `data`
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
    #' @return BiometricImage as a base R list.
    #' @examples
    #' # convert array of BiometricImage (x) to a data frame
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
    #' Convert BiometricImage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BiometricImageObject <- list()
      if (!is.null(self$`position`)) {
        BiometricImageObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`data`)) {
        BiometricImageObject[["data"]] <-
          self$`data`
      }
      return(BiometricImageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BiometricImage
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiometricImage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`position`)) {
        if (!is.null(this_object$`position`) && !(this_object$`position` %in% c("UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT"))) {
          stop(paste("Error! \"", this_object$`position`, "\" cannot be assigned to `position`. Must be \"UNKNOWN\", \"LEFT_INDEX\", \"LEFT_MIDDLE\", \"LEFT_RING\", \"LEFT_LITTLE\", \"LEFT_THUMB\", \"RIGHT_INDEX\", \"RIGHT_MIDDLE\", \"RIGHT_RING\", \"RIGHT_LITTLE\", \"RIGHT_THUMB\", \"LEFT\", \"RIGHT\".", sep = ""))
        }
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- this_object$`data`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BiometricImage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BiometricImage
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiometricImage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`position`) && !(this_object$`position` %in% c("UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT"))) {
        stop(paste("Error! \"", this_object$`position`, "\" cannot be assigned to `position`. Must be \"UNKNOWN\", \"LEFT_INDEX\", \"LEFT_MIDDLE\", \"LEFT_RING\", \"LEFT_LITTLE\", \"LEFT_THUMB\", \"RIGHT_INDEX\", \"RIGHT_MIDDLE\", \"RIGHT_RING\", \"RIGHT_LITTLE\", \"RIGHT_THUMB\", \"LEFT\", \"RIGHT\".", sep = ""))
      }
      self$`position` <- this_object$`position`
      self$`data` <- this_object$`data`
      self
    },

    #' @description
    #' Validate JSON input with respect to BiometricImage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BiometricImage
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
# BiometricImage$unlock()
#
## Below is an example to define the print function
# BiometricImage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BiometricImage$lock()

