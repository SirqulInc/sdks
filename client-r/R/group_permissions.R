#' Create a new GroupPermissions
#'
#' @description
#' GroupPermissions Class
#'
#' @docType class
#' @title GroupPermissions
#' @description GroupPermissions Class
#' @format An \code{R6Class} generator object
#' @field canViewProfileInfo  character [optional]
#' @field canViewGameInfo  character [optional]
#' @field canViewFriendInfo  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GroupPermissions <- R6::R6Class(
  "GroupPermissions",
  public = list(
    `canViewProfileInfo` = NULL,
    `canViewGameInfo` = NULL,
    `canViewFriendInfo` = NULL,

    #' @description
    #' Initialize a new GroupPermissions class.
    #'
    #' @param canViewProfileInfo canViewProfileInfo
    #' @param canViewGameInfo canViewGameInfo
    #' @param canViewFriendInfo canViewFriendInfo
    #' @param ... Other optional arguments.
    initialize = function(`canViewProfileInfo` = NULL, `canViewGameInfo` = NULL, `canViewFriendInfo` = NULL, ...) {
      if (!is.null(`canViewProfileInfo`)) {
        if (!(is.logical(`canViewProfileInfo`) && length(`canViewProfileInfo`) == 1)) {
          stop(paste("Error! Invalid data for `canViewProfileInfo`. Must be a boolean:", `canViewProfileInfo`))
        }
        self$`canViewProfileInfo` <- `canViewProfileInfo`
      }
      if (!is.null(`canViewGameInfo`)) {
        if (!(is.logical(`canViewGameInfo`) && length(`canViewGameInfo`) == 1)) {
          stop(paste("Error! Invalid data for `canViewGameInfo`. Must be a boolean:", `canViewGameInfo`))
        }
        self$`canViewGameInfo` <- `canViewGameInfo`
      }
      if (!is.null(`canViewFriendInfo`)) {
        if (!(is.logical(`canViewFriendInfo`) && length(`canViewFriendInfo`) == 1)) {
          stop(paste("Error! Invalid data for `canViewFriendInfo`. Must be a boolean:", `canViewFriendInfo`))
        }
        self$`canViewFriendInfo` <- `canViewFriendInfo`
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
    #' @return GroupPermissions as a base R list.
    #' @examples
    #' # convert array of GroupPermissions (x) to a data frame
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
    #' Convert GroupPermissions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GroupPermissionsObject <- list()
      if (!is.null(self$`canViewProfileInfo`)) {
        GroupPermissionsObject[["canViewProfileInfo"]] <-
          self$`canViewProfileInfo`
      }
      if (!is.null(self$`canViewGameInfo`)) {
        GroupPermissionsObject[["canViewGameInfo"]] <-
          self$`canViewGameInfo`
      }
      if (!is.null(self$`canViewFriendInfo`)) {
        GroupPermissionsObject[["canViewFriendInfo"]] <-
          self$`canViewFriendInfo`
      }
      return(GroupPermissionsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GroupPermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of GroupPermissions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`canViewProfileInfo`)) {
        self$`canViewProfileInfo` <- this_object$`canViewProfileInfo`
      }
      if (!is.null(this_object$`canViewGameInfo`)) {
        self$`canViewGameInfo` <- this_object$`canViewGameInfo`
      }
      if (!is.null(this_object$`canViewFriendInfo`)) {
        self$`canViewFriendInfo` <- this_object$`canViewFriendInfo`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GroupPermissions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GroupPermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of GroupPermissions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`canViewProfileInfo` <- this_object$`canViewProfileInfo`
      self$`canViewGameInfo` <- this_object$`canViewGameInfo`
      self$`canViewFriendInfo` <- this_object$`canViewFriendInfo`
      self
    },

    #' @description
    #' Validate JSON input with respect to GroupPermissions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GroupPermissions
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
# GroupPermissions$unlock()
#
## Below is an example to define the print function
# GroupPermissions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GroupPermissions$lock()

