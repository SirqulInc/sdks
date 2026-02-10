#' Create a new ConnectionGroupResponse
#'
#' @description
#' ConnectionGroupResponse Class
#'
#' @docType class
#' @title ConnectionGroupResponse
#' @description ConnectionGroupResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field connectionGroupId  integer [optional]
#' @field name  character [optional]
#' @field groupType  character [optional]
#' @field thumbnailURL  character [optional]
#' @field subGroups  list(\link{ConnectionGroupResponse}) [optional]
#' @field description  character [optional]
#' @field active  character [optional]
#' @field connectionCount  integer [optional]
#' @field connections  list(\link{ConnectionResponse}) [optional]
#' @field groupPermissions  \link{GroupPermissions} [optional]
#' @field ownerId  integer [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectionGroupResponse <- R6::R6Class(
  "ConnectionGroupResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `connectionGroupId` = NULL,
    `name` = NULL,
    `groupType` = NULL,
    `thumbnailURL` = NULL,
    `subGroups` = NULL,
    `description` = NULL,
    `active` = NULL,
    `connectionCount` = NULL,
    `connections` = NULL,
    `groupPermissions` = NULL,
    `ownerId` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ConnectionGroupResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param connectionGroupId connectionGroupId
    #' @param name name
    #' @param groupType groupType
    #' @param thumbnailURL thumbnailURL
    #' @param subGroups subGroups
    #' @param description description
    #' @param active active
    #' @param connectionCount connectionCount
    #' @param connections connections
    #' @param groupPermissions groupPermissions
    #' @param ownerId ownerId
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `connectionGroupId` = NULL, `name` = NULL, `groupType` = NULL, `thumbnailURL` = NULL, `subGroups` = NULL, `description` = NULL, `active` = NULL, `connectionCount` = NULL, `connections` = NULL, `groupPermissions` = NULL, `ownerId` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`connectionGroupId`)) {
        if (!(is.numeric(`connectionGroupId`) && length(`connectionGroupId`) == 1)) {
          stop(paste("Error! Invalid data for `connectionGroupId`. Must be an integer:", `connectionGroupId`))
        }
        self$`connectionGroupId` <- `connectionGroupId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`groupType`)) {
        if (!(`groupType` %in% c("PRIVATE", "FRIENDS", "TRUSTED", "BLOCKED", "FOLLOWERS", "FOLLOWING", "PENDING", "REQUEST"))) {
          stop(paste("Error! \"", `groupType`, "\" cannot be assigned to `groupType`. Must be \"PRIVATE\", \"FRIENDS\", \"TRUSTED\", \"BLOCKED\", \"FOLLOWERS\", \"FOLLOWING\", \"PENDING\", \"REQUEST\".", sep = ""))
        }
        if (!(is.character(`groupType`) && length(`groupType`) == 1)) {
          stop(paste("Error! Invalid data for `groupType`. Must be a string:", `groupType`))
        }
        self$`groupType` <- `groupType`
      }
      if (!is.null(`thumbnailURL`)) {
        if (!(is.character(`thumbnailURL`) && length(`thumbnailURL`) == 1)) {
          stop(paste("Error! Invalid data for `thumbnailURL`. Must be a string:", `thumbnailURL`))
        }
        self$`thumbnailURL` <- `thumbnailURL`
      }
      if (!is.null(`subGroups`)) {
        stopifnot(is.vector(`subGroups`), length(`subGroups`) != 0)
        sapply(`subGroups`, function(x) stopifnot(R6::is.R6(x)))
        self$`subGroups` <- `subGroups`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`connectionCount`)) {
        if (!(is.numeric(`connectionCount`) && length(`connectionCount`) == 1)) {
          stop(paste("Error! Invalid data for `connectionCount`. Must be an integer:", `connectionCount`))
        }
        self$`connectionCount` <- `connectionCount`
      }
      if (!is.null(`connections`)) {
        stopifnot(is.vector(`connections`), length(`connections`) != 0)
        sapply(`connections`, function(x) stopifnot(R6::is.R6(x)))
        self$`connections` <- `connections`
      }
      if (!is.null(`groupPermissions`)) {
        stopifnot(R6::is.R6(`groupPermissions`))
        self$`groupPermissions` <- `groupPermissions`
      }
      if (!is.null(`ownerId`)) {
        if (!(is.numeric(`ownerId`) && length(`ownerId`) == 1)) {
          stop(paste("Error! Invalid data for `ownerId`. Must be an integer:", `ownerId`))
        }
        self$`ownerId` <- `ownerId`
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
    #' @return ConnectionGroupResponse as a base R list.
    #' @examples
    #' # convert array of ConnectionGroupResponse (x) to a data frame
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
    #' Convert ConnectionGroupResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConnectionGroupResponseObject <- list()
      if (!is.null(self$`valid`)) {
        ConnectionGroupResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ConnectionGroupResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ConnectionGroupResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ConnectionGroupResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ConnectionGroupResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ConnectionGroupResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ConnectionGroupResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`connectionGroupId`)) {
        ConnectionGroupResponseObject[["connectionGroupId"]] <-
          self$`connectionGroupId`
      }
      if (!is.null(self$`name`)) {
        ConnectionGroupResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`groupType`)) {
        ConnectionGroupResponseObject[["groupType"]] <-
          self$`groupType`
      }
      if (!is.null(self$`thumbnailURL`)) {
        ConnectionGroupResponseObject[["thumbnailURL"]] <-
          self$`thumbnailURL`
      }
      if (!is.null(self$`subGroups`)) {
        ConnectionGroupResponseObject[["subGroups"]] <-
          self$extractSimpleType(self$`subGroups`)
      }
      if (!is.null(self$`description`)) {
        ConnectionGroupResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`active`)) {
        ConnectionGroupResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`connectionCount`)) {
        ConnectionGroupResponseObject[["connectionCount"]] <-
          self$`connectionCount`
      }
      if (!is.null(self$`connections`)) {
        ConnectionGroupResponseObject[["connections"]] <-
          self$extractSimpleType(self$`connections`)
      }
      if (!is.null(self$`groupPermissions`)) {
        ConnectionGroupResponseObject[["groupPermissions"]] <-
          self$extractSimpleType(self$`groupPermissions`)
      }
      if (!is.null(self$`ownerId`)) {
        ConnectionGroupResponseObject[["ownerId"]] <-
          self$`ownerId`
      }
      if (!is.null(self$`returning`)) {
        ConnectionGroupResponseObject[["returning"]] <-
          self$`returning`
      }
      return(ConnectionGroupResponseObject)
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
    #' Deserialize JSON string into an instance of ConnectionGroupResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionGroupResponse
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
      if (!is.null(this_object$`connectionGroupId`)) {
        self$`connectionGroupId` <- this_object$`connectionGroupId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`groupType`)) {
        if (!is.null(this_object$`groupType`) && !(this_object$`groupType` %in% c("PRIVATE", "FRIENDS", "TRUSTED", "BLOCKED", "FOLLOWERS", "FOLLOWING", "PENDING", "REQUEST"))) {
          stop(paste("Error! \"", this_object$`groupType`, "\" cannot be assigned to `groupType`. Must be \"PRIVATE\", \"FRIENDS\", \"TRUSTED\", \"BLOCKED\", \"FOLLOWERS\", \"FOLLOWING\", \"PENDING\", \"REQUEST\".", sep = ""))
        }
        self$`groupType` <- this_object$`groupType`
      }
      if (!is.null(this_object$`thumbnailURL`)) {
        self$`thumbnailURL` <- this_object$`thumbnailURL`
      }
      if (!is.null(this_object$`subGroups`)) {
        self$`subGroups` <- ApiClient$new()$deserializeObj(this_object$`subGroups`, "array[ConnectionGroupResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`connectionCount`)) {
        self$`connectionCount` <- this_object$`connectionCount`
      }
      if (!is.null(this_object$`connections`)) {
        self$`connections` <- ApiClient$new()$deserializeObj(this_object$`connections`, "array[ConnectionResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`groupPermissions`)) {
        `grouppermissions_object` <- GroupPermissions$new()
        `grouppermissions_object`$fromJSON(jsonlite::toJSON(this_object$`groupPermissions`, auto_unbox = TRUE, digits = NA))
        self$`groupPermissions` <- `grouppermissions_object`
      }
      if (!is.null(this_object$`ownerId`)) {
        self$`ownerId` <- this_object$`ownerId`
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
    #' @return ConnectionGroupResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectionGroupResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionGroupResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`connectionGroupId` <- this_object$`connectionGroupId`
      self$`name` <- this_object$`name`
      if (!is.null(this_object$`groupType`) && !(this_object$`groupType` %in% c("PRIVATE", "FRIENDS", "TRUSTED", "BLOCKED", "FOLLOWERS", "FOLLOWING", "PENDING", "REQUEST"))) {
        stop(paste("Error! \"", this_object$`groupType`, "\" cannot be assigned to `groupType`. Must be \"PRIVATE\", \"FRIENDS\", \"TRUSTED\", \"BLOCKED\", \"FOLLOWERS\", \"FOLLOWING\", \"PENDING\", \"REQUEST\".", sep = ""))
      }
      self$`groupType` <- this_object$`groupType`
      self$`thumbnailURL` <- this_object$`thumbnailURL`
      self$`subGroups` <- ApiClient$new()$deserializeObj(this_object$`subGroups`, "array[ConnectionGroupResponse]", loadNamespace("openapi"))
      self$`description` <- this_object$`description`
      self$`active` <- this_object$`active`
      self$`connectionCount` <- this_object$`connectionCount`
      self$`connections` <- ApiClient$new()$deserializeObj(this_object$`connections`, "array[ConnectionResponse]", loadNamespace("openapi"))
      self$`groupPermissions` <- GroupPermissions$new()$fromJSON(jsonlite::toJSON(this_object$`groupPermissions`, auto_unbox = TRUE, digits = NA))
      self$`ownerId` <- this_object$`ownerId`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConnectionGroupResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionGroupResponse
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
# ConnectionGroupResponse$unlock()
#
## Below is an example to define the print function
# ConnectionGroupResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionGroupResponse$lock()

