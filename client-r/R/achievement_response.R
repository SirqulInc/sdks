#' Create a new AchievementResponse
#'
#' @description
#' AchievementResponse Class
#'
#' @docType class
#' @title AchievementResponse
#' @description AchievementResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field achievementId  integer [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field analyticsTag  character [optional]
#' @field rankType  character [optional]
#' @field rankIncrement  integer [optional]
#' @field validate  character [optional]
#' @field appName  character [optional]
#' @field active  character [optional]
#' @field updated  integer [optional]
#' @field created  integer [optional]
#' @field tierCount  integer [optional]
#' @field minIncrement  integer [optional]
#' @field maxIncrement  integer [optional]
#' @field tiers  list(\link{AchievementTierResponse}) [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AchievementResponse <- R6::R6Class(
  "AchievementResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `achievementId` = NULL,
    `title` = NULL,
    `description` = NULL,
    `analyticsTag` = NULL,
    `rankType` = NULL,
    `rankIncrement` = NULL,
    `validate` = NULL,
    `appName` = NULL,
    `active` = NULL,
    `updated` = NULL,
    `created` = NULL,
    `tierCount` = NULL,
    `minIncrement` = NULL,
    `maxIncrement` = NULL,
    `tiers` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new AchievementResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param achievementId achievementId
    #' @param title title
    #' @param description description
    #' @param analyticsTag analyticsTag
    #' @param rankType rankType
    #' @param rankIncrement rankIncrement
    #' @param validate validate
    #' @param appName appName
    #' @param active active
    #' @param updated updated
    #' @param created created
    #' @param tierCount tierCount
    #' @param minIncrement minIncrement
    #' @param maxIncrement maxIncrement
    #' @param tiers tiers
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `achievementId` = NULL, `title` = NULL, `description` = NULL, `analyticsTag` = NULL, `rankType` = NULL, `rankIncrement` = NULL, `validate` = NULL, `appName` = NULL, `active` = NULL, `updated` = NULL, `created` = NULL, `tierCount` = NULL, `minIncrement` = NULL, `maxIncrement` = NULL, `tiers` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`achievementId`)) {
        if (!(is.numeric(`achievementId`) && length(`achievementId`) == 1)) {
          stop(paste("Error! Invalid data for `achievementId`. Must be an integer:", `achievementId`))
        }
        self$`achievementId` <- `achievementId`
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
      if (!is.null(`analyticsTag`)) {
        if (!(is.character(`analyticsTag`) && length(`analyticsTag`) == 1)) {
          stop(paste("Error! Invalid data for `analyticsTag`. Must be a string:", `analyticsTag`))
        }
        self$`analyticsTag` <- `analyticsTag`
      }
      if (!is.null(`rankType`)) {
        if (!(is.character(`rankType`) && length(`rankType`) == 1)) {
          stop(paste("Error! Invalid data for `rankType`. Must be a string:", `rankType`))
        }
        self$`rankType` <- `rankType`
      }
      if (!is.null(`rankIncrement`)) {
        if (!(is.numeric(`rankIncrement`) && length(`rankIncrement`) == 1)) {
          stop(paste("Error! Invalid data for `rankIncrement`. Must be an integer:", `rankIncrement`))
        }
        self$`rankIncrement` <- `rankIncrement`
      }
      if (!is.null(`validate`)) {
        if (!(is.logical(`validate`) && length(`validate`) == 1)) {
          stop(paste("Error! Invalid data for `validate`. Must be a boolean:", `validate`))
        }
        self$`validate` <- `validate`
      }
      if (!is.null(`appName`)) {
        if (!(is.character(`appName`) && length(`appName`) == 1)) {
          stop(paste("Error! Invalid data for `appName`. Must be a string:", `appName`))
        }
        self$`appName` <- `appName`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`tierCount`)) {
        if (!(is.numeric(`tierCount`) && length(`tierCount`) == 1)) {
          stop(paste("Error! Invalid data for `tierCount`. Must be an integer:", `tierCount`))
        }
        self$`tierCount` <- `tierCount`
      }
      if (!is.null(`minIncrement`)) {
        if (!(is.numeric(`minIncrement`) && length(`minIncrement`) == 1)) {
          stop(paste("Error! Invalid data for `minIncrement`. Must be an integer:", `minIncrement`))
        }
        self$`minIncrement` <- `minIncrement`
      }
      if (!is.null(`maxIncrement`)) {
        if (!(is.numeric(`maxIncrement`) && length(`maxIncrement`) == 1)) {
          stop(paste("Error! Invalid data for `maxIncrement`. Must be an integer:", `maxIncrement`))
        }
        self$`maxIncrement` <- `maxIncrement`
      }
      if (!is.null(`tiers`)) {
        stopifnot(is.vector(`tiers`), length(`tiers`) != 0)
        sapply(`tiers`, function(x) stopifnot(R6::is.R6(x)))
        self$`tiers` <- `tiers`
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
    #' @return AchievementResponse as a base R list.
    #' @examples
    #' # convert array of AchievementResponse (x) to a data frame
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
    #' Convert AchievementResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AchievementResponseObject <- list()
      if (!is.null(self$`valid`)) {
        AchievementResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        AchievementResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        AchievementResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        AchievementResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        AchievementResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        AchievementResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        AchievementResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`achievementId`)) {
        AchievementResponseObject[["achievementId"]] <-
          self$`achievementId`
      }
      if (!is.null(self$`title`)) {
        AchievementResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        AchievementResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`analyticsTag`)) {
        AchievementResponseObject[["analyticsTag"]] <-
          self$`analyticsTag`
      }
      if (!is.null(self$`rankType`)) {
        AchievementResponseObject[["rankType"]] <-
          self$`rankType`
      }
      if (!is.null(self$`rankIncrement`)) {
        AchievementResponseObject[["rankIncrement"]] <-
          self$`rankIncrement`
      }
      if (!is.null(self$`validate`)) {
        AchievementResponseObject[["validate"]] <-
          self$`validate`
      }
      if (!is.null(self$`appName`)) {
        AchievementResponseObject[["appName"]] <-
          self$`appName`
      }
      if (!is.null(self$`active`)) {
        AchievementResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`updated`)) {
        AchievementResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`created`)) {
        AchievementResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`tierCount`)) {
        AchievementResponseObject[["tierCount"]] <-
          self$`tierCount`
      }
      if (!is.null(self$`minIncrement`)) {
        AchievementResponseObject[["minIncrement"]] <-
          self$`minIncrement`
      }
      if (!is.null(self$`maxIncrement`)) {
        AchievementResponseObject[["maxIncrement"]] <-
          self$`maxIncrement`
      }
      if (!is.null(self$`tiers`)) {
        AchievementResponseObject[["tiers"]] <-
          self$extractSimpleType(self$`tiers`)
      }
      if (!is.null(self$`returning`)) {
        AchievementResponseObject[["returning"]] <-
          self$`returning`
      }
      return(AchievementResponseObject)
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
    #' Deserialize JSON string into an instance of AchievementResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AchievementResponse
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
      if (!is.null(this_object$`achievementId`)) {
        self$`achievementId` <- this_object$`achievementId`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`analyticsTag`)) {
        self$`analyticsTag` <- this_object$`analyticsTag`
      }
      if (!is.null(this_object$`rankType`)) {
        self$`rankType` <- this_object$`rankType`
      }
      if (!is.null(this_object$`rankIncrement`)) {
        self$`rankIncrement` <- this_object$`rankIncrement`
      }
      if (!is.null(this_object$`validate`)) {
        self$`validate` <- this_object$`validate`
      }
      if (!is.null(this_object$`appName`)) {
        self$`appName` <- this_object$`appName`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`tierCount`)) {
        self$`tierCount` <- this_object$`tierCount`
      }
      if (!is.null(this_object$`minIncrement`)) {
        self$`minIncrement` <- this_object$`minIncrement`
      }
      if (!is.null(this_object$`maxIncrement`)) {
        self$`maxIncrement` <- this_object$`maxIncrement`
      }
      if (!is.null(this_object$`tiers`)) {
        self$`tiers` <- ApiClient$new()$deserializeObj(this_object$`tiers`, "array[AchievementTierResponse]", loadNamespace("openapi"))
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
    #' @return AchievementResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AchievementResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AchievementResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`achievementId` <- this_object$`achievementId`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`analyticsTag` <- this_object$`analyticsTag`
      self$`rankType` <- this_object$`rankType`
      self$`rankIncrement` <- this_object$`rankIncrement`
      self$`validate` <- this_object$`validate`
      self$`appName` <- this_object$`appName`
      self$`active` <- this_object$`active`
      self$`updated` <- this_object$`updated`
      self$`created` <- this_object$`created`
      self$`tierCount` <- this_object$`tierCount`
      self$`minIncrement` <- this_object$`minIncrement`
      self$`maxIncrement` <- this_object$`maxIncrement`
      self$`tiers` <- ApiClient$new()$deserializeObj(this_object$`tiers`, "array[AchievementTierResponse]", loadNamespace("openapi"))
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to AchievementResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AchievementResponse
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
# AchievementResponse$unlock()
#
## Below is an example to define the print function
# AchievementResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AchievementResponse$lock()

