#' Create a new UserPermissionsListResponse
#'
#' @description
#' UserPermissionsListResponse Class
#'
#' @docType class
#' @title UserPermissionsListResponse
#' @description UserPermissionsListResponse Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field visibility  character [optional]
#' @field publicPermissions  \link{PermissionResponse} [optional]
#' @field userPermissions  list(\link{UserPermissionsResponse}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserPermissionsListResponse <- R6::R6Class(
  "UserPermissionsListResponse",
  public = list(
    `action` = NULL,
    `visibility` = NULL,
    `publicPermissions` = NULL,
    `userPermissions` = NULL,

    #' @description
    #' Initialize a new UserPermissionsListResponse class.
    #'
    #' @param action action
    #' @param visibility visibility
    #' @param publicPermissions publicPermissions
    #' @param userPermissions userPermissions
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `visibility` = NULL, `publicPermissions` = NULL, `userPermissions` = NULL, ...) {
      if (!is.null(`action`)) {
        if (!(`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`visibility`)) {
        if (!(`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", `visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        if (!(is.character(`visibility`) && length(`visibility`) == 1)) {
          stop(paste("Error! Invalid data for `visibility`. Must be a string:", `visibility`))
        }
        self$`visibility` <- `visibility`
      }
      if (!is.null(`publicPermissions`)) {
        stopifnot(R6::is.R6(`publicPermissions`))
        self$`publicPermissions` <- `publicPermissions`
      }
      if (!is.null(`userPermissions`)) {
        stopifnot(is.vector(`userPermissions`), length(`userPermissions`) != 0)
        sapply(`userPermissions`, function(x) stopifnot(R6::is.R6(x)))
        self$`userPermissions` <- `userPermissions`
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
    #' @return UserPermissionsListResponse as a base R list.
    #' @examples
    #' # convert array of UserPermissionsListResponse (x) to a data frame
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
    #' Convert UserPermissionsListResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserPermissionsListResponseObject <- list()
      if (!is.null(self$`action`)) {
        UserPermissionsListResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`visibility`)) {
        UserPermissionsListResponseObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`publicPermissions`)) {
        UserPermissionsListResponseObject[["publicPermissions"]] <-
          self$extractSimpleType(self$`publicPermissions`)
      }
      if (!is.null(self$`userPermissions`)) {
        UserPermissionsListResponseObject[["userPermissions"]] <-
          self$extractSimpleType(self$`userPermissions`)
      }
      return(UserPermissionsListResponseObject)
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
    #' Deserialize JSON string into an instance of UserPermissionsListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPermissionsListResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`visibility`)) {
        if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`publicPermissions`)) {
        `publicpermissions_object` <- PermissionResponse$new()
        `publicpermissions_object`$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
        self$`publicPermissions` <- `publicpermissions_object`
      }
      if (!is.null(this_object$`userPermissions`)) {
        self$`userPermissions` <- ApiClient$new()$deserializeObj(this_object$`userPermissions`, "array[UserPermissionsResponse]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UserPermissionsListResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserPermissionsListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPermissionsListResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`publicPermissions` <- PermissionResponse$new()$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
      self$`userPermissions` <- ApiClient$new()$deserializeObj(this_object$`userPermissions`, "array[UserPermissionsResponse]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to UserPermissionsListResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserPermissionsListResponse
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
# UserPermissionsListResponse$unlock()
#
## Below is an example to define the print function
# UserPermissionsListResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserPermissionsListResponse$lock()

