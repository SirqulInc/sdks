#' Create a new UserPermissions
#'
#' @description
#' UserPermissions Class
#'
#' @docType class
#' @title UserPermissions
#' @description UserPermissions Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field permissionableType  character [optional]
#' @field permissionableId  integer [optional]
#' @field connectionGroup  \link{ConnectionGroup} [optional]
#' @field friendGroup  character [optional]
#' @field connection  \link{Connection} [optional]
#' @field permissions  \link{Permissions} [optional]
#' @field exclude  character [optional]
#' @field blocked  character [optional]
#' @field owner  \link{Account} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserPermissions <- R6::R6Class(
  "UserPermissions",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `permissionableType` = NULL,
    `permissionableId` = NULL,
    `connectionGroup` = NULL,
    `friendGroup` = NULL,
    `connection` = NULL,
    `permissions` = NULL,
    `exclude` = NULL,
    `blocked` = NULL,
    `owner` = NULL,

    #' @description
    #' Initialize a new UserPermissions class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param permissionableType permissionableType
    #' @param permissionableId permissionableId
    #' @param connectionGroup connectionGroup
    #' @param friendGroup friendGroup
    #' @param connection connection
    #' @param permissions permissions
    #' @param exclude exclude
    #' @param blocked blocked
    #' @param owner owner
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `permissionableType` = NULL, `permissionableId` = NULL, `connectionGroup` = NULL, `friendGroup` = NULL, `connection` = NULL, `permissions` = NULL, `exclude` = NULL, `blocked` = NULL, `owner` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`permissionableType`)) {
        if (!(is.character(`permissionableType`) && length(`permissionableType`) == 1)) {
          stop(paste("Error! Invalid data for `permissionableType`. Must be a string:", `permissionableType`))
        }
        self$`permissionableType` <- `permissionableType`
      }
      if (!is.null(`permissionableId`)) {
        if (!(is.numeric(`permissionableId`) && length(`permissionableId`) == 1)) {
          stop(paste("Error! Invalid data for `permissionableId`. Must be an integer:", `permissionableId`))
        }
        self$`permissionableId` <- `permissionableId`
      }
      if (!is.null(`connectionGroup`)) {
        stopifnot(R6::is.R6(`connectionGroup`))
        self$`connectionGroup` <- `connectionGroup`
      }
      if (!is.null(`friendGroup`)) {
        if (!(is.logical(`friendGroup`) && length(`friendGroup`) == 1)) {
          stop(paste("Error! Invalid data for `friendGroup`. Must be a boolean:", `friendGroup`))
        }
        self$`friendGroup` <- `friendGroup`
      }
      if (!is.null(`connection`)) {
        stopifnot(R6::is.R6(`connection`))
        self$`connection` <- `connection`
      }
      if (!is.null(`permissions`)) {
        stopifnot(R6::is.R6(`permissions`))
        self$`permissions` <- `permissions`
      }
      if (!is.null(`exclude`)) {
        if (!(is.logical(`exclude`) && length(`exclude`) == 1)) {
          stop(paste("Error! Invalid data for `exclude`. Must be a boolean:", `exclude`))
        }
        self$`exclude` <- `exclude`
      }
      if (!is.null(`blocked`)) {
        if (!(is.logical(`blocked`) && length(`blocked`) == 1)) {
          stop(paste("Error! Invalid data for `blocked`. Must be a boolean:", `blocked`))
        }
        self$`blocked` <- `blocked`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
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
    #' @return UserPermissions as a base R list.
    #' @examples
    #' # convert array of UserPermissions (x) to a data frame
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
    #' Convert UserPermissions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserPermissionsObject <- list()
      if (!is.null(self$`id`)) {
        UserPermissionsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        UserPermissionsObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        UserPermissionsObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`permissionableType`)) {
        UserPermissionsObject[["permissionableType"]] <-
          self$`permissionableType`
      }
      if (!is.null(self$`permissionableId`)) {
        UserPermissionsObject[["permissionableId"]] <-
          self$`permissionableId`
      }
      if (!is.null(self$`connectionGroup`)) {
        UserPermissionsObject[["connectionGroup"]] <-
          self$extractSimpleType(self$`connectionGroup`)
      }
      if (!is.null(self$`friendGroup`)) {
        UserPermissionsObject[["friendGroup"]] <-
          self$`friendGroup`
      }
      if (!is.null(self$`connection`)) {
        UserPermissionsObject[["connection"]] <-
          self$extractSimpleType(self$`connection`)
      }
      if (!is.null(self$`permissions`)) {
        UserPermissionsObject[["permissions"]] <-
          self$extractSimpleType(self$`permissions`)
      }
      if (!is.null(self$`exclude`)) {
        UserPermissionsObject[["exclude"]] <-
          self$`exclude`
      }
      if (!is.null(self$`blocked`)) {
        UserPermissionsObject[["blocked"]] <-
          self$`blocked`
      }
      if (!is.null(self$`owner`)) {
        UserPermissionsObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      return(UserPermissionsObject)
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
    #' Deserialize JSON string into an instance of UserPermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPermissions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`permissionableType`)) {
        self$`permissionableType` <- this_object$`permissionableType`
      }
      if (!is.null(this_object$`permissionableId`)) {
        self$`permissionableId` <- this_object$`permissionableId`
      }
      if (!is.null(this_object$`connectionGroup`)) {
        `connectiongroup_object` <- ConnectionGroup$new()
        `connectiongroup_object`$fromJSON(jsonlite::toJSON(this_object$`connectionGroup`, auto_unbox = TRUE, digits = NA))
        self$`connectionGroup` <- `connectiongroup_object`
      }
      if (!is.null(this_object$`friendGroup`)) {
        self$`friendGroup` <- this_object$`friendGroup`
      }
      if (!is.null(this_object$`connection`)) {
        `connection_object` <- Connection$new()
        `connection_object`$fromJSON(jsonlite::toJSON(this_object$`connection`, auto_unbox = TRUE, digits = NA))
        self$`connection` <- `connection_object`
      }
      if (!is.null(this_object$`permissions`)) {
        `permissions_object` <- Permissions$new()
        `permissions_object`$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
        self$`permissions` <- `permissions_object`
      }
      if (!is.null(this_object$`exclude`)) {
        self$`exclude` <- this_object$`exclude`
      }
      if (!is.null(this_object$`blocked`)) {
        self$`blocked` <- this_object$`blocked`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UserPermissions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserPermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPermissions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`permissionableType` <- this_object$`permissionableType`
      self$`permissionableId` <- this_object$`permissionableId`
      self$`connectionGroup` <- ConnectionGroup$new()$fromJSON(jsonlite::toJSON(this_object$`connectionGroup`, auto_unbox = TRUE, digits = NA))
      self$`friendGroup` <- this_object$`friendGroup`
      self$`connection` <- Connection$new()$fromJSON(jsonlite::toJSON(this_object$`connection`, auto_unbox = TRUE, digits = NA))
      self$`permissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
      self$`exclude` <- this_object$`exclude`
      self$`blocked` <- this_object$`blocked`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to UserPermissions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserPermissions
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
# UserPermissions$unlock()
#
## Below is an example to define the print function
# UserPermissions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserPermissions$lock()

