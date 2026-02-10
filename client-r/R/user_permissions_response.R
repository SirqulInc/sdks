#' Create a new UserPermissionsResponse
#'
#' @description
#' UserPermissionsResponse Class
#'
#' @docType class
#' @title UserPermissionsResponse
#' @description UserPermissionsResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field permissions  \link{PermissionResponse} [optional]
#' @field connection  \link{ConnectionResponse} [optional]
#' @field connectionGroup  \link{ConnectionGroupResponse} [optional]
#' @field exclude  character [optional]
#' @field blocked  character [optional]
#' @field friendGroup  character [optional]
#' @field permissionableId  integer [optional]
#' @field permissionableType  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserPermissionsResponse <- R6::R6Class(
  "UserPermissionsResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `permissions` = NULL,
    `connection` = NULL,
    `connectionGroup` = NULL,
    `exclude` = NULL,
    `blocked` = NULL,
    `friendGroup` = NULL,
    `permissionableId` = NULL,
    `permissionableType` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new UserPermissionsResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param permissions permissions
    #' @param connection connection
    #' @param connectionGroup connectionGroup
    #' @param exclude exclude
    #' @param blocked blocked
    #' @param friendGroup friendGroup
    #' @param permissionableId permissionableId
    #' @param permissionableType permissionableType
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `permissions` = NULL, `connection` = NULL, `connectionGroup` = NULL, `exclude` = NULL, `blocked` = NULL, `friendGroup` = NULL, `permissionableId` = NULL, `permissionableType` = NULL, `returning` = NULL, ...) {
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`version`)) {
        if (!(is.numeric(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a number:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`serializeNulls`)) {
        if (!(is.logical(`serializeNulls`) && length(`serializeNulls`) == 1)) {
          stop(paste("Error! Invalid data for `serializeNulls`. Must be a boolean:", `serializeNulls`))
        }
        self$`serializeNulls` <- `serializeNulls`
      }
      if (!is.null(`startTimeLog`)) {
        if (!(is.numeric(`startTimeLog`) && length(`startTimeLog`) == 1)) {
          stop(paste("Error! Invalid data for `startTimeLog`. Must be an integer:", `startTimeLog`))
        }
        self$`startTimeLog` <- `startTimeLog`
      }
      if (!is.null(`errorCode`)) {
        if (!(is.character(`errorCode`) && length(`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", `errorCode`))
        }
        self$`errorCode` <- `errorCode`
      }
      if (!is.null(`request`)) {
        stopifnot(is.vector(`request`), length(`request`) != 0)
        sapply(`request`, function(x) stopifnot(R6::is.R6(x)))
        self$`request` <- `request`
      }
      if (!is.null(`permissions`)) {
        stopifnot(R6::is.R6(`permissions`))
        self$`permissions` <- `permissions`
      }
      if (!is.null(`connection`)) {
        stopifnot(R6::is.R6(`connection`))
        self$`connection` <- `connection`
      }
      if (!is.null(`connectionGroup`)) {
        stopifnot(R6::is.R6(`connectionGroup`))
        self$`connectionGroup` <- `connectionGroup`
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
      if (!is.null(`friendGroup`)) {
        if (!(is.logical(`friendGroup`) && length(`friendGroup`) == 1)) {
          stop(paste("Error! Invalid data for `friendGroup`. Must be a boolean:", `friendGroup`))
        }
        self$`friendGroup` <- `friendGroup`
      }
      if (!is.null(`permissionableId`)) {
        if (!(is.numeric(`permissionableId`) && length(`permissionableId`) == 1)) {
          stop(paste("Error! Invalid data for `permissionableId`. Must be an integer:", `permissionableId`))
        }
        self$`permissionableId` <- `permissionableId`
      }
      if (!is.null(`permissionableType`)) {
        if (!(is.character(`permissionableType`) && length(`permissionableType`) == 1)) {
          stop(paste("Error! Invalid data for `permissionableType`. Must be a string:", `permissionableType`))
        }
        self$`permissionableType` <- `permissionableType`
      }
      if (!is.null(`returning`)) {
        if (!(is.character(`returning`) && length(`returning`) == 1)) {
          stop(paste("Error! Invalid data for `returning`. Must be a string:", `returning`))
        }
        self$`returning` <- `returning`
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
    #' @return UserPermissionsResponse as a base R list.
    #' @examples
    #' # convert array of UserPermissionsResponse (x) to a data frame
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
    #' Convert UserPermissionsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserPermissionsResponseObject <- list()
      if (!is.null(self$`valid`)) {
        UserPermissionsResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        UserPermissionsResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        UserPermissionsResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        UserPermissionsResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        UserPermissionsResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        UserPermissionsResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        UserPermissionsResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`permissions`)) {
        UserPermissionsResponseObject[["permissions"]] <-
          self$extractSimpleType(self$`permissions`)
      }
      if (!is.null(self$`connection`)) {
        UserPermissionsResponseObject[["connection"]] <-
          self$extractSimpleType(self$`connection`)
      }
      if (!is.null(self$`connectionGroup`)) {
        UserPermissionsResponseObject[["connectionGroup"]] <-
          self$extractSimpleType(self$`connectionGroup`)
      }
      if (!is.null(self$`exclude`)) {
        UserPermissionsResponseObject[["exclude"]] <-
          self$`exclude`
      }
      if (!is.null(self$`blocked`)) {
        UserPermissionsResponseObject[["blocked"]] <-
          self$`blocked`
      }
      if (!is.null(self$`friendGroup`)) {
        UserPermissionsResponseObject[["friendGroup"]] <-
          self$`friendGroup`
      }
      if (!is.null(self$`permissionableId`)) {
        UserPermissionsResponseObject[["permissionableId"]] <-
          self$`permissionableId`
      }
      if (!is.null(self$`permissionableType`)) {
        UserPermissionsResponseObject[["permissionableType"]] <-
          self$`permissionableType`
      }
      if (!is.null(self$`returning`)) {
        UserPermissionsResponseObject[["returning"]] <-
          self$`returning`
      }
      return(UserPermissionsResponseObject)
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
    #' Deserialize JSON string into an instance of UserPermissionsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPermissionsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`serializeNulls`)) {
        self$`serializeNulls` <- this_object$`serializeNulls`
      }
      if (!is.null(this_object$`startTimeLog`)) {
        self$`startTimeLog` <- this_object$`startTimeLog`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`request`)) {
        self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`permissions`)) {
        `permissions_object` <- PermissionResponse$new()
        `permissions_object`$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
        self$`permissions` <- `permissions_object`
      }
      if (!is.null(this_object$`connection`)) {
        `connection_object` <- ConnectionResponse$new()
        `connection_object`$fromJSON(jsonlite::toJSON(this_object$`connection`, auto_unbox = TRUE, digits = NA))
        self$`connection` <- `connection_object`
      }
      if (!is.null(this_object$`connectionGroup`)) {
        `connectiongroup_object` <- ConnectionGroupResponse$new()
        `connectiongroup_object`$fromJSON(jsonlite::toJSON(this_object$`connectionGroup`, auto_unbox = TRUE, digits = NA))
        self$`connectionGroup` <- `connectiongroup_object`
      }
      if (!is.null(this_object$`exclude`)) {
        self$`exclude` <- this_object$`exclude`
      }
      if (!is.null(this_object$`blocked`)) {
        self$`blocked` <- this_object$`blocked`
      }
      if (!is.null(this_object$`friendGroup`)) {
        self$`friendGroup` <- this_object$`friendGroup`
      }
      if (!is.null(this_object$`permissionableId`)) {
        self$`permissionableId` <- this_object$`permissionableId`
      }
      if (!is.null(this_object$`permissionableType`)) {
        self$`permissionableType` <- this_object$`permissionableType`
      }
      if (!is.null(this_object$`returning`)) {
        self$`returning` <- this_object$`returning`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UserPermissionsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserPermissionsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPermissionsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`permissions` <- PermissionResponse$new()$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
      self$`connection` <- ConnectionResponse$new()$fromJSON(jsonlite::toJSON(this_object$`connection`, auto_unbox = TRUE, digits = NA))
      self$`connectionGroup` <- ConnectionGroupResponse$new()$fromJSON(jsonlite::toJSON(this_object$`connectionGroup`, auto_unbox = TRUE, digits = NA))
      self$`exclude` <- this_object$`exclude`
      self$`blocked` <- this_object$`blocked`
      self$`friendGroup` <- this_object$`friendGroup`
      self$`permissionableId` <- this_object$`permissionableId`
      self$`permissionableType` <- this_object$`permissionableType`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to UserPermissionsResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserPermissionsResponse
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
# UserPermissionsResponse$unlock()
#
## Below is an example to define the print function
# UserPermissionsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserPermissionsResponse$lock()

