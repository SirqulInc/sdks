#' Create a new MissionShortResponse
#'
#' @description
#' MissionShortResponse Class
#'
#' @docType class
#' @title MissionShortResponse
#' @description MissionShortResponse Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field highestAppVersion  character [optional]
#' @field missionId  integer [optional]
#' @field ticketsEarned  integer [optional]
#' @field costToPlay  integer [optional]
#' @field costToPlayType  character [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field authorOverride  character [optional]
#' @field icon  \link{AssetShortResponse} [optional]
#' @field image  \link{AssetShortResponse} [optional]
#' @field sequenceType  character [optional]
#' @field updatedDate  integer [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field missionType  character [optional]
#' @field active  character [optional]
#' @field balance  numeric [optional]
#' @field availableLimit  integer [optional]
#' @field inviteCount  integer [optional]
#' @field acceptedCount  integer [optional]
#' @field childCount  integer [optional]
#' @field enableBuyBack  character [optional]
#' @field minimumToPlay  integer [optional]
#' @field rewarded  character [optional]
#' @field refunded  character [optional]
#' @field joinCode  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MissionShortResponse <- R6::R6Class(
  "MissionShortResponse",
  public = list(
    `action` = NULL,
    `highestAppVersion` = NULL,
    `missionId` = NULL,
    `ticketsEarned` = NULL,
    `costToPlay` = NULL,
    `costToPlayType` = NULL,
    `owner` = NULL,
    `title` = NULL,
    `description` = NULL,
    `authorOverride` = NULL,
    `icon` = NULL,
    `image` = NULL,
    `sequenceType` = NULL,
    `updatedDate` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `missionType` = NULL,
    `active` = NULL,
    `balance` = NULL,
    `availableLimit` = NULL,
    `inviteCount` = NULL,
    `acceptedCount` = NULL,
    `childCount` = NULL,
    `enableBuyBack` = NULL,
    `minimumToPlay` = NULL,
    `rewarded` = NULL,
    `refunded` = NULL,
    `joinCode` = NULL,

    #' @description
    #' Initialize a new MissionShortResponse class.
    #'
    #' @param action action
    #' @param highestAppVersion highestAppVersion
    #' @param missionId missionId
    #' @param ticketsEarned ticketsEarned
    #' @param costToPlay costToPlay
    #' @param costToPlayType costToPlayType
    #' @param owner owner
    #' @param title title
    #' @param description description
    #' @param authorOverride authorOverride
    #' @param icon icon
    #' @param image image
    #' @param sequenceType sequenceType
    #' @param updatedDate updatedDate
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param missionType missionType
    #' @param active active
    #' @param balance balance
    #' @param availableLimit availableLimit
    #' @param inviteCount inviteCount
    #' @param acceptedCount acceptedCount
    #' @param childCount childCount
    #' @param enableBuyBack enableBuyBack
    #' @param minimumToPlay minimumToPlay
    #' @param rewarded rewarded
    #' @param refunded refunded
    #' @param joinCode joinCode
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `highestAppVersion` = NULL, `missionId` = NULL, `ticketsEarned` = NULL, `costToPlay` = NULL, `costToPlayType` = NULL, `owner` = NULL, `title` = NULL, `description` = NULL, `authorOverride` = NULL, `icon` = NULL, `image` = NULL, `sequenceType` = NULL, `updatedDate` = NULL, `startDate` = NULL, `endDate` = NULL, `missionType` = NULL, `active` = NULL, `balance` = NULL, `availableLimit` = NULL, `inviteCount` = NULL, `acceptedCount` = NULL, `childCount` = NULL, `enableBuyBack` = NULL, `minimumToPlay` = NULL, `rewarded` = NULL, `refunded` = NULL, `joinCode` = NULL, ...) {
      if (!is.null(`action`)) {
        if (!(`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`highestAppVersion`)) {
        if (!(is.character(`highestAppVersion`) && length(`highestAppVersion`) == 1)) {
          stop(paste("Error! Invalid data for `highestAppVersion`. Must be a string:", `highestAppVersion`))
        }
        self$`highestAppVersion` <- `highestAppVersion`
      }
      if (!is.null(`missionId`)) {
        if (!(is.numeric(`missionId`) && length(`missionId`) == 1)) {
          stop(paste("Error! Invalid data for `missionId`. Must be an integer:", `missionId`))
        }
        self$`missionId` <- `missionId`
      }
      if (!is.null(`ticketsEarned`)) {
        if (!(is.numeric(`ticketsEarned`) && length(`ticketsEarned`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsEarned`. Must be an integer:", `ticketsEarned`))
        }
        self$`ticketsEarned` <- `ticketsEarned`
      }
      if (!is.null(`costToPlay`)) {
        if (!(is.numeric(`costToPlay`) && length(`costToPlay`) == 1)) {
          stop(paste("Error! Invalid data for `costToPlay`. Must be an integer:", `costToPlay`))
        }
        self$`costToPlay` <- `costToPlay`
      }
      if (!is.null(`costToPlayType`)) {
        if (!(is.character(`costToPlayType`) && length(`costToPlayType`) == 1)) {
          stop(paste("Error! Invalid data for `costToPlayType`. Must be a string:", `costToPlayType`))
        }
        self$`costToPlayType` <- `costToPlayType`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`authorOverride`)) {
        if (!(is.character(`authorOverride`) && length(`authorOverride`) == 1)) {
          stop(paste("Error! Invalid data for `authorOverride`. Must be a string:", `authorOverride`))
        }
        self$`authorOverride` <- `authorOverride`
      }
      if (!is.null(`icon`)) {
        stopifnot(R6::is.R6(`icon`))
        self$`icon` <- `icon`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`sequenceType`)) {
        if (!(is.character(`sequenceType`) && length(`sequenceType`) == 1)) {
          stop(paste("Error! Invalid data for `sequenceType`. Must be a string:", `sequenceType`))
        }
        self$`sequenceType` <- `sequenceType`
      }
      if (!is.null(`updatedDate`)) {
        if (!(is.numeric(`updatedDate`) && length(`updatedDate`) == 1)) {
          stop(paste("Error! Invalid data for `updatedDate`. Must be an integer:", `updatedDate`))
        }
        self$`updatedDate` <- `updatedDate`
      }
      if (!is.null(`startDate`)) {
        if (!(is.numeric(`startDate`) && length(`startDate`) == 1)) {
          stop(paste("Error! Invalid data for `startDate`. Must be an integer:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endDate`)) {
        if (!(is.numeric(`endDate`) && length(`endDate`) == 1)) {
          stop(paste("Error! Invalid data for `endDate`. Must be an integer:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`missionType`)) {
        if (!(is.character(`missionType`) && length(`missionType`) == 1)) {
          stop(paste("Error! Invalid data for `missionType`. Must be a string:", `missionType`))
        }
        self$`missionType` <- `missionType`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`balance`)) {
        if (!(is.numeric(`balance`) && length(`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a number:", `balance`))
        }
        self$`balance` <- `balance`
      }
      if (!is.null(`availableLimit`)) {
        if (!(is.numeric(`availableLimit`) && length(`availableLimit`) == 1)) {
          stop(paste("Error! Invalid data for `availableLimit`. Must be an integer:", `availableLimit`))
        }
        self$`availableLimit` <- `availableLimit`
      }
      if (!is.null(`inviteCount`)) {
        if (!(is.numeric(`inviteCount`) && length(`inviteCount`) == 1)) {
          stop(paste("Error! Invalid data for `inviteCount`. Must be an integer:", `inviteCount`))
        }
        self$`inviteCount` <- `inviteCount`
      }
      if (!is.null(`acceptedCount`)) {
        if (!(is.numeric(`acceptedCount`) && length(`acceptedCount`) == 1)) {
          stop(paste("Error! Invalid data for `acceptedCount`. Must be an integer:", `acceptedCount`))
        }
        self$`acceptedCount` <- `acceptedCount`
      }
      if (!is.null(`childCount`)) {
        if (!(is.numeric(`childCount`) && length(`childCount`) == 1)) {
          stop(paste("Error! Invalid data for `childCount`. Must be an integer:", `childCount`))
        }
        self$`childCount` <- `childCount`
      }
      if (!is.null(`enableBuyBack`)) {
        if (!(is.logical(`enableBuyBack`) && length(`enableBuyBack`) == 1)) {
          stop(paste("Error! Invalid data for `enableBuyBack`. Must be a boolean:", `enableBuyBack`))
        }
        self$`enableBuyBack` <- `enableBuyBack`
      }
      if (!is.null(`minimumToPlay`)) {
        if (!(is.numeric(`minimumToPlay`) && length(`minimumToPlay`) == 1)) {
          stop(paste("Error! Invalid data for `minimumToPlay`. Must be an integer:", `minimumToPlay`))
        }
        self$`minimumToPlay` <- `minimumToPlay`
      }
      if (!is.null(`rewarded`)) {
        if (!(is.logical(`rewarded`) && length(`rewarded`) == 1)) {
          stop(paste("Error! Invalid data for `rewarded`. Must be a boolean:", `rewarded`))
        }
        self$`rewarded` <- `rewarded`
      }
      if (!is.null(`refunded`)) {
        if (!(is.logical(`refunded`) && length(`refunded`) == 1)) {
          stop(paste("Error! Invalid data for `refunded`. Must be a boolean:", `refunded`))
        }
        self$`refunded` <- `refunded`
      }
      if (!is.null(`joinCode`)) {
        if (!(is.character(`joinCode`) && length(`joinCode`) == 1)) {
          stop(paste("Error! Invalid data for `joinCode`. Must be a string:", `joinCode`))
        }
        self$`joinCode` <- `joinCode`
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
    #' @return MissionShortResponse as a base R list.
    #' @examples
    #' # convert array of MissionShortResponse (x) to a data frame
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
    #' Convert MissionShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MissionShortResponseObject <- list()
      if (!is.null(self$`action`)) {
        MissionShortResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`highestAppVersion`)) {
        MissionShortResponseObject[["highestAppVersion"]] <-
          self$`highestAppVersion`
      }
      if (!is.null(self$`missionId`)) {
        MissionShortResponseObject[["missionId"]] <-
          self$`missionId`
      }
      if (!is.null(self$`ticketsEarned`)) {
        MissionShortResponseObject[["ticketsEarned"]] <-
          self$`ticketsEarned`
      }
      if (!is.null(self$`costToPlay`)) {
        MissionShortResponseObject[["costToPlay"]] <-
          self$`costToPlay`
      }
      if (!is.null(self$`costToPlayType`)) {
        MissionShortResponseObject[["costToPlayType"]] <-
          self$`costToPlayType`
      }
      if (!is.null(self$`owner`)) {
        MissionShortResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`title`)) {
        MissionShortResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        MissionShortResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`authorOverride`)) {
        MissionShortResponseObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`icon`)) {
        MissionShortResponseObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`image`)) {
        MissionShortResponseObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`sequenceType`)) {
        MissionShortResponseObject[["sequenceType"]] <-
          self$`sequenceType`
      }
      if (!is.null(self$`updatedDate`)) {
        MissionShortResponseObject[["updatedDate"]] <-
          self$`updatedDate`
      }
      if (!is.null(self$`startDate`)) {
        MissionShortResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        MissionShortResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`missionType`)) {
        MissionShortResponseObject[["missionType"]] <-
          self$`missionType`
      }
      if (!is.null(self$`active`)) {
        MissionShortResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`balance`)) {
        MissionShortResponseObject[["balance"]] <-
          self$`balance`
      }
      if (!is.null(self$`availableLimit`)) {
        MissionShortResponseObject[["availableLimit"]] <-
          self$`availableLimit`
      }
      if (!is.null(self$`inviteCount`)) {
        MissionShortResponseObject[["inviteCount"]] <-
          self$`inviteCount`
      }
      if (!is.null(self$`acceptedCount`)) {
        MissionShortResponseObject[["acceptedCount"]] <-
          self$`acceptedCount`
      }
      if (!is.null(self$`childCount`)) {
        MissionShortResponseObject[["childCount"]] <-
          self$`childCount`
      }
      if (!is.null(self$`enableBuyBack`)) {
        MissionShortResponseObject[["enableBuyBack"]] <-
          self$`enableBuyBack`
      }
      if (!is.null(self$`minimumToPlay`)) {
        MissionShortResponseObject[["minimumToPlay"]] <-
          self$`minimumToPlay`
      }
      if (!is.null(self$`rewarded`)) {
        MissionShortResponseObject[["rewarded"]] <-
          self$`rewarded`
      }
      if (!is.null(self$`refunded`)) {
        MissionShortResponseObject[["refunded"]] <-
          self$`refunded`
      }
      if (!is.null(self$`joinCode`)) {
        MissionShortResponseObject[["joinCode"]] <-
          self$`joinCode`
      }
      return(MissionShortResponseObject)
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
    #' Deserialize JSON string into an instance of MissionShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionShortResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`highestAppVersion`)) {
        self$`highestAppVersion` <- this_object$`highestAppVersion`
      }
      if (!is.null(this_object$`missionId`)) {
        self$`missionId` <- this_object$`missionId`
      }
      if (!is.null(this_object$`ticketsEarned`)) {
        self$`ticketsEarned` <- this_object$`ticketsEarned`
      }
      if (!is.null(this_object$`costToPlay`)) {
        self$`costToPlay` <- this_object$`costToPlay`
      }
      if (!is.null(this_object$`costToPlayType`)) {
        self$`costToPlayType` <- this_object$`costToPlayType`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`authorOverride`)) {
        self$`authorOverride` <- this_object$`authorOverride`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- AssetShortResponse$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- AssetShortResponse$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`sequenceType`)) {
        self$`sequenceType` <- this_object$`sequenceType`
      }
      if (!is.null(this_object$`updatedDate`)) {
        self$`updatedDate` <- this_object$`updatedDate`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`missionType`)) {
        self$`missionType` <- this_object$`missionType`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`balance`)) {
        self$`balance` <- this_object$`balance`
      }
      if (!is.null(this_object$`availableLimit`)) {
        self$`availableLimit` <- this_object$`availableLimit`
      }
      if (!is.null(this_object$`inviteCount`)) {
        self$`inviteCount` <- this_object$`inviteCount`
      }
      if (!is.null(this_object$`acceptedCount`)) {
        self$`acceptedCount` <- this_object$`acceptedCount`
      }
      if (!is.null(this_object$`childCount`)) {
        self$`childCount` <- this_object$`childCount`
      }
      if (!is.null(this_object$`enableBuyBack`)) {
        self$`enableBuyBack` <- this_object$`enableBuyBack`
      }
      if (!is.null(this_object$`minimumToPlay`)) {
        self$`minimumToPlay` <- this_object$`minimumToPlay`
      }
      if (!is.null(this_object$`rewarded`)) {
        self$`rewarded` <- this_object$`rewarded`
      }
      if (!is.null(this_object$`refunded`)) {
        self$`refunded` <- this_object$`refunded`
      }
      if (!is.null(this_object$`joinCode`)) {
        self$`joinCode` <- this_object$`joinCode`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MissionShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MissionShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MissionShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`highestAppVersion` <- this_object$`highestAppVersion`
      self$`missionId` <- this_object$`missionId`
      self$`ticketsEarned` <- this_object$`ticketsEarned`
      self$`costToPlay` <- this_object$`costToPlay`
      self$`costToPlayType` <- this_object$`costToPlayType`
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`authorOverride` <- this_object$`authorOverride`
      self$`icon` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`image` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`sequenceType` <- this_object$`sequenceType`
      self$`updatedDate` <- this_object$`updatedDate`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`missionType` <- this_object$`missionType`
      self$`active` <- this_object$`active`
      self$`balance` <- this_object$`balance`
      self$`availableLimit` <- this_object$`availableLimit`
      self$`inviteCount` <- this_object$`inviteCount`
      self$`acceptedCount` <- this_object$`acceptedCount`
      self$`childCount` <- this_object$`childCount`
      self$`enableBuyBack` <- this_object$`enableBuyBack`
      self$`minimumToPlay` <- this_object$`minimumToPlay`
      self$`rewarded` <- this_object$`rewarded`
      self$`refunded` <- this_object$`refunded`
      self$`joinCode` <- this_object$`joinCode`
      self
    },

    #' @description
    #' Validate JSON input with respect to MissionShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MissionShortResponse
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
# MissionShortResponse$unlock()
#
## Below is an example to define the print function
# MissionShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MissionShortResponse$lock()

