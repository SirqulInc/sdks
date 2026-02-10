#' Create a new Permissions
#'
#' @description
#' Permissions Class
#'
#' @docType class
#' @title Permissions
#' @description Permissions Class
#' @format An \code{R6Class} generator object
#' @field read  character [optional]
#' @field write  character [optional]
#' @field delete  character [optional]
#' @field add  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Permissions <- R6::R6Class(
  "Permissions",
  public = list(
    `read` = NULL,
    `write` = NULL,
    `delete` = NULL,
    `add` = NULL,

    #' @description
    #' Initialize a new Permissions class.
    #'
    #' @param read read
    #' @param write write
    #' @param delete delete
    #' @param add add
    #' @param ... Other optional arguments.
    initialize = function(`read` = NULL, `write` = NULL, `delete` = NULL, `add` = NULL, ...) {
      if (!is.null(`read`)) {
        if (!(is.logical(`read`) && length(`read`) == 1)) {
          stop(paste("Error! Invalid data for `read`. Must be a boolean:", `read`))
        }
        self$`read` <- `read`
      }
      if (!is.null(`write`)) {
        if (!(is.logical(`write`) && length(`write`) == 1)) {
          stop(paste("Error! Invalid data for `write`. Must be a boolean:", `write`))
        }
        self$`write` <- `write`
      }
      if (!is.null(`delete`)) {
        if (!(is.logical(`delete`) && length(`delete`) == 1)) {
          stop(paste("Error! Invalid data for `delete`. Must be a boolean:", `delete`))
        }
        self$`delete` <- `delete`
      }
      if (!is.null(`add`)) {
        if (!(is.logical(`add`) && length(`add`) == 1)) {
          stop(paste("Error! Invalid data for `add`. Must be a boolean:", `add`))
        }
        self$`add` <- `add`
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
    #' @return Permissions as a base R list.
    #' @examples
    #' # convert array of Permissions (x) to a data frame
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
    #' Convert Permissions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PermissionsObject <- list()
      if (!is.null(self$`read`)) {
        PermissionsObject[["read"]] <-
          self$`read`
      }
      if (!is.null(self$`write`)) {
        PermissionsObject[["write"]] <-
          self$`write`
      }
      if (!is.null(self$`delete`)) {
        PermissionsObject[["delete"]] <-
          self$`delete`
      }
      if (!is.null(self$`add`)) {
        PermissionsObject[["add"]] <-
          self$`add`
      }
      return(PermissionsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Permissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Permissions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`read`)) {
        self$`read` <- this_object$`read`
      }
      if (!is.null(this_object$`write`)) {
        self$`write` <- this_object$`write`
      }
      if (!is.null(this_object$`delete`)) {
        self$`delete` <- this_object$`delete`
      }
      if (!is.null(this_object$`add`)) {
        self$`add` <- this_object$`add`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Permissions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Permissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Permissions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`read` <- this_object$`read`
      self$`write` <- this_object$`write`
      self$`delete` <- this_object$`delete`
      self$`add` <- this_object$`add`
      self
    },

    #' @description
    #' Validate JSON input with respect to Permissions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Permissions
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
# Permissions$unlock()
#
## Below is an example to define the print function
# Permissions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Permissions$lock()

