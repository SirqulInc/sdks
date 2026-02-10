#' Create a new NotificationSettingsResponse
#'
#' @description
#' NotificationSettingsResponse Class
#'
#' @docType class
#' @title NotificationSettingsResponse
#' @description NotificationSettingsResponse Class
#' @format An \code{R6Class} generator object
#' @field blockedNotifications  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationSettingsResponse <- R6::R6Class(
  "NotificationSettingsResponse",
  public = list(
    `blockedNotifications` = NULL,

    #' @description
    #' Initialize a new NotificationSettingsResponse class.
    #'
    #' @param blockedNotifications blockedNotifications
    #' @param ... Other optional arguments.
    initialize = function(`blockedNotifications` = NULL, ...) {
      if (!is.null(`blockedNotifications`)) {
        stopifnot(is.vector(`blockedNotifications`), length(`blockedNotifications`) != 0)
        sapply(`blockedNotifications`, function(x) stopifnot(is.character(x)))
        if (!identical(`blockedNotifications`, unique(`blockedNotifications`))) {
          stop("Error! Items in `blockedNotifications` are not unique.")
        }
        self$`blockedNotifications` <- `blockedNotifications`
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
    #' @return NotificationSettingsResponse as a base R list.
    #' @examples
    #' # convert array of NotificationSettingsResponse (x) to a data frame
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
    #' Convert NotificationSettingsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NotificationSettingsResponseObject <- list()
      if (!is.null(self$`blockedNotifications`)) {
        NotificationSettingsResponseObject[["blockedNotifications"]] <-
          self$`blockedNotifications`
      }
      return(NotificationSettingsResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationSettingsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationSettingsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`blockedNotifications`)) {
        self$`blockedNotifications` <- ApiClient$new()$deserializeObj(this_object$`blockedNotifications`, "set[character]", loadNamespace("openapi"))
        if (!identical(self$`blockedNotifications`, unique(self$`blockedNotifications`))) {
          stop("Error! Items in `blockedNotifications` are not unique.")
        }
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NotificationSettingsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationSettingsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationSettingsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`blockedNotifications` <- ApiClient$new()$deserializeObj(this_object$`blockedNotifications`, "set[character]", loadNamespace("openapi"))
      if (!identical(self$`blockedNotifications`, unique(self$`blockedNotifications`))) {
        stop("Error! Items in `blockedNotifications` are not unique.")
      }
      self
    },

    #' @description
    #' Validate JSON input with respect to NotificationSettingsResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NotificationSettingsResponse
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
# NotificationSettingsResponse$unlock()
#
## Below is an example to define the print function
# NotificationSettingsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NotificationSettingsResponse$lock()

