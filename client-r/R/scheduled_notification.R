#' Create a new ScheduledNotification
#'
#' @description
#' ScheduledNotification Class
#'
#' @docType class
#' @title ScheduledNotification
#' @description ScheduledNotification Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field billableEntity  \link{BillableEntity} [optional]
#' @field type  character [optional]
#' @field status  character [optional]
#' @field templateType  character [optional]
#' @field name  character [optional]
#' @field errorMessage  character [optional]
#' @field message  character [optional]
#' @field payload  character [optional]
#' @field contentName  character [optional]
#' @field contentId  integer [optional]
#' @field contentType  character [optional]
#' @field parentId  integer [optional]
#' @field parentType  character [optional]
#' @field application  \link{Application} [optional]
#' @field connectionGroups  list(\link{ConnectionGroup}) [optional]
#' @field accountIds  list(integer) [optional]
#' @field audiences  list(\link{Audience}) [optional]
#' @field report  \link{ReportDefinition} [optional]
#' @field reportParams  character [optional]
#' @field endpointURL  character [optional]
#' @field lastActionDate  character [optional]
#' @field scheduledDate  character [optional]
#' @field startDate  character [optional]
#' @field endDate  character [optional]
#' @field cronExpression  character [optional]
#' @field deliverEstimate  integer [optional]
#' @field deliverCount  integer [optional]
#' @field deliverFailed  integer [optional]
#' @field deliverTotal  integer [optional]
#' @field deliverStart  integer [optional]
#' @field deliverLimit  integer [optional]
#' @field processingTime  integer [optional]
#' @field sendingTime  integer [optional]
#' @field groupingId  character [optional]
#' @field conditionalInput  character [optional]
#' @field conditionalCode  character [optional]
#' @field publicPermissions  \link{Permissions} [optional]
#' @field userPermissions  list(\link{UserPermissions}) [optional]
#' @field visibility  character [optional]
#' @field approvalStatus  character [optional]
#' @field contentAsset  \link{Asset} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScheduledNotification <- R6::R6Class(
  "ScheduledNotification",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `billableEntity` = NULL,
    `type` = NULL,
    `status` = NULL,
    `templateType` = NULL,
    `name` = NULL,
    `errorMessage` = NULL,
    `message` = NULL,
    `payload` = NULL,
    `contentName` = NULL,
    `contentId` = NULL,
    `contentType` = NULL,
    `parentId` = NULL,
    `parentType` = NULL,
    `application` = NULL,
    `connectionGroups` = NULL,
    `accountIds` = NULL,
    `audiences` = NULL,
    `report` = NULL,
    `reportParams` = NULL,
    `endpointURL` = NULL,
    `lastActionDate` = NULL,
    `scheduledDate` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `cronExpression` = NULL,
    `deliverEstimate` = NULL,
    `deliverCount` = NULL,
    `deliverFailed` = NULL,
    `deliverTotal` = NULL,
    `deliverStart` = NULL,
    `deliverLimit` = NULL,
    `processingTime` = NULL,
    `sendingTime` = NULL,
    `groupingId` = NULL,
    `conditionalInput` = NULL,
    `conditionalCode` = NULL,
    `publicPermissions` = NULL,
    `userPermissions` = NULL,
    `visibility` = NULL,
    `approvalStatus` = NULL,
    `contentAsset` = NULL,

    #' @description
    #' Initialize a new ScheduledNotification class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param billableEntity billableEntity
    #' @param type type
    #' @param status status
    #' @param templateType templateType
    #' @param name name
    #' @param errorMessage errorMessage
    #' @param message message
    #' @param payload payload
    #' @param contentName contentName
    #' @param contentId contentId
    #' @param contentType contentType
    #' @param parentId parentId
    #' @param parentType parentType
    #' @param application application
    #' @param connectionGroups connectionGroups
    #' @param accountIds accountIds
    #' @param audiences audiences
    #' @param report report
    #' @param reportParams reportParams
    #' @param endpointURL endpointURL
    #' @param lastActionDate lastActionDate
    #' @param scheduledDate scheduledDate
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param cronExpression cronExpression
    #' @param deliverEstimate deliverEstimate
    #' @param deliverCount deliverCount
    #' @param deliverFailed deliverFailed
    #' @param deliverTotal deliverTotal
    #' @param deliverStart deliverStart
    #' @param deliverLimit deliverLimit
    #' @param processingTime processingTime
    #' @param sendingTime sendingTime
    #' @param groupingId groupingId
    #' @param conditionalInput conditionalInput
    #' @param conditionalCode conditionalCode
    #' @param publicPermissions publicPermissions
    #' @param userPermissions userPermissions
    #' @param visibility visibility
    #' @param approvalStatus approvalStatus
    #' @param contentAsset contentAsset
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `billableEntity` = NULL, `type` = NULL, `status` = NULL, `templateType` = NULL, `name` = NULL, `errorMessage` = NULL, `message` = NULL, `payload` = NULL, `contentName` = NULL, `contentId` = NULL, `contentType` = NULL, `parentId` = NULL, `parentType` = NULL, `application` = NULL, `connectionGroups` = NULL, `accountIds` = NULL, `audiences` = NULL, `report` = NULL, `reportParams` = NULL, `endpointURL` = NULL, `lastActionDate` = NULL, `scheduledDate` = NULL, `startDate` = NULL, `endDate` = NULL, `cronExpression` = NULL, `deliverEstimate` = NULL, `deliverCount` = NULL, `deliverFailed` = NULL, `deliverTotal` = NULL, `deliverStart` = NULL, `deliverLimit` = NULL, `processingTime` = NULL, `sendingTime` = NULL, `groupingId` = NULL, `conditionalInput` = NULL, `conditionalCode` = NULL, `publicPermissions` = NULL, `userPermissions` = NULL, `visibility` = NULL, `approvalStatus` = NULL, `contentAsset` = NULL, ...) {
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
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`billableEntity`)) {
        stopifnot(R6::is.R6(`billableEntity`))
        self$`billableEntity` <- `billableEntity`
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
      if (!is.null(`status`)) {
        if (!(`status` %in% c("NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PROCESSING\", \"TEMPLATE\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`errorMessage`)) {
        if (!(is.character(`errorMessage`) && length(`errorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessage`. Must be a string:", `errorMessage`))
        }
        self$`errorMessage` <- `errorMessage`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`payload`)) {
        if (!(is.character(`payload`) && length(`payload`) == 1)) {
          stop(paste("Error! Invalid data for `payload`. Must be a string:", `payload`))
        }
        self$`payload` <- `payload`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`contentId`)) {
        if (!(is.numeric(`contentId`) && length(`contentId`) == 1)) {
          stop(paste("Error! Invalid data for `contentId`. Must be an integer:", `contentId`))
        }
        self$`contentId` <- `contentId`
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
      if (!is.null(`connectionGroups`)) {
        stopifnot(is.vector(`connectionGroups`), length(`connectionGroups`) != 0)
        sapply(`connectionGroups`, function(x) stopifnot(R6::is.R6(x)))
        self$`connectionGroups` <- `connectionGroups`
      }
      if (!is.null(`accountIds`)) {
        stopifnot(is.vector(`accountIds`), length(`accountIds`) != 0)
        sapply(`accountIds`, function(x) stopifnot(is.character(x)))
        if (!identical(`accountIds`, unique(`accountIds`))) {
          stop("Error! Items in `accountIds` are not unique.")
        }
        self$`accountIds` <- `accountIds`
      }
      if (!is.null(`audiences`)) {
        stopifnot(is.vector(`audiences`), length(`audiences`) != 0)
        sapply(`audiences`, function(x) stopifnot(R6::is.R6(x)))
        self$`audiences` <- `audiences`
      }
      if (!is.null(`report`)) {
        stopifnot(R6::is.R6(`report`))
        self$`report` <- `report`
      }
      if (!is.null(`reportParams`)) {
        if (!(is.character(`reportParams`) && length(`reportParams`) == 1)) {
          stop(paste("Error! Invalid data for `reportParams`. Must be a string:", `reportParams`))
        }
        self$`reportParams` <- `reportParams`
      }
      if (!is.null(`endpointURL`)) {
        if (!(is.character(`endpointURL`) && length(`endpointURL`) == 1)) {
          stop(paste("Error! Invalid data for `endpointURL`. Must be a string:", `endpointURL`))
        }
        self$`endpointURL` <- `endpointURL`
      }
      if (!is.null(`lastActionDate`)) {
        if (!is.character(`lastActionDate`)) {
          stop(paste("Error! Invalid data for `lastActionDate`. Must be a string:", `lastActionDate`))
        }
        self$`lastActionDate` <- `lastActionDate`
      }
      if (!is.null(`scheduledDate`)) {
        if (!is.character(`scheduledDate`)) {
          stop(paste("Error! Invalid data for `scheduledDate`. Must be a string:", `scheduledDate`))
        }
        self$`scheduledDate` <- `scheduledDate`
      }
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`cronExpression`)) {
        if (!(is.character(`cronExpression`) && length(`cronExpression`) == 1)) {
          stop(paste("Error! Invalid data for `cronExpression`. Must be a string:", `cronExpression`))
        }
        self$`cronExpression` <- `cronExpression`
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
      if (!is.null(`deliverFailed`)) {
        if (!(is.numeric(`deliverFailed`) && length(`deliverFailed`) == 1)) {
          stop(paste("Error! Invalid data for `deliverFailed`. Must be an integer:", `deliverFailed`))
        }
        self$`deliverFailed` <- `deliverFailed`
      }
      if (!is.null(`deliverTotal`)) {
        if (!(is.numeric(`deliverTotal`) && length(`deliverTotal`) == 1)) {
          stop(paste("Error! Invalid data for `deliverTotal`. Must be an integer:", `deliverTotal`))
        }
        self$`deliverTotal` <- `deliverTotal`
      }
      if (!is.null(`deliverStart`)) {
        if (!(is.numeric(`deliverStart`) && length(`deliverStart`) == 1)) {
          stop(paste("Error! Invalid data for `deliverStart`. Must be an integer:", `deliverStart`))
        }
        self$`deliverStart` <- `deliverStart`
      }
      if (!is.null(`deliverLimit`)) {
        if (!(is.numeric(`deliverLimit`) && length(`deliverLimit`) == 1)) {
          stop(paste("Error! Invalid data for `deliverLimit`. Must be an integer:", `deliverLimit`))
        }
        self$`deliverLimit` <- `deliverLimit`
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
      if (!is.null(`groupingId`)) {
        if (!(is.character(`groupingId`) && length(`groupingId`) == 1)) {
          stop(paste("Error! Invalid data for `groupingId`. Must be a string:", `groupingId`))
        }
        self$`groupingId` <- `groupingId`
      }
      if (!is.null(`conditionalInput`)) {
        if (!(is.character(`conditionalInput`) && length(`conditionalInput`) == 1)) {
          stop(paste("Error! Invalid data for `conditionalInput`. Must be a string:", `conditionalInput`))
        }
        self$`conditionalInput` <- `conditionalInput`
      }
      if (!is.null(`conditionalCode`)) {
        if (!(is.character(`conditionalCode`) && length(`conditionalCode`) == 1)) {
          stop(paste("Error! Invalid data for `conditionalCode`. Must be a string:", `conditionalCode`))
        }
        self$`conditionalCode` <- `conditionalCode`
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
      if (!is.null(`visibility`)) {
        if (!(`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", `visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        if (!(is.character(`visibility`) && length(`visibility`) == 1)) {
          stop(paste("Error! Invalid data for `visibility`. Must be a string:", `visibility`))
        }
        self$`visibility` <- `visibility`
      }
      if (!is.null(`approvalStatus`)) {
        if (!(`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", `approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        if (!(is.character(`approvalStatus`) && length(`approvalStatus`) == 1)) {
          stop(paste("Error! Invalid data for `approvalStatus`. Must be a string:", `approvalStatus`))
        }
        self$`approvalStatus` <- `approvalStatus`
      }
      if (!is.null(`contentAsset`)) {
        stopifnot(R6::is.R6(`contentAsset`))
        self$`contentAsset` <- `contentAsset`
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
    #' @return ScheduledNotification as a base R list.
    #' @examples
    #' # convert array of ScheduledNotification (x) to a data frame
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
    #' Convert ScheduledNotification to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ScheduledNotificationObject <- list()
      if (!is.null(self$`id`)) {
        ScheduledNotificationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ScheduledNotificationObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ScheduledNotificationObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        ScheduledNotificationObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`billableEntity`)) {
        ScheduledNotificationObject[["billableEntity"]] <-
          self$extractSimpleType(self$`billableEntity`)
      }
      if (!is.null(self$`type`)) {
        ScheduledNotificationObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`status`)) {
        ScheduledNotificationObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`templateType`)) {
        ScheduledNotificationObject[["templateType"]] <-
          self$`templateType`
      }
      if (!is.null(self$`name`)) {
        ScheduledNotificationObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`errorMessage`)) {
        ScheduledNotificationObject[["errorMessage"]] <-
          self$`errorMessage`
      }
      if (!is.null(self$`message`)) {
        ScheduledNotificationObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`payload`)) {
        ScheduledNotificationObject[["payload"]] <-
          self$`payload`
      }
      if (!is.null(self$`contentName`)) {
        ScheduledNotificationObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`contentId`)) {
        ScheduledNotificationObject[["contentId"]] <-
          self$`contentId`
      }
      if (!is.null(self$`contentType`)) {
        ScheduledNotificationObject[["contentType"]] <-
          self$`contentType`
      }
      if (!is.null(self$`parentId`)) {
        ScheduledNotificationObject[["parentId"]] <-
          self$`parentId`
      }
      if (!is.null(self$`parentType`)) {
        ScheduledNotificationObject[["parentType"]] <-
          self$`parentType`
      }
      if (!is.null(self$`application`)) {
        ScheduledNotificationObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`connectionGroups`)) {
        ScheduledNotificationObject[["connectionGroups"]] <-
          self$extractSimpleType(self$`connectionGroups`)
      }
      if (!is.null(self$`accountIds`)) {
        ScheduledNotificationObject[["accountIds"]] <-
          self$`accountIds`
      }
      if (!is.null(self$`audiences`)) {
        ScheduledNotificationObject[["audiences"]] <-
          self$extractSimpleType(self$`audiences`)
      }
      if (!is.null(self$`report`)) {
        ScheduledNotificationObject[["report"]] <-
          self$extractSimpleType(self$`report`)
      }
      if (!is.null(self$`reportParams`)) {
        ScheduledNotificationObject[["reportParams"]] <-
          self$`reportParams`
      }
      if (!is.null(self$`endpointURL`)) {
        ScheduledNotificationObject[["endpointURL"]] <-
          self$`endpointURL`
      }
      if (!is.null(self$`lastActionDate`)) {
        ScheduledNotificationObject[["lastActionDate"]] <-
          self$`lastActionDate`
      }
      if (!is.null(self$`scheduledDate`)) {
        ScheduledNotificationObject[["scheduledDate"]] <-
          self$`scheduledDate`
      }
      if (!is.null(self$`startDate`)) {
        ScheduledNotificationObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        ScheduledNotificationObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`cronExpression`)) {
        ScheduledNotificationObject[["cronExpression"]] <-
          self$`cronExpression`
      }
      if (!is.null(self$`deliverEstimate`)) {
        ScheduledNotificationObject[["deliverEstimate"]] <-
          self$`deliverEstimate`
      }
      if (!is.null(self$`deliverCount`)) {
        ScheduledNotificationObject[["deliverCount"]] <-
          self$`deliverCount`
      }
      if (!is.null(self$`deliverFailed`)) {
        ScheduledNotificationObject[["deliverFailed"]] <-
          self$`deliverFailed`
      }
      if (!is.null(self$`deliverTotal`)) {
        ScheduledNotificationObject[["deliverTotal"]] <-
          self$`deliverTotal`
      }
      if (!is.null(self$`deliverStart`)) {
        ScheduledNotificationObject[["deliverStart"]] <-
          self$`deliverStart`
      }
      if (!is.null(self$`deliverLimit`)) {
        ScheduledNotificationObject[["deliverLimit"]] <-
          self$`deliverLimit`
      }
      if (!is.null(self$`processingTime`)) {
        ScheduledNotificationObject[["processingTime"]] <-
          self$`processingTime`
      }
      if (!is.null(self$`sendingTime`)) {
        ScheduledNotificationObject[["sendingTime"]] <-
          self$`sendingTime`
      }
      if (!is.null(self$`groupingId`)) {
        ScheduledNotificationObject[["groupingId"]] <-
          self$`groupingId`
      }
      if (!is.null(self$`conditionalInput`)) {
        ScheduledNotificationObject[["conditionalInput"]] <-
          self$`conditionalInput`
      }
      if (!is.null(self$`conditionalCode`)) {
        ScheduledNotificationObject[["conditionalCode"]] <-
          self$`conditionalCode`
      }
      if (!is.null(self$`publicPermissions`)) {
        ScheduledNotificationObject[["publicPermissions"]] <-
          self$extractSimpleType(self$`publicPermissions`)
      }
      if (!is.null(self$`userPermissions`)) {
        ScheduledNotificationObject[["userPermissions"]] <-
          self$extractSimpleType(self$`userPermissions`)
      }
      if (!is.null(self$`visibility`)) {
        ScheduledNotificationObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`approvalStatus`)) {
        ScheduledNotificationObject[["approvalStatus"]] <-
          self$`approvalStatus`
      }
      if (!is.null(self$`contentAsset`)) {
        ScheduledNotificationObject[["contentAsset"]] <-
          self$extractSimpleType(self$`contentAsset`)
      }
      return(ScheduledNotificationObject)
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
    #' Deserialize JSON string into an instance of ScheduledNotification
    #'
    #' @param input_json the JSON input
    #' @return the instance of ScheduledNotification
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
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`billableEntity`)) {
        `billableentity_object` <- BillableEntity$new()
        `billableentity_object`$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
        self$`billableEntity` <- `billableentity_object`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PROCESSING\", \"TEMPLATE\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`templateType`)) {
        if (!is.null(this_object$`templateType`) && !(this_object$`templateType` %in% c("REPORTING", "ACHIEVEMENT_OWNER", "ACHIEVEMENT_TRIGGER", "GEOFENCE_OWNER", "GEOFENCE_TARGET", "GEOFENCE_TRIGGER", "GEOFENCE_HTTP_CALL"))) {
          stop(paste("Error! \"", this_object$`templateType`, "\" cannot be assigned to `templateType`. Must be \"REPORTING\", \"ACHIEVEMENT_OWNER\", \"ACHIEVEMENT_TRIGGER\", \"GEOFENCE_OWNER\", \"GEOFENCE_TARGET\", \"GEOFENCE_TRIGGER\", \"GEOFENCE_HTTP_CALL\".", sep = ""))
        }
        self$`templateType` <- this_object$`templateType`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`errorMessage`)) {
        self$`errorMessage` <- this_object$`errorMessage`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`payload`)) {
        self$`payload` <- this_object$`payload`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`contentId`)) {
        self$`contentId` <- this_object$`contentId`
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
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`connectionGroups`)) {
        self$`connectionGroups` <- ApiClient$new()$deserializeObj(this_object$`connectionGroups`, "array[ConnectionGroup]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`accountIds`)) {
        self$`accountIds` <- ApiClient$new()$deserializeObj(this_object$`accountIds`, "set[integer]", loadNamespace("openapi"))
        if (!identical(self$`accountIds`, unique(self$`accountIds`))) {
          stop("Error! Items in `accountIds` are not unique.")
        }
      }
      if (!is.null(this_object$`audiences`)) {
        self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[Audience]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`report`)) {
        `report_object` <- ReportDefinition$new()
        `report_object`$fromJSON(jsonlite::toJSON(this_object$`report`, auto_unbox = TRUE, digits = NA))
        self$`report` <- `report_object`
      }
      if (!is.null(this_object$`reportParams`)) {
        self$`reportParams` <- this_object$`reportParams`
      }
      if (!is.null(this_object$`endpointURL`)) {
        self$`endpointURL` <- this_object$`endpointURL`
      }
      if (!is.null(this_object$`lastActionDate`)) {
        self$`lastActionDate` <- this_object$`lastActionDate`
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
      if (!is.null(this_object$`cronExpression`)) {
        self$`cronExpression` <- this_object$`cronExpression`
      }
      if (!is.null(this_object$`deliverEstimate`)) {
        self$`deliverEstimate` <- this_object$`deliverEstimate`
      }
      if (!is.null(this_object$`deliverCount`)) {
        self$`deliverCount` <- this_object$`deliverCount`
      }
      if (!is.null(this_object$`deliverFailed`)) {
        self$`deliverFailed` <- this_object$`deliverFailed`
      }
      if (!is.null(this_object$`deliverTotal`)) {
        self$`deliverTotal` <- this_object$`deliverTotal`
      }
      if (!is.null(this_object$`deliverStart`)) {
        self$`deliverStart` <- this_object$`deliverStart`
      }
      if (!is.null(this_object$`deliverLimit`)) {
        self$`deliverLimit` <- this_object$`deliverLimit`
      }
      if (!is.null(this_object$`processingTime`)) {
        self$`processingTime` <- this_object$`processingTime`
      }
      if (!is.null(this_object$`sendingTime`)) {
        self$`sendingTime` <- this_object$`sendingTime`
      }
      if (!is.null(this_object$`groupingId`)) {
        self$`groupingId` <- this_object$`groupingId`
      }
      if (!is.null(this_object$`conditionalInput`)) {
        self$`conditionalInput` <- this_object$`conditionalInput`
      }
      if (!is.null(this_object$`conditionalCode`)) {
        self$`conditionalCode` <- this_object$`conditionalCode`
      }
      if (!is.null(this_object$`publicPermissions`)) {
        `publicpermissions_object` <- Permissions$new()
        `publicpermissions_object`$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
        self$`publicPermissions` <- `publicpermissions_object`
      }
      if (!is.null(this_object$`userPermissions`)) {
        self$`userPermissions` <- ApiClient$new()$deserializeObj(this_object$`userPermissions`, "array[UserPermissions]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`visibility`)) {
        if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`approvalStatus`)) {
        if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        self$`approvalStatus` <- this_object$`approvalStatus`
      }
      if (!is.null(this_object$`contentAsset`)) {
        `contentasset_object` <- Asset$new()
        `contentasset_object`$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
        self$`contentAsset` <- `contentasset_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ScheduledNotification in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ScheduledNotification
    #'
    #' @param input_json the JSON input
    #' @return the instance of ScheduledNotification
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`billableEntity` <- BillableEntity$new()$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PROCESSING\", \"TEMPLATE\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      if (!is.null(this_object$`templateType`) && !(this_object$`templateType` %in% c("REPORTING", "ACHIEVEMENT_OWNER", "ACHIEVEMENT_TRIGGER", "GEOFENCE_OWNER", "GEOFENCE_TARGET", "GEOFENCE_TRIGGER", "GEOFENCE_HTTP_CALL"))) {
        stop(paste("Error! \"", this_object$`templateType`, "\" cannot be assigned to `templateType`. Must be \"REPORTING\", \"ACHIEVEMENT_OWNER\", \"ACHIEVEMENT_TRIGGER\", \"GEOFENCE_OWNER\", \"GEOFENCE_TARGET\", \"GEOFENCE_TRIGGER\", \"GEOFENCE_HTTP_CALL\".", sep = ""))
      }
      self$`templateType` <- this_object$`templateType`
      self$`name` <- this_object$`name`
      self$`errorMessage` <- this_object$`errorMessage`
      self$`message` <- this_object$`message`
      self$`payload` <- this_object$`payload`
      self$`contentName` <- this_object$`contentName`
      self$`contentId` <- this_object$`contentId`
      self$`contentType` <- this_object$`contentType`
      self$`parentId` <- this_object$`parentId`
      self$`parentType` <- this_object$`parentType`
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`connectionGroups` <- ApiClient$new()$deserializeObj(this_object$`connectionGroups`, "array[ConnectionGroup]", loadNamespace("openapi"))
      self$`accountIds` <- ApiClient$new()$deserializeObj(this_object$`accountIds`, "set[integer]", loadNamespace("openapi"))
      if (!identical(self$`accountIds`, unique(self$`accountIds`))) {
        stop("Error! Items in `accountIds` are not unique.")
      }
      self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[Audience]", loadNamespace("openapi"))
      self$`report` <- ReportDefinition$new()$fromJSON(jsonlite::toJSON(this_object$`report`, auto_unbox = TRUE, digits = NA))
      self$`reportParams` <- this_object$`reportParams`
      self$`endpointURL` <- this_object$`endpointURL`
      self$`lastActionDate` <- this_object$`lastActionDate`
      self$`scheduledDate` <- this_object$`scheduledDate`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`cronExpression` <- this_object$`cronExpression`
      self$`deliverEstimate` <- this_object$`deliverEstimate`
      self$`deliverCount` <- this_object$`deliverCount`
      self$`deliverFailed` <- this_object$`deliverFailed`
      self$`deliverTotal` <- this_object$`deliverTotal`
      self$`deliverStart` <- this_object$`deliverStart`
      self$`deliverLimit` <- this_object$`deliverLimit`
      self$`processingTime` <- this_object$`processingTime`
      self$`sendingTime` <- this_object$`sendingTime`
      self$`groupingId` <- this_object$`groupingId`
      self$`conditionalInput` <- this_object$`conditionalInput`
      self$`conditionalCode` <- this_object$`conditionalCode`
      self$`publicPermissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
      self$`userPermissions` <- ApiClient$new()$deserializeObj(this_object$`userPermissions`, "array[UserPermissions]", loadNamespace("openapi"))
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
        stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
      }
      self$`approvalStatus` <- this_object$`approvalStatus`
      self$`contentAsset` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ScheduledNotification and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ScheduledNotification
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
# ScheduledNotification$unlock()
#
## Below is an example to define the print function
# ScheduledNotification$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ScheduledNotification$lock()

