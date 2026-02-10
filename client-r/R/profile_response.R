#' Create a new ProfileResponse
#'
#' @description
#' ProfileResponse Class
#'
#' @docType class
#' @title ProfileResponse
#' @description ProfileResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field loginAccountId  integer [optional]
#' @field validated  character [optional]
#' @field appInfo  \link{AppInfoResponse} [optional]
#' @field canViewAppInfo  character [optional]
#' @field canViewFriendInfo  character [optional]
#' @field canViewProfileInfo  character [optional]
#' @field flagCount  integer [optional]
#' @field friendInfo  \link{ConnectionInfoResponse} [optional]
#' @field isBlocked  character [optional]
#' @field isProfileOwner  character [optional]
#' @field metFlagThreshold  character [optional]
#' @field profileInfo  \link{ProfileInfoResponse} [optional]
#' @field trusted  character [optional]
#' @field following  character [optional]
#' @field friendRequested  character [optional]
#' @field friendRequestPending  character [optional]
#' @field blocked  character [optional]
#' @field flagged  character [optional]
#' @field profileOwner  character [optional]
#' @field friend  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProfileResponse <- R6::R6Class(
  "ProfileResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `loginAccountId` = NULL,
    `validated` = NULL,
    `appInfo` = NULL,
    `canViewAppInfo` = NULL,
    `canViewFriendInfo` = NULL,
    `canViewProfileInfo` = NULL,
    `flagCount` = NULL,
    `friendInfo` = NULL,
    `isBlocked` = NULL,
    `isProfileOwner` = NULL,
    `metFlagThreshold` = NULL,
    `profileInfo` = NULL,
    `trusted` = NULL,
    `following` = NULL,
    `friendRequested` = NULL,
    `friendRequestPending` = NULL,
    `blocked` = NULL,
    `flagged` = NULL,
    `profileOwner` = NULL,
    `friend` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ProfileResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param loginAccountId loginAccountId
    #' @param validated validated
    #' @param appInfo appInfo
    #' @param canViewAppInfo canViewAppInfo
    #' @param canViewFriendInfo canViewFriendInfo
    #' @param canViewProfileInfo canViewProfileInfo
    #' @param flagCount flagCount
    #' @param friendInfo friendInfo
    #' @param isBlocked isBlocked
    #' @param isProfileOwner isProfileOwner
    #' @param metFlagThreshold metFlagThreshold
    #' @param profileInfo profileInfo
    #' @param trusted trusted
    #' @param following following
    #' @param friendRequested friendRequested
    #' @param friendRequestPending friendRequestPending
    #' @param blocked blocked
    #' @param flagged flagged
    #' @param profileOwner profileOwner
    #' @param friend friend
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `loginAccountId` = NULL, `validated` = NULL, `appInfo` = NULL, `canViewAppInfo` = NULL, `canViewFriendInfo` = NULL, `canViewProfileInfo` = NULL, `flagCount` = NULL, `friendInfo` = NULL, `isBlocked` = NULL, `isProfileOwner` = NULL, `metFlagThreshold` = NULL, `profileInfo` = NULL, `trusted` = NULL, `following` = NULL, `friendRequested` = NULL, `friendRequestPending` = NULL, `blocked` = NULL, `flagged` = NULL, `profileOwner` = NULL, `friend` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`loginAccountId`)) {
        if (!(is.numeric(`loginAccountId`) && length(`loginAccountId`) == 1)) {
          stop(paste("Error! Invalid data for `loginAccountId`. Must be an integer:", `loginAccountId`))
        }
        self$`loginAccountId` <- `loginAccountId`
      }
      if (!is.null(`validated`)) {
        if (!(is.logical(`validated`) && length(`validated`) == 1)) {
          stop(paste("Error! Invalid data for `validated`. Must be a boolean:", `validated`))
        }
        self$`validated` <- `validated`
      }
      if (!is.null(`appInfo`)) {
        stopifnot(R6::is.R6(`appInfo`))
        self$`appInfo` <- `appInfo`
      }
      if (!is.null(`canViewAppInfo`)) {
        if (!(is.logical(`canViewAppInfo`) && length(`canViewAppInfo`) == 1)) {
          stop(paste("Error! Invalid data for `canViewAppInfo`. Must be a boolean:", `canViewAppInfo`))
        }
        self$`canViewAppInfo` <- `canViewAppInfo`
      }
      if (!is.null(`canViewFriendInfo`)) {
        if (!(is.logical(`canViewFriendInfo`) && length(`canViewFriendInfo`) == 1)) {
          stop(paste("Error! Invalid data for `canViewFriendInfo`. Must be a boolean:", `canViewFriendInfo`))
        }
        self$`canViewFriendInfo` <- `canViewFriendInfo`
      }
      if (!is.null(`canViewProfileInfo`)) {
        if (!(is.logical(`canViewProfileInfo`) && length(`canViewProfileInfo`) == 1)) {
          stop(paste("Error! Invalid data for `canViewProfileInfo`. Must be a boolean:", `canViewProfileInfo`))
        }
        self$`canViewProfileInfo` <- `canViewProfileInfo`
      }
      if (!is.null(`flagCount`)) {
        if (!(is.numeric(`flagCount`) && length(`flagCount`) == 1)) {
          stop(paste("Error! Invalid data for `flagCount`. Must be an integer:", `flagCount`))
        }
        self$`flagCount` <- `flagCount`
      }
      if (!is.null(`friendInfo`)) {
        stopifnot(R6::is.R6(`friendInfo`))
        self$`friendInfo` <- `friendInfo`
      }
      if (!is.null(`isBlocked`)) {
        if (!(is.logical(`isBlocked`) && length(`isBlocked`) == 1)) {
          stop(paste("Error! Invalid data for `isBlocked`. Must be a boolean:", `isBlocked`))
        }
        self$`isBlocked` <- `isBlocked`
      }
      if (!is.null(`isProfileOwner`)) {
        if (!(is.logical(`isProfileOwner`) && length(`isProfileOwner`) == 1)) {
          stop(paste("Error! Invalid data for `isProfileOwner`. Must be a boolean:", `isProfileOwner`))
        }
        self$`isProfileOwner` <- `isProfileOwner`
      }
      if (!is.null(`metFlagThreshold`)) {
        if (!(is.logical(`metFlagThreshold`) && length(`metFlagThreshold`) == 1)) {
          stop(paste("Error! Invalid data for `metFlagThreshold`. Must be a boolean:", `metFlagThreshold`))
        }
        self$`metFlagThreshold` <- `metFlagThreshold`
      }
      if (!is.null(`profileInfo`)) {
        stopifnot(R6::is.R6(`profileInfo`))
        self$`profileInfo` <- `profileInfo`
      }
      if (!is.null(`trusted`)) {
        if (!(is.logical(`trusted`) && length(`trusted`) == 1)) {
          stop(paste("Error! Invalid data for `trusted`. Must be a boolean:", `trusted`))
        }
        self$`trusted` <- `trusted`
      }
      if (!is.null(`following`)) {
        if (!(is.logical(`following`) && length(`following`) == 1)) {
          stop(paste("Error! Invalid data for `following`. Must be a boolean:", `following`))
        }
        self$`following` <- `following`
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
      if (!is.null(`blocked`)) {
        if (!(is.logical(`blocked`) && length(`blocked`) == 1)) {
          stop(paste("Error! Invalid data for `blocked`. Must be a boolean:", `blocked`))
        }
        self$`blocked` <- `blocked`
      }
      if (!is.null(`flagged`)) {
        if (!(is.logical(`flagged`) && length(`flagged`) == 1)) {
          stop(paste("Error! Invalid data for `flagged`. Must be a boolean:", `flagged`))
        }
        self$`flagged` <- `flagged`
      }
      if (!is.null(`profileOwner`)) {
        if (!(is.logical(`profileOwner`) && length(`profileOwner`) == 1)) {
          stop(paste("Error! Invalid data for `profileOwner`. Must be a boolean:", `profileOwner`))
        }
        self$`profileOwner` <- `profileOwner`
      }
      if (!is.null(`friend`)) {
        if (!(is.logical(`friend`) && length(`friend`) == 1)) {
          stop(paste("Error! Invalid data for `friend`. Must be a boolean:", `friend`))
        }
        self$`friend` <- `friend`
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
    #' @return ProfileResponse as a base R list.
    #' @examples
    #' # convert array of ProfileResponse (x) to a data frame
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
    #' Convert ProfileResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProfileResponseObject <- list()
      if (!is.null(self$`valid`)) {
        ProfileResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ProfileResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ProfileResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ProfileResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ProfileResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ProfileResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ProfileResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`loginAccountId`)) {
        ProfileResponseObject[["loginAccountId"]] <-
          self$`loginAccountId`
      }
      if (!is.null(self$`validated`)) {
        ProfileResponseObject[["validated"]] <-
          self$`validated`
      }
      if (!is.null(self$`appInfo`)) {
        ProfileResponseObject[["appInfo"]] <-
          self$extractSimpleType(self$`appInfo`)
      }
      if (!is.null(self$`canViewAppInfo`)) {
        ProfileResponseObject[["canViewAppInfo"]] <-
          self$`canViewAppInfo`
      }
      if (!is.null(self$`canViewFriendInfo`)) {
        ProfileResponseObject[["canViewFriendInfo"]] <-
          self$`canViewFriendInfo`
      }
      if (!is.null(self$`canViewProfileInfo`)) {
        ProfileResponseObject[["canViewProfileInfo"]] <-
          self$`canViewProfileInfo`
      }
      if (!is.null(self$`flagCount`)) {
        ProfileResponseObject[["flagCount"]] <-
          self$`flagCount`
      }
      if (!is.null(self$`friendInfo`)) {
        ProfileResponseObject[["friendInfo"]] <-
          self$extractSimpleType(self$`friendInfo`)
      }
      if (!is.null(self$`isBlocked`)) {
        ProfileResponseObject[["isBlocked"]] <-
          self$`isBlocked`
      }
      if (!is.null(self$`isProfileOwner`)) {
        ProfileResponseObject[["isProfileOwner"]] <-
          self$`isProfileOwner`
      }
      if (!is.null(self$`metFlagThreshold`)) {
        ProfileResponseObject[["metFlagThreshold"]] <-
          self$`metFlagThreshold`
      }
      if (!is.null(self$`profileInfo`)) {
        ProfileResponseObject[["profileInfo"]] <-
          self$extractSimpleType(self$`profileInfo`)
      }
      if (!is.null(self$`trusted`)) {
        ProfileResponseObject[["trusted"]] <-
          self$`trusted`
      }
      if (!is.null(self$`following`)) {
        ProfileResponseObject[["following"]] <-
          self$`following`
      }
      if (!is.null(self$`friendRequested`)) {
        ProfileResponseObject[["friendRequested"]] <-
          self$`friendRequested`
      }
      if (!is.null(self$`friendRequestPending`)) {
        ProfileResponseObject[["friendRequestPending"]] <-
          self$`friendRequestPending`
      }
      if (!is.null(self$`blocked`)) {
        ProfileResponseObject[["blocked"]] <-
          self$`blocked`
      }
      if (!is.null(self$`flagged`)) {
        ProfileResponseObject[["flagged"]] <-
          self$`flagged`
      }
      if (!is.null(self$`profileOwner`)) {
        ProfileResponseObject[["profileOwner"]] <-
          self$`profileOwner`
      }
      if (!is.null(self$`friend`)) {
        ProfileResponseObject[["friend"]] <-
          self$`friend`
      }
      if (!is.null(self$`returning`)) {
        ProfileResponseObject[["returning"]] <-
          self$`returning`
      }
      return(ProfileResponseObject)
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
    #' Deserialize JSON string into an instance of ProfileResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProfileResponse
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
      if (!is.null(this_object$`loginAccountId`)) {
        self$`loginAccountId` <- this_object$`loginAccountId`
      }
      if (!is.null(this_object$`validated`)) {
        self$`validated` <- this_object$`validated`
      }
      if (!is.null(this_object$`appInfo`)) {
        `appinfo_object` <- AppInfoResponse$new()
        `appinfo_object`$fromJSON(jsonlite::toJSON(this_object$`appInfo`, auto_unbox = TRUE, digits = NA))
        self$`appInfo` <- `appinfo_object`
      }
      if (!is.null(this_object$`canViewAppInfo`)) {
        self$`canViewAppInfo` <- this_object$`canViewAppInfo`
      }
      if (!is.null(this_object$`canViewFriendInfo`)) {
        self$`canViewFriendInfo` <- this_object$`canViewFriendInfo`
      }
      if (!is.null(this_object$`canViewProfileInfo`)) {
        self$`canViewProfileInfo` <- this_object$`canViewProfileInfo`
      }
      if (!is.null(this_object$`flagCount`)) {
        self$`flagCount` <- this_object$`flagCount`
      }
      if (!is.null(this_object$`friendInfo`)) {
        `friendinfo_object` <- ConnectionInfoResponse$new()
        `friendinfo_object`$fromJSON(jsonlite::toJSON(this_object$`friendInfo`, auto_unbox = TRUE, digits = NA))
        self$`friendInfo` <- `friendinfo_object`
      }
      if (!is.null(this_object$`isBlocked`)) {
        self$`isBlocked` <- this_object$`isBlocked`
      }
      if (!is.null(this_object$`isProfileOwner`)) {
        self$`isProfileOwner` <- this_object$`isProfileOwner`
      }
      if (!is.null(this_object$`metFlagThreshold`)) {
        self$`metFlagThreshold` <- this_object$`metFlagThreshold`
      }
      if (!is.null(this_object$`profileInfo`)) {
        `profileinfo_object` <- ProfileInfoResponse$new()
        `profileinfo_object`$fromJSON(jsonlite::toJSON(this_object$`profileInfo`, auto_unbox = TRUE, digits = NA))
        self$`profileInfo` <- `profileinfo_object`
      }
      if (!is.null(this_object$`trusted`)) {
        self$`trusted` <- this_object$`trusted`
      }
      if (!is.null(this_object$`following`)) {
        self$`following` <- this_object$`following`
      }
      if (!is.null(this_object$`friendRequested`)) {
        self$`friendRequested` <- this_object$`friendRequested`
      }
      if (!is.null(this_object$`friendRequestPending`)) {
        self$`friendRequestPending` <- this_object$`friendRequestPending`
      }
      if (!is.null(this_object$`blocked`)) {
        self$`blocked` <- this_object$`blocked`
      }
      if (!is.null(this_object$`flagged`)) {
        self$`flagged` <- this_object$`flagged`
      }
      if (!is.null(this_object$`profileOwner`)) {
        self$`profileOwner` <- this_object$`profileOwner`
      }
      if (!is.null(this_object$`friend`)) {
        self$`friend` <- this_object$`friend`
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
    #' @return ProfileResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProfileResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProfileResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`loginAccountId` <- this_object$`loginAccountId`
      self$`validated` <- this_object$`validated`
      self$`appInfo` <- AppInfoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`appInfo`, auto_unbox = TRUE, digits = NA))
      self$`canViewAppInfo` <- this_object$`canViewAppInfo`
      self$`canViewFriendInfo` <- this_object$`canViewFriendInfo`
      self$`canViewProfileInfo` <- this_object$`canViewProfileInfo`
      self$`flagCount` <- this_object$`flagCount`
      self$`friendInfo` <- ConnectionInfoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`friendInfo`, auto_unbox = TRUE, digits = NA))
      self$`isBlocked` <- this_object$`isBlocked`
      self$`isProfileOwner` <- this_object$`isProfileOwner`
      self$`metFlagThreshold` <- this_object$`metFlagThreshold`
      self$`profileInfo` <- ProfileInfoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`profileInfo`, auto_unbox = TRUE, digits = NA))
      self$`trusted` <- this_object$`trusted`
      self$`following` <- this_object$`following`
      self$`friendRequested` <- this_object$`friendRequested`
      self$`friendRequestPending` <- this_object$`friendRequestPending`
      self$`blocked` <- this_object$`blocked`
      self$`flagged` <- this_object$`flagged`
      self$`profileOwner` <- this_object$`profileOwner`
      self$`friend` <- this_object$`friend`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProfileResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProfileResponse
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
# ProfileResponse$unlock()
#
## Below is an example to define the print function
# ProfileResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProfileResponse$lock()

