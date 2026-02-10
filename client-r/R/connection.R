#' Create a new Connection
#'
#' @description
#' Connection Class
#'
#' @docType class
#' @title Connection
#' @description Connection Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field created  character [optional]
#' @field updated  character [optional]
#' @field deleted  character [optional]
#' @field objectType  character [optional]
#' @field legacyId  character [optional]
#' @field searchTags  character [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field account  \link{Account} [optional]
#' @field connection  \link{Account} [optional]
#' @field pendingConnection  \link{ConnectedFriend} [optional]
#' @field friend  character [optional]
#' @field friendRequested  character [optional]
#' @field friendRequestPending  character [optional]
#' @field following  character [optional]
#' @field follower  character [optional]
#' @field trusted  character [optional]
#' @field blocked  character [optional]
#' @field friendRequestDate  character [optional]
#' @field friendResponseDate  character [optional]
#' @field display  character [optional]
#' @field connectionViewedDate  character [optional]
#' @field connectionType  character [optional]
#' @field title  character [optional]
#' @field pendingConnection_id  integer [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Connection <- R6::R6Class(
  "Connection",
  public = list(
    `id` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `deleted` = NULL,
    `objectType` = NULL,
    `legacyId` = NULL,
    `searchTags` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `account` = NULL,
    `connection` = NULL,
    `pendingConnection` = NULL,
    `friend` = NULL,
    `friendRequested` = NULL,
    `friendRequestPending` = NULL,
    `following` = NULL,
    `follower` = NULL,
    `trusted` = NULL,
    `blocked` = NULL,
    `friendRequestDate` = NULL,
    `friendResponseDate` = NULL,
    `display` = NULL,
    `connectionViewedDate` = NULL,
    `connectionType` = NULL,
    `title` = NULL,
    `pendingConnection_id` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,

    #' @description
    #' Initialize a new Connection class.
    #'
    #' @param id id
    #' @param created created
    #' @param updated updated
    #' @param deleted deleted
    #' @param objectType objectType
    #' @param legacyId legacyId
    #' @param searchTags searchTags
    #' @param active active
    #' @param valid valid
    #' @param account account
    #' @param connection connection
    #' @param pendingConnection pendingConnection
    #' @param friend friend
    #' @param friendRequested friendRequested
    #' @param friendRequestPending friendRequestPending
    #' @param following following
    #' @param follower follower
    #' @param trusted trusted
    #' @param blocked blocked
    #' @param friendRequestDate friendRequestDate
    #' @param friendResponseDate friendResponseDate
    #' @param display display
    #' @param connectionViewedDate connectionViewedDate
    #' @param connectionType connectionType
    #' @param title title
    #' @param pendingConnection_id pendingConnection_id
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `created` = NULL, `updated` = NULL, `deleted` = NULL, `objectType` = NULL, `legacyId` = NULL, `searchTags` = NULL, `active` = NULL, `valid` = NULL, `account` = NULL, `connection` = NULL, `pendingConnection` = NULL, `friend` = NULL, `friendRequested` = NULL, `friendRequestPending` = NULL, `following` = NULL, `follower` = NULL, `trusted` = NULL, `blocked` = NULL, `friendRequestDate` = NULL, `friendResponseDate` = NULL, `display` = NULL, `connectionViewedDate` = NULL, `connectionType` = NULL, `title` = NULL, `pendingConnection_id` = NULL, `latitude` = NULL, `longitude` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`created`)) {
        if (!is.character(`created`)) {
          stop(paste("Error! Invalid data for `created`. Must be a string:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`updated`)) {
        if (!is.character(`updated`)) {
          stop(paste("Error! Invalid data for `updated`. Must be a string:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`deleted`)) {
        if (!is.character(`deleted`)) {
          stop(paste("Error! Invalid data for `deleted`. Must be a string:", `deleted`))
        }
        self$`deleted` <- `deleted`
      }
      if (!is.null(`objectType`)) {
        if (!(is.character(`objectType`) && length(`objectType`) == 1)) {
          stop(paste("Error! Invalid data for `objectType`. Must be a string:", `objectType`))
        }
        self$`objectType` <- `objectType`
      }
      if (!is.null(`legacyId`)) {
        if (!(is.character(`legacyId`) && length(`legacyId`) == 1)) {
          stop(paste("Error! Invalid data for `legacyId`. Must be a string:", `legacyId`))
        }
        self$`legacyId` <- `legacyId`
      }
      if (!is.null(`searchTags`)) {
        if (!(is.character(`searchTags`) && length(`searchTags`) == 1)) {
          stop(paste("Error! Invalid data for `searchTags`. Must be a string:", `searchTags`))
        }
        self$`searchTags` <- `searchTags`
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
      if (!is.null(`account`)) {
        stopifnot(R6::is.R6(`account`))
        self$`account` <- `account`
      }
      if (!is.null(`connection`)) {
        stopifnot(R6::is.R6(`connection`))
        self$`connection` <- `connection`
      }
      if (!is.null(`pendingConnection`)) {
        stopifnot(R6::is.R6(`pendingConnection`))
        self$`pendingConnection` <- `pendingConnection`
      }
      if (!is.null(`friend`)) {
        if (!(is.logical(`friend`) && length(`friend`) == 1)) {
          stop(paste("Error! Invalid data for `friend`. Must be a boolean:", `friend`))
        }
        self$`friend` <- `friend`
      }
      if (!is.null(`friendRequested`)) {
        if (!(is.logical(`friendRequested`) && length(`friendRequested`) == 1)) {
          stop(paste("Error! Invalid data for `friendRequested`. Must be a boolean:", `friendRequested`))
        }
        self$`friendRequested` <- `friendRequested`
      }
      if (!is.null(`friendRequestPending`)) {
        if (!(is.logical(`friendRequestPending`) && length(`friendRequestPending`) == 1)) {
          stop(paste("Error! Invalid data for `friendRequestPending`. Must be a boolean:", `friendRequestPending`))
        }
        self$`friendRequestPending` <- `friendRequestPending`
      }
      if (!is.null(`following`)) {
        if (!(is.logical(`following`) && length(`following`) == 1)) {
          stop(paste("Error! Invalid data for `following`. Must be a boolean:", `following`))
        }
        self$`following` <- `following`
      }
      if (!is.null(`follower`)) {
        if (!(is.logical(`follower`) && length(`follower`) == 1)) {
          stop(paste("Error! Invalid data for `follower`. Must be a boolean:", `follower`))
        }
        self$`follower` <- `follower`
      }
      if (!is.null(`trusted`)) {
        if (!(is.logical(`trusted`) && length(`trusted`) == 1)) {
          stop(paste("Error! Invalid data for `trusted`. Must be a boolean:", `trusted`))
        }
        self$`trusted` <- `trusted`
      }
      if (!is.null(`blocked`)) {
        if (!(is.logical(`blocked`) && length(`blocked`) == 1)) {
          stop(paste("Error! Invalid data for `blocked`. Must be a boolean:", `blocked`))
        }
        self$`blocked` <- `blocked`
      }
      if (!is.null(`friendRequestDate`)) {
        if (!is.character(`friendRequestDate`)) {
          stop(paste("Error! Invalid data for `friendRequestDate`. Must be a string:", `friendRequestDate`))
        }
        self$`friendRequestDate` <- `friendRequestDate`
      }
      if (!is.null(`friendResponseDate`)) {
        if (!is.character(`friendResponseDate`)) {
          stop(paste("Error! Invalid data for `friendResponseDate`. Must be a string:", `friendResponseDate`))
        }
        self$`friendResponseDate` <- `friendResponseDate`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`connectionViewedDate`)) {
        if (!is.character(`connectionViewedDate`)) {
          stop(paste("Error! Invalid data for `connectionViewedDate`. Must be a string:", `connectionViewedDate`))
        }
        self$`connectionViewedDate` <- `connectionViewedDate`
      }
      if (!is.null(`connectionType`)) {
        if (!(`connectionType` %in% c("PRIMARY", "SECONDARY", "DEPENDENT", "ACQUAINTANCE"))) {
          stop(paste("Error! \"", `connectionType`, "\" cannot be assigned to `connectionType`. Must be \"PRIMARY\", \"SECONDARY\", \"DEPENDENT\", \"ACQUAINTANCE\".", sep = ""))
        }
        if (!(is.character(`connectionType`) && length(`connectionType`) == 1)) {
          stop(paste("Error! Invalid data for `connectionType`. Must be a string:", `connectionType`))
        }
        self$`connectionType` <- `connectionType`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`pendingConnection_id`)) {
        if (!(is.numeric(`pendingConnection_id`) && length(`pendingConnection_id`) == 1)) {
          stop(paste("Error! Invalid data for `pendingConnection_id`. Must be an integer:", `pendingConnection_id`))
        }
        self$`pendingConnection_id` <- `pendingConnection_id`
      }
      if (!is.null(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!is.null(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
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
    #' @return Connection as a base R list.
    #' @examples
    #' # convert array of Connection (x) to a data frame
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
    #' Convert Connection to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConnectionObject <- list()
      if (!is.null(self$`id`)) {
        ConnectionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`created`)) {
        ConnectionObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        ConnectionObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`deleted`)) {
        ConnectionObject[["deleted"]] <-
          self$`deleted`
      }
      if (!is.null(self$`objectType`)) {
        ConnectionObject[["objectType"]] <-
          self$`objectType`
      }
      if (!is.null(self$`legacyId`)) {
        ConnectionObject[["legacyId"]] <-
          self$`legacyId`
      }
      if (!is.null(self$`searchTags`)) {
        ConnectionObject[["searchTags"]] <-
          self$`searchTags`
      }
      if (!is.null(self$`active`)) {
        ConnectionObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ConnectionObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`account`)) {
        ConnectionObject[["account"]] <-
          self$extractSimpleType(self$`account`)
      }
      if (!is.null(self$`connection`)) {
        ConnectionObject[["connection"]] <-
          self$extractSimpleType(self$`connection`)
      }
      if (!is.null(self$`pendingConnection`)) {
        ConnectionObject[["pendingConnection"]] <-
          self$extractSimpleType(self$`pendingConnection`)
      }
      if (!is.null(self$`friend`)) {
        ConnectionObject[["friend"]] <-
          self$`friend`
      }
      if (!is.null(self$`friendRequested`)) {
        ConnectionObject[["friendRequested"]] <-
          self$`friendRequested`
      }
      if (!is.null(self$`friendRequestPending`)) {
        ConnectionObject[["friendRequestPending"]] <-
          self$`friendRequestPending`
      }
      if (!is.null(self$`following`)) {
        ConnectionObject[["following"]] <-
          self$`following`
      }
      if (!is.null(self$`follower`)) {
        ConnectionObject[["follower"]] <-
          self$`follower`
      }
      if (!is.null(self$`trusted`)) {
        ConnectionObject[["trusted"]] <-
          self$`trusted`
      }
      if (!is.null(self$`blocked`)) {
        ConnectionObject[["blocked"]] <-
          self$`blocked`
      }
      if (!is.null(self$`friendRequestDate`)) {
        ConnectionObject[["friendRequestDate"]] <-
          self$`friendRequestDate`
      }
      if (!is.null(self$`friendResponseDate`)) {
        ConnectionObject[["friendResponseDate"]] <-
          self$`friendResponseDate`
      }
      if (!is.null(self$`display`)) {
        ConnectionObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`connectionViewedDate`)) {
        ConnectionObject[["connectionViewedDate"]] <-
          self$`connectionViewedDate`
      }
      if (!is.null(self$`connectionType`)) {
        ConnectionObject[["connectionType"]] <-
          self$`connectionType`
      }
      if (!is.null(self$`title`)) {
        ConnectionObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`pendingConnection_id`)) {
        ConnectionObject[["pendingConnection_id"]] <-
          self$`pendingConnection_id`
      }
      if (!is.null(self$`latitude`)) {
        ConnectionObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        ConnectionObject[["longitude"]] <-
          self$`longitude`
      }
      return(ConnectionObject)
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
    #' Deserialize JSON string into an instance of Connection
    #'
    #' @param input_json the JSON input
    #' @return the instance of Connection
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`deleted`)) {
        self$`deleted` <- this_object$`deleted`
      }
      if (!is.null(this_object$`objectType`)) {
        self$`objectType` <- this_object$`objectType`
      }
      if (!is.null(this_object$`legacyId`)) {
        self$`legacyId` <- this_object$`legacyId`
      }
      if (!is.null(this_object$`searchTags`)) {
        self$`searchTags` <- this_object$`searchTags`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`account`)) {
        `account_object` <- Account$new()
        `account_object`$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
        self$`account` <- `account_object`
      }
      if (!is.null(this_object$`connection`)) {
        `connection_object` <- Account$new()
        `connection_object`$fromJSON(jsonlite::toJSON(this_object$`connection`, auto_unbox = TRUE, digits = NA))
        self$`connection` <- `connection_object`
      }
      if (!is.null(this_object$`pendingConnection`)) {
        `pendingconnection_object` <- ConnectedFriend$new()
        `pendingconnection_object`$fromJSON(jsonlite::toJSON(this_object$`pendingConnection`, auto_unbox = TRUE, digits = NA))
        self$`pendingConnection` <- `pendingconnection_object`
      }
      if (!is.null(this_object$`friend`)) {
        self$`friend` <- this_object$`friend`
      }
      if (!is.null(this_object$`friendRequested`)) {
        self$`friendRequested` <- this_object$`friendRequested`
      }
      if (!is.null(this_object$`friendRequestPending`)) {
        self$`friendRequestPending` <- this_object$`friendRequestPending`
      }
      if (!is.null(this_object$`following`)) {
        self$`following` <- this_object$`following`
      }
      if (!is.null(this_object$`follower`)) {
        self$`follower` <- this_object$`follower`
      }
      if (!is.null(this_object$`trusted`)) {
        self$`trusted` <- this_object$`trusted`
      }
      if (!is.null(this_object$`blocked`)) {
        self$`blocked` <- this_object$`blocked`
      }
      if (!is.null(this_object$`friendRequestDate`)) {
        self$`friendRequestDate` <- this_object$`friendRequestDate`
      }
      if (!is.null(this_object$`friendResponseDate`)) {
        self$`friendResponseDate` <- this_object$`friendResponseDate`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`connectionViewedDate`)) {
        self$`connectionViewedDate` <- this_object$`connectionViewedDate`
      }
      if (!is.null(this_object$`connectionType`)) {
        if (!is.null(this_object$`connectionType`) && !(this_object$`connectionType` %in% c("PRIMARY", "SECONDARY", "DEPENDENT", "ACQUAINTANCE"))) {
          stop(paste("Error! \"", this_object$`connectionType`, "\" cannot be assigned to `connectionType`. Must be \"PRIMARY\", \"SECONDARY\", \"DEPENDENT\", \"ACQUAINTANCE\".", sep = ""))
        }
        self$`connectionType` <- this_object$`connectionType`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`pendingConnection_id`)) {
        self$`pendingConnection_id` <- this_object$`pendingConnection_id`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Connection in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Connection
    #'
    #' @param input_json the JSON input
    #' @return the instance of Connection
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`deleted` <- this_object$`deleted`
      self$`objectType` <- this_object$`objectType`
      self$`legacyId` <- this_object$`legacyId`
      self$`searchTags` <- this_object$`searchTags`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`account` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
      self$`connection` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`connection`, auto_unbox = TRUE, digits = NA))
      self$`pendingConnection` <- ConnectedFriend$new()$fromJSON(jsonlite::toJSON(this_object$`pendingConnection`, auto_unbox = TRUE, digits = NA))
      self$`friend` <- this_object$`friend`
      self$`friendRequested` <- this_object$`friendRequested`
      self$`friendRequestPending` <- this_object$`friendRequestPending`
      self$`following` <- this_object$`following`
      self$`follower` <- this_object$`follower`
      self$`trusted` <- this_object$`trusted`
      self$`blocked` <- this_object$`blocked`
      self$`friendRequestDate` <- this_object$`friendRequestDate`
      self$`friendResponseDate` <- this_object$`friendResponseDate`
      self$`display` <- this_object$`display`
      self$`connectionViewedDate` <- this_object$`connectionViewedDate`
      if (!is.null(this_object$`connectionType`) && !(this_object$`connectionType` %in% c("PRIMARY", "SECONDARY", "DEPENDENT", "ACQUAINTANCE"))) {
        stop(paste("Error! \"", this_object$`connectionType`, "\" cannot be assigned to `connectionType`. Must be \"PRIMARY\", \"SECONDARY\", \"DEPENDENT\", \"ACQUAINTANCE\".", sep = ""))
      }
      self$`connectionType` <- this_object$`connectionType`
      self$`title` <- this_object$`title`
      self$`pendingConnection_id` <- this_object$`pendingConnection_id`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self
    },

    #' @description
    #' Validate JSON input with respect to Connection and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Connection
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
# Connection$unlock()
#
## Below is an example to define the print function
# Connection$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Connection$lock()

