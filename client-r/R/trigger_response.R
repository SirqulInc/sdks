#' Create a new TriggerResponse
#'
#' @description
#' TriggerResponse Class
#'
#' @docType class
#' @title TriggerResponse
#' @description TriggerResponse Class
#' @format An \code{R6Class} generator object
#' @field scheduledNotificationId  integer [optional]
#' @field active  character [optional]
#' @field status  character [optional]
#' @field type  character [optional]
#' @field name  character [optional]
#' @field message  character [optional]
#' @field groupingId  character [optional]
#' @field scheduledDate  integer [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field billableEntity  \link{BillableEntityShortResponse} [optional]
#' @field contentId  integer [optional]
#' @field contentName  character [optional]
#' @field contentType  character [optional]
#' @field parentId  integer [optional]
#' @field parentType  character [optional]
#' @field application  \link{ApplicationMiniResponse} [optional]
#' @field targetId  integer [optional]
#' @field targetName  character [optional]
#' @field targetType  character [optional]
#' @field targetParams  character [optional]
#' @field deliverEstimate  integer [optional]
#' @field deliverCount  integer [optional]
#' @field deliverTotal  integer [optional]
#' @field deliverFailed  integer [optional]
#' @field processingTime  integer [optional]
#' @field sendingTime  integer [optional]
#' @field updated  integer [optional]
#' @field created  integer [optional]
#' @field cronExpression  character [optional]
#' @field endpointURL  character [optional]
#' @field payload  character [optional]
#' @field conditionalInput  character [optional]
#' @field connectionAccountIds  list(integer) [optional]
#' @field templateType  character [optional]
#' @field groupedTypes  list(character) [optional]
#' @field triggerId  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TriggerResponse <- R6::R6Class(
  "TriggerResponse",
  public = list(
    `scheduledNotificationId` = NULL,
    `active` = NULL,
    `status` = NULL,
    `type` = NULL,
    `name` = NULL,
    `message` = NULL,
    `groupingId` = NULL,
    `scheduledDate` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `owner` = NULL,
    `billableEntity` = NULL,
    `contentId` = NULL,
    `contentName` = NULL,
    `contentType` = NULL,
    `parentId` = NULL,
    `parentType` = NULL,
    `application` = NULL,
    `targetId` = NULL,
    `targetName` = NULL,
    `targetType` = NULL,
    `targetParams` = NULL,
    `deliverEstimate` = NULL,
    `deliverCount` = NULL,
    `deliverTotal` = NULL,
    `deliverFailed` = NULL,
    `processingTime` = NULL,
    `sendingTime` = NULL,
    `updated` = NULL,
    `created` = NULL,
    `cronExpression` = NULL,
    `endpointURL` = NULL,
    `payload` = NULL,
    `conditionalInput` = NULL,
    `connectionAccountIds` = NULL,
    `templateType` = NULL,
    `groupedTypes` = NULL,
    `triggerId` = NULL,

    #' @description
    #' Initialize a new TriggerResponse class.
    #'
    #' @param scheduledNotificationId scheduledNotificationId
    #' @param active active
    #' @param status status
    #' @param type type
    #' @param name name
    #' @param message message
    #' @param groupingId groupingId
    #' @param scheduledDate scheduledDate
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param owner owner
    #' @param billableEntity billableEntity
    #' @param contentId contentId
    #' @param contentName contentName
    #' @param contentType contentType
    #' @param parentId parentId
    #' @param parentType parentType
    #' @param application application
    #' @param targetId targetId
    #' @param targetName targetName
    #' @param targetType targetType
    #' @param targetParams targetParams
    #' @param deliverEstimate deliverEstimate
    #' @param deliverCount deliverCount
    #' @param deliverTotal deliverTotal
    #' @param deliverFailed deliverFailed
    #' @param processingTime processingTime
    #' @param sendingTime sendingTime
    #' @param updated updated
    #' @param created created
    #' @param cronExpression cronExpression
    #' @param endpointURL endpointURL
    #' @param payload payload
    #' @param conditionalInput conditionalInput
    #' @param connectionAccountIds connectionAccountIds
    #' @param templateType templateType
    #' @param groupedTypes groupedTypes
    #' @param triggerId triggerId
    #' @param ... Other optional arguments.
    initialize = function(`scheduledNotificationId` = NULL, `active` = NULL, `status` = NULL, `type` = NULL, `name` = NULL, `message` = NULL, `groupingId` = NULL, `scheduledDate` = NULL, `startDate` = NULL, `endDate` = NULL, `owner` = NULL, `billableEntity` = NULL, `contentId` = NULL, `contentName` = NULL, `contentType` = NULL, `parentId` = NULL, `parentType` = NULL, `application` = NULL, `targetId` = NULL, `targetName` = NULL, `targetType` = NULL, `targetParams` = NULL, `deliverEstimate` = NULL, `deliverCount` = NULL, `deliverTotal` = NULL, `deliverFailed` = NULL, `processingTime` = NULL, `sendingTime` = NULL, `updated` = NULL, `created` = NULL, `cronExpression` = NULL, `endpointURL` = NULL, `payload` = NULL, `conditionalInput` = NULL, `connectionAccountIds` = NULL, `templateType` = NULL, `groupedTypes` = NULL, `triggerId` = NULL, ...) {
      if (!is.null(`scheduledNotificationId`)) {
        if (!(is.numeric(`scheduledNotificationId`) && length(`scheduledNotificationId`) == 1)) {
          stop(paste("Error! Invalid data for `scheduledNotificationId`. Must be an integer:", `scheduledNotificationId`))
        }
        self$`scheduledNotificationId` <- `scheduledNotificationId`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PROCESSING\", \"TEMPLATE\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`groupingId`)) {
        if (!(is.character(`groupingId`) && length(`groupingId`) == 1)) {
          stop(paste("Error! Invalid data for `groupingId`. Must be a string:", `groupingId`))
        }
        self$`groupingId` <- `groupingId`
      }
      if (!is.null(`scheduledDate`)) {
        if (!(is.numeric(`scheduledDate`) && length(`scheduledDate`) == 1)) {
          stop(paste("Error! Invalid data for `scheduledDate`. Must be an integer:", `scheduledDate`))
        }
        self$`scheduledDate` <- `scheduledDate`
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
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`billableEntity`)) {
        stopifnot(R6::is.R6(`billableEntity`))
        self$`billableEntity` <- `billableEntity`
      }
      if (!is.null(`contentId`)) {
        if (!(is.numeric(`contentId`) && length(`contentId`) == 1)) {
          stop(paste("Error! Invalid data for `contentId`. Must be an integer:", `contentId`))
        }
        self$`contentId` <- `contentId`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`contentType`)) {
        if (!(is.character(`contentType`) && length(`contentType`) == 1)) {
          stop(paste("Error! Invalid data for `contentType`. Must be a string:", `contentType`))
        }
        self$`contentType` <- `contentType`
      }
      if (!is.null(`parentId`)) {
        if (!(is.numeric(`parentId`) && length(`parentId`) == 1)) {
          stop(paste("Error! Invalid data for `parentId`. Must be an integer:", `parentId`))
        }
        self$`parentId` <- `parentId`
      }
      if (!is.null(`parentType`)) {
        if (!(is.character(`parentType`) && length(`parentType`) == 1)) {
          stop(paste("Error! Invalid data for `parentType`. Must be a string:", `parentType`))
        }
        self$`parentType` <- `parentType`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`targetId`)) {
        if (!(is.numeric(`targetId`) && length(`targetId`) == 1)) {
          stop(paste("Error! Invalid data for `targetId`. Must be an integer:", `targetId`))
        }
        self$`targetId` <- `targetId`
      }
      if (!is.null(`targetName`)) {
        if (!(is.character(`targetName`) && length(`targetName`) == 1)) {
          stop(paste("Error! Invalid data for `targetName`. Must be a string:", `targetName`))
        }
        self$`targetName` <- `targetName`
      }
      if (!is.null(`targetType`)) {
        if (!(is.character(`targetType`) && length(`targetType`) == 1)) {
          stop(paste("Error! Invalid data for `targetType`. Must be a string:", `targetType`))
        }
        self$`targetType` <- `targetType`
      }
      if (!is.null(`targetParams`)) {
        if (!(is.character(`targetParams`) && length(`targetParams`) == 1)) {
          stop(paste("Error! Invalid data for `targetParams`. Must be a string:", `targetParams`))
        }
        self$`targetParams` <- `targetParams`
      }
      if (!is.null(`deliverEstimate`)) {
        if (!(is.numeric(`deliverEstimate`) && length(`deliverEstimate`) == 1)) {
          stop(paste("Error! Invalid data for `deliverEstimate`. Must be an integer:", `deliverEstimate`))
        }
        self$`deliverEstimate` <- `deliverEstimate`
      }
      if (!is.null(`deliverCount`)) {
        if (!(is.numeric(`deliverCount`) && length(`deliverCount`) == 1)) {
          stop(paste("Error! Invalid data for `deliverCount`. Must be an integer:", `deliverCount`))
        }
        self$`deliverCount` <- `deliverCount`
      }
      if (!is.null(`deliverTotal`)) {
        if (!(is.numeric(`deliverTotal`) && length(`deliverTotal`) == 1)) {
          stop(paste("Error! Invalid data for `deliverTotal`. Must be an integer:", `deliverTotal`))
        }
        self$`deliverTotal` <- `deliverTotal`
      }
      if (!is.null(`deliverFailed`)) {
        if (!(is.numeric(`deliverFailed`) && length(`deliverFailed`) == 1)) {
          stop(paste("Error! Invalid data for `deliverFailed`. Must be an integer:", `deliverFailed`))
        }
        self$`deliverFailed` <- `deliverFailed`
      }
      if (!is.null(`processingTime`)) {
        if (!(is.numeric(`processingTime`) && length(`processingTime`) == 1)) {
          stop(paste("Error! Invalid data for `processingTime`. Must be an integer:", `processingTime`))
        }
        self$`processingTime` <- `processingTime`
      }
      if (!is.null(`sendingTime`)) {
        if (!(is.numeric(`sendingTime`) && length(`sendingTime`) == 1)) {
          stop(paste("Error! Invalid data for `sendingTime`. Must be an integer:", `sendingTime`))
        }
        self$`sendingTime` <- `sendingTime`
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
      if (!is.null(`cronExpression`)) {
        if (!(is.character(`cronExpression`) && length(`cronExpression`) == 1)) {
          stop(paste("Error! Invalid data for `cronExpression`. Must be a string:", `cronExpression`))
        }
        self$`cronExpression` <- `cronExpression`
      }
      if (!is.null(`endpointURL`)) {
        if (!(is.character(`endpointURL`) && length(`endpointURL`) == 1)) {
          stop(paste("Error! Invalid data for `endpointURL`. Must be a string:", `endpointURL`))
        }
        self$`endpointURL` <- `endpointURL`
      }
      if (!is.null(`payload`)) {
        if (!(is.character(`payload`) && length(`payload`) == 1)) {
          stop(paste("Error! Invalid data for `payload`. Must be a string:", `payload`))
        }
        self$`payload` <- `payload`
      }
      if (!is.null(`conditionalInput`)) {
        if (!(is.character(`conditionalInput`) && length(`conditionalInput`) == 1)) {
          stop(paste("Error! Invalid data for `conditionalInput`. Must be a string:", `conditionalInput`))
        }
        self$`conditionalInput` <- `conditionalInput`
      }
      if (!is.null(`connectionAccountIds`)) {
        stopifnot(is.vector(`connectionAccountIds`), length(`connectionAccountIds`) != 0)
        sapply(`connectionAccountIds`, function(x) stopifnot(is.character(x)))
        self$`connectionAccountIds` <- `connectionAccountIds`
      }
      if (!is.null(`templateType`)) {
        if (!(`templateType` %in% c("REPORTING", "ACHIEVEMENT_OWNER", "ACHIEVEMENT_TRIGGER", "GEOFENCE_OWNER", "GEOFENCE_TARGET", "GEOFENCE_TRIGGER", "GEOFENCE_HTTP_CALL"))) {
          stop(paste("Error! \"", `templateType`, "\" cannot be assigned to `templateType`. Must be \"REPORTING\", \"ACHIEVEMENT_OWNER\", \"ACHIEVEMENT_TRIGGER\", \"GEOFENCE_OWNER\", \"GEOFENCE_TARGET\", \"GEOFENCE_TRIGGER\", \"GEOFENCE_HTTP_CALL\".", sep = ""))
        }
        if (!(is.character(`templateType`) && length(`templateType`) == 1)) {
          stop(paste("Error! Invalid data for `templateType`. Must be a string:", `templateType`))
        }
        self$`templateType` <- `templateType`
      }
      if (!is.null(`groupedTypes`)) {
        stopifnot(is.vector(`groupedTypes`), length(`groupedTypes`) != 0)
        sapply(`groupedTypes`, function(x) stopifnot(is.character(x)))
        self$`groupedTypes` <- `groupedTypes`
      }
      if (!is.null(`triggerId`)) {
        if (!(is.numeric(`triggerId`) && length(`triggerId`) == 1)) {
          stop(paste("Error! Invalid data for `triggerId`. Must be an integer:", `triggerId`))
        }
        self$`triggerId` <- `triggerId`
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
    #' @return TriggerResponse as a base R list.
    #' @examples
    #' # convert array of TriggerResponse (x) to a data frame
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
    #' Convert TriggerResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TriggerResponseObject <- list()
      if (!is.null(self$`scheduledNotificationId`)) {
        TriggerResponseObject[["scheduledNotificationId"]] <-
          self$`scheduledNotificationId`
      }
      if (!is.null(self$`active`)) {
        TriggerResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`status`)) {
        TriggerResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`type`)) {
        TriggerResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`name`)) {
        TriggerResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`message`)) {
        TriggerResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`groupingId`)) {
        TriggerResponseObject[["groupingId"]] <-
          self$`groupingId`
      }
      if (!is.null(self$`scheduledDate`)) {
        TriggerResponseObject[["scheduledDate"]] <-
          self$`scheduledDate`
      }
      if (!is.null(self$`startDate`)) {
        TriggerResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        TriggerResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`owner`)) {
        TriggerResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`billableEntity`)) {
        TriggerResponseObject[["billableEntity"]] <-
          self$extractSimpleType(self$`billableEntity`)
      }
      if (!is.null(self$`contentId`)) {
        TriggerResponseObject[["contentId"]] <-
          self$`contentId`
      }
      if (!is.null(self$`contentName`)) {
        TriggerResponseObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`contentType`)) {
        TriggerResponseObject[["contentType"]] <-
          self$`contentType`
      }
      if (!is.null(self$`parentId`)) {
        TriggerResponseObject[["parentId"]] <-
          self$`parentId`
      }
      if (!is.null(self$`parentType`)) {
        TriggerResponseObject[["parentType"]] <-
          self$`parentType`
      }
      if (!is.null(self$`application`)) {
        TriggerResponseObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`targetId`)) {
        TriggerResponseObject[["targetId"]] <-
          self$`targetId`
      }
      if (!is.null(self$`targetName`)) {
        TriggerResponseObject[["targetName"]] <-
          self$`targetName`
      }
      if (!is.null(self$`targetType`)) {
        TriggerResponseObject[["targetType"]] <-
          self$`targetType`
      }
      if (!is.null(self$`targetParams`)) {
        TriggerResponseObject[["targetParams"]] <-
          self$`targetParams`
      }
      if (!is.null(self$`deliverEstimate`)) {
        TriggerResponseObject[["deliverEstimate"]] <-
          self$`deliverEstimate`
      }
      if (!is.null(self$`deliverCount`)) {
        TriggerResponseObject[["deliverCount"]] <-
          self$`deliverCount`
      }
      if (!is.null(self$`deliverTotal`)) {
        TriggerResponseObject[["deliverTotal"]] <-
          self$`deliverTotal`
      }
      if (!is.null(self$`deliverFailed`)) {
        TriggerResponseObject[["deliverFailed"]] <-
          self$`deliverFailed`
      }
      if (!is.null(self$`processingTime`)) {
        TriggerResponseObject[["processingTime"]] <-
          self$`processingTime`
      }
      if (!is.null(self$`sendingTime`)) {
        TriggerResponseObject[["sendingTime"]] <-
          self$`sendingTime`
      }
      if (!is.null(self$`updated`)) {
        TriggerResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`created`)) {
        TriggerResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`cronExpression`)) {
        TriggerResponseObject[["cronExpression"]] <-
          self$`cronExpression`
      }
      if (!is.null(self$`endpointURL`)) {
        TriggerResponseObject[["endpointURL"]] <-
          self$`endpointURL`
      }
      if (!is.null(self$`payload`)) {
        TriggerResponseObject[["payload"]] <-
          self$`payload`
      }
      if (!is.null(self$`conditionalInput`)) {
        TriggerResponseObject[["conditionalInput"]] <-
          self$`conditionalInput`
      }
      if (!is.null(self$`connectionAccountIds`)) {
        TriggerResponseObject[["connectionAccountIds"]] <-
          self$`connectionAccountIds`
      }
      if (!is.null(self$`templateType`)) {
        TriggerResponseObject[["templateType"]] <-
          self$`templateType`
      }
      if (!is.null(self$`groupedTypes`)) {
        TriggerResponseObject[["groupedTypes"]] <-
          self$`groupedTypes`
      }
      if (!is.null(self$`triggerId`)) {
        TriggerResponseObject[["triggerId"]] <-
          self$`triggerId`
      }
      return(TriggerResponseObject)
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
    #' Deserialize JSON string into an instance of TriggerResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TriggerResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`scheduledNotificationId`)) {
        self$`scheduledNotificationId` <- this_object$`scheduledNotificationId`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PROCESSING\", \"TEMPLATE\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`groupingId`)) {
        self$`groupingId` <- this_object$`groupingId`
      }
      if (!is.null(this_object$`scheduledDate`)) {
        self$`scheduledDate` <- this_object$`scheduledDate`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`billableEntity`)) {
        `billableentity_object` <- BillableEntityShortResponse$new()
        `billableentity_object`$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
        self$`billableEntity` <- `billableentity_object`
      }
      if (!is.null(this_object$`contentId`)) {
        self$`contentId` <- this_object$`contentId`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`contentType`)) {
        self$`contentType` <- this_object$`contentType`
      }
      if (!is.null(this_object$`parentId`)) {
        self$`parentId` <- this_object$`parentId`
      }
      if (!is.null(this_object$`parentType`)) {
        self$`parentType` <- this_object$`parentType`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- ApplicationMiniResponse$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`targetId`)) {
        self$`targetId` <- this_object$`targetId`
      }
      if (!is.null(this_object$`targetName`)) {
        self$`targetName` <- this_object$`targetName`
      }
      if (!is.null(this_object$`targetType`)) {
        self$`targetType` <- this_object$`targetType`
      }
      if (!is.null(this_object$`targetParams`)) {
        self$`targetParams` <- this_object$`targetParams`
      }
      if (!is.null(this_object$`deliverEstimate`)) {
        self$`deliverEstimate` <- this_object$`deliverEstimate`
      }
      if (!is.null(this_object$`deliverCount`)) {
        self$`deliverCount` <- this_object$`deliverCount`
      }
      if (!is.null(this_object$`deliverTotal`)) {
        self$`deliverTotal` <- this_object$`deliverTotal`
      }
      if (!is.null(this_object$`deliverFailed`)) {
        self$`deliverFailed` <- this_object$`deliverFailed`
      }
      if (!is.null(this_object$`processingTime`)) {
        self$`processingTime` <- this_object$`processingTime`
      }
      if (!is.null(this_object$`sendingTime`)) {
        self$`sendingTime` <- this_object$`sendingTime`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`cronExpression`)) {
        self$`cronExpression` <- this_object$`cronExpression`
      }
      if (!is.null(this_object$`endpointURL`)) {
        self$`endpointURL` <- this_object$`endpointURL`
      }
      if (!is.null(this_object$`payload`)) {
        self$`payload` <- this_object$`payload`
      }
      if (!is.null(this_object$`conditionalInput`)) {
        self$`conditionalInput` <- this_object$`conditionalInput`
      }
      if (!is.null(this_object$`connectionAccountIds`)) {
        self$`connectionAccountIds` <- ApiClient$new()$deserializeObj(this_object$`connectionAccountIds`, "array[integer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`templateType`)) {
        if (!is.null(this_object$`templateType`) && !(this_object$`templateType` %in% c("REPORTING", "ACHIEVEMENT_OWNER", "ACHIEVEMENT_TRIGGER", "GEOFENCE_OWNER", "GEOFENCE_TARGET", "GEOFENCE_TRIGGER", "GEOFENCE_HTTP_CALL"))) {
          stop(paste("Error! \"", this_object$`templateType`, "\" cannot be assigned to `templateType`. Must be \"REPORTING\", \"ACHIEVEMENT_OWNER\", \"ACHIEVEMENT_TRIGGER\", \"GEOFENCE_OWNER\", \"GEOFENCE_TARGET\", \"GEOFENCE_TRIGGER\", \"GEOFENCE_HTTP_CALL\".", sep = ""))
        }
        self$`templateType` <- this_object$`templateType`
      }
      if (!is.null(this_object$`groupedTypes`)) {
        self$`groupedTypes` <- ApiClient$new()$deserializeObj(this_object$`groupedTypes`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`triggerId`)) {
        self$`triggerId` <- this_object$`triggerId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TriggerResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TriggerResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TriggerResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`scheduledNotificationId` <- this_object$`scheduledNotificationId`
      self$`active` <- this_object$`active`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PROCESSING\", \"TEMPLATE\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`name` <- this_object$`name`
      self$`message` <- this_object$`message`
      self$`groupingId` <- this_object$`groupingId`
      self$`scheduledDate` <- this_object$`scheduledDate`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`billableEntity` <- BillableEntityShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
      self$`contentId` <- this_object$`contentId`
      self$`contentName` <- this_object$`contentName`
      self$`contentType` <- this_object$`contentType`
      self$`parentId` <- this_object$`parentId`
      self$`parentType` <- this_object$`parentType`
      self$`application` <- ApplicationMiniResponse$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`targetId` <- this_object$`targetId`
      self$`targetName` <- this_object$`targetName`
      self$`targetType` <- this_object$`targetType`
      self$`targetParams` <- this_object$`targetParams`
      self$`deliverEstimate` <- this_object$`deliverEstimate`
      self$`deliverCount` <- this_object$`deliverCount`
      self$`deliverTotal` <- this_object$`deliverTotal`
      self$`deliverFailed` <- this_object$`deliverFailed`
      self$`processingTime` <- this_object$`processingTime`
      self$`sendingTime` <- this_object$`sendingTime`
      self$`updated` <- this_object$`updated`
      self$`created` <- this_object$`created`
      self$`cronExpression` <- this_object$`cronExpression`
      self$`endpointURL` <- this_object$`endpointURL`
      self$`payload` <- this_object$`payload`
      self$`conditionalInput` <- this_object$`conditionalInput`
      self$`connectionAccountIds` <- ApiClient$new()$deserializeObj(this_object$`connectionAccountIds`, "array[integer]", loadNamespace("openapi"))
      if (!is.null(this_object$`templateType`) && !(this_object$`templateType` %in% c("REPORTING", "ACHIEVEMENT_OWNER", "ACHIEVEMENT_TRIGGER", "GEOFENCE_OWNER", "GEOFENCE_TARGET", "GEOFENCE_TRIGGER", "GEOFENCE_HTTP_CALL"))) {
        stop(paste("Error! \"", this_object$`templateType`, "\" cannot be assigned to `templateType`. Must be \"REPORTING\", \"ACHIEVEMENT_OWNER\", \"ACHIEVEMENT_TRIGGER\", \"GEOFENCE_OWNER\", \"GEOFENCE_TARGET\", \"GEOFENCE_TRIGGER\", \"GEOFENCE_HTTP_CALL\".", sep = ""))
      }
      self$`templateType` <- this_object$`templateType`
      self$`groupedTypes` <- ApiClient$new()$deserializeObj(this_object$`groupedTypes`, "array[character]", loadNamespace("openapi"))
      self$`triggerId` <- this_object$`triggerId`
      self
    },

    #' @description
    #' Validate JSON input with respect to TriggerResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TriggerResponse
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
# TriggerResponse$unlock()
#
## Below is an example to define the print function
# TriggerResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TriggerResponse$lock()

