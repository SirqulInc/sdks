#' Create a new PackResponse
#'
#' @description
#' PackResponse Class
#'
#' @docType class
#' @title PackResponse
#' @description PackResponse Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field highestAppVersion  character [optional]
#' @field gameType  character [optional]
#' @field packId  integer [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field active  character [optional]
#' @field downloaded  character [optional]
#' @field completed  character [optional]
#' @field icon  \link{AssetShortResponse} [optional]
#' @field background  \link{AssetShortResponse} [optional]
#' @field ticketsEarned  integer [optional]
#' @field levels  \link{GameLevelListResponse} [optional]
#' @field sequenceType  character [optional]
#' @field scores  \link{ScoreListResponse} [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field costToRedeem  integer [optional]
#' @field price  integer [optional]
#' @field priceType  character [optional]
#' @field userPermissionsList  \link{UserPermissionsListResponse} [optional]
#' @field results  list(\link{NameStringValueResponse}) [optional]
#' @field tickets  \link{TicketListResponse} [optional]
#' @field authorOverride  character [optional]
#' @field updatedDate  integer [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field packType  character [optional]
#' @field packOrder  integer [optional]
#' @field appKey  character [optional]
#' @field application  \link{ApplicationShortResponse} [optional]
#' @field inGame  character [optional]
#' @field highest  character [optional]
#' @field allocateTickets  character [optional]
#' @field ticketType  character [optional]
#' @field ticketCount  integer [optional]
#' @field points  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PackResponse <- R6::R6Class(
  "PackResponse",
  public = list(
    `action` = NULL,
    `highestAppVersion` = NULL,
    `gameType` = NULL,
    `packId` = NULL,
    `name` = NULL,
    `description` = NULL,
    `active` = NULL,
    `downloaded` = NULL,
    `completed` = NULL,
    `icon` = NULL,
    `background` = NULL,
    `ticketsEarned` = NULL,
    `levels` = NULL,
    `sequenceType` = NULL,
    `scores` = NULL,
    `owner` = NULL,
    `costToRedeem` = NULL,
    `price` = NULL,
    `priceType` = NULL,
    `userPermissionsList` = NULL,
    `results` = NULL,
    `tickets` = NULL,
    `authorOverride` = NULL,
    `updatedDate` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `packType` = NULL,
    `packOrder` = NULL,
    `appKey` = NULL,
    `application` = NULL,
    `inGame` = NULL,
    `highest` = NULL,
    `allocateTickets` = NULL,
    `ticketType` = NULL,
    `ticketCount` = NULL,
    `points` = NULL,

    #' @description
    #' Initialize a new PackResponse class.
    #'
    #' @param action action
    #' @param highestAppVersion highestAppVersion
    #' @param gameType gameType
    #' @param packId packId
    #' @param name name
    #' @param description description
    #' @param active active
    #' @param downloaded downloaded
    #' @param completed completed
    #' @param icon icon
    #' @param background background
    #' @param ticketsEarned ticketsEarned
    #' @param levels levels
    #' @param sequenceType sequenceType
    #' @param scores scores
    #' @param owner owner
    #' @param costToRedeem costToRedeem
    #' @param price price
    #' @param priceType priceType
    #' @param userPermissionsList userPermissionsList
    #' @param results results
    #' @param tickets tickets
    #' @param authorOverride authorOverride
    #' @param updatedDate updatedDate
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param packType packType
    #' @param packOrder packOrder
    #' @param appKey appKey
    #' @param application application
    #' @param inGame inGame
    #' @param highest highest
    #' @param allocateTickets allocateTickets
    #' @param ticketType ticketType
    #' @param ticketCount ticketCount
    #' @param points points
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `highestAppVersion` = NULL, `gameType` = NULL, `packId` = NULL, `name` = NULL, `description` = NULL, `active` = NULL, `downloaded` = NULL, `completed` = NULL, `icon` = NULL, `background` = NULL, `ticketsEarned` = NULL, `levels` = NULL, `sequenceType` = NULL, `scores` = NULL, `owner` = NULL, `costToRedeem` = NULL, `price` = NULL, `priceType` = NULL, `userPermissionsList` = NULL, `results` = NULL, `tickets` = NULL, `authorOverride` = NULL, `updatedDate` = NULL, `startDate` = NULL, `endDate` = NULL, `packType` = NULL, `packOrder` = NULL, `appKey` = NULL, `application` = NULL, `inGame` = NULL, `highest` = NULL, `allocateTickets` = NULL, `ticketType` = NULL, `ticketCount` = NULL, `points` = NULL, ...) {
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
      if (!is.null(`gameType`)) {
        if (!(is.character(`gameType`) && length(`gameType`) == 1)) {
          stop(paste("Error! Invalid data for `gameType`. Must be a string:", `gameType`))
        }
        self$`gameType` <- `gameType`
      }
      if (!is.null(`packId`)) {
        if (!(is.numeric(`packId`) && length(`packId`) == 1)) {
          stop(paste("Error! Invalid data for `packId`. Must be an integer:", `packId`))
        }
        self$`packId` <- `packId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`downloaded`)) {
        if (!(is.logical(`downloaded`) && length(`downloaded`) == 1)) {
          stop(paste("Error! Invalid data for `downloaded`. Must be a boolean:", `downloaded`))
        }
        self$`downloaded` <- `downloaded`
      }
      if (!is.null(`completed`)) {
        if (!(is.logical(`completed`) && length(`completed`) == 1)) {
          stop(paste("Error! Invalid data for `completed`. Must be a boolean:", `completed`))
        }
        self$`completed` <- `completed`
      }
      if (!is.null(`icon`)) {
        stopifnot(R6::is.R6(`icon`))
        self$`icon` <- `icon`
      }
      if (!is.null(`background`)) {
        stopifnot(R6::is.R6(`background`))
        self$`background` <- `background`
      }
      if (!is.null(`ticketsEarned`)) {
        if (!(is.numeric(`ticketsEarned`) && length(`ticketsEarned`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsEarned`. Must be an integer:", `ticketsEarned`))
        }
        self$`ticketsEarned` <- `ticketsEarned`
      }
      if (!is.null(`levels`)) {
        stopifnot(R6::is.R6(`levels`))
        self$`levels` <- `levels`
      }
      if (!is.null(`sequenceType`)) {
        if (!(is.character(`sequenceType`) && length(`sequenceType`) == 1)) {
          stop(paste("Error! Invalid data for `sequenceType`. Must be a string:", `sequenceType`))
        }
        self$`sequenceType` <- `sequenceType`
      }
      if (!is.null(`scores`)) {
        stopifnot(R6::is.R6(`scores`))
        self$`scores` <- `scores`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`costToRedeem`)) {
        if (!(is.numeric(`costToRedeem`) && length(`costToRedeem`) == 1)) {
          stop(paste("Error! Invalid data for `costToRedeem`. Must be an integer:", `costToRedeem`))
        }
        self$`costToRedeem` <- `costToRedeem`
      }
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be an integer:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`priceType`)) {
        if (!(is.character(`priceType`) && length(`priceType`) == 1)) {
          stop(paste("Error! Invalid data for `priceType`. Must be a string:", `priceType`))
        }
        self$`priceType` <- `priceType`
      }
      if (!is.null(`userPermissionsList`)) {
        stopifnot(R6::is.R6(`userPermissionsList`))
        self$`userPermissionsList` <- `userPermissionsList`
      }
      if (!is.null(`results`)) {
        stopifnot(is.vector(`results`), length(`results`) != 0)
        sapply(`results`, function(x) stopifnot(R6::is.R6(x)))
        self$`results` <- `results`
      }
      if (!is.null(`tickets`)) {
        stopifnot(R6::is.R6(`tickets`))
        self$`tickets` <- `tickets`
      }
      if (!is.null(`authorOverride`)) {
        if (!(is.character(`authorOverride`) && length(`authorOverride`) == 1)) {
          stop(paste("Error! Invalid data for `authorOverride`. Must be a string:", `authorOverride`))
        }
        self$`authorOverride` <- `authorOverride`
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
      if (!is.null(`packType`)) {
        if (!(`packType` %in% c("TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT"))) {
          stop(paste("Error! \"", `packType`, "\" cannot be assigned to `packType`. Must be \"TUTORIAL\", \"BUILTIN\", \"DOWNLOAD\", \"THRESHOLD\", \"THEME\", \"TOURNAMENT\".", sep = ""))
        }
        if (!(is.character(`packType`) && length(`packType`) == 1)) {
          stop(paste("Error! Invalid data for `packType`. Must be a string:", `packType`))
        }
        self$`packType` <- `packType`
      }
      if (!is.null(`packOrder`)) {
        if (!(is.numeric(`packOrder`) && length(`packOrder`) == 1)) {
          stop(paste("Error! Invalid data for `packOrder`. Must be an integer:", `packOrder`))
        }
        self$`packOrder` <- `packOrder`
      }
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`inGame`)) {
        if (!(is.logical(`inGame`) && length(`inGame`) == 1)) {
          stop(paste("Error! Invalid data for `inGame`. Must be a boolean:", `inGame`))
        }
        self$`inGame` <- `inGame`
      }
      if (!is.null(`highest`)) {
        if (!(is.logical(`highest`) && length(`highest`) == 1)) {
          stop(paste("Error! Invalid data for `highest`. Must be a boolean:", `highest`))
        }
        self$`highest` <- `highest`
      }
      if (!is.null(`allocateTickets`)) {
        if (!(is.logical(`allocateTickets`) && length(`allocateTickets`) == 1)) {
          stop(paste("Error! Invalid data for `allocateTickets`. Must be a boolean:", `allocateTickets`))
        }
        self$`allocateTickets` <- `allocateTickets`
      }
      if (!is.null(`ticketType`)) {
        if (!(is.character(`ticketType`) && length(`ticketType`) == 1)) {
          stop(paste("Error! Invalid data for `ticketType`. Must be a string:", `ticketType`))
        }
        self$`ticketType` <- `ticketType`
      }
      if (!is.null(`ticketCount`)) {
        if (!(is.numeric(`ticketCount`) && length(`ticketCount`) == 1)) {
          stop(paste("Error! Invalid data for `ticketCount`. Must be an integer:", `ticketCount`))
        }
        self$`ticketCount` <- `ticketCount`
      }
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
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
    #' @return PackResponse as a base R list.
    #' @examples
    #' # convert array of PackResponse (x) to a data frame
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
    #' Convert PackResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PackResponseObject <- list()
      if (!is.null(self$`action`)) {
        PackResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`highestAppVersion`)) {
        PackResponseObject[["highestAppVersion"]] <-
          self$`highestAppVersion`
      }
      if (!is.null(self$`gameType`)) {
        PackResponseObject[["gameType"]] <-
          self$`gameType`
      }
      if (!is.null(self$`packId`)) {
        PackResponseObject[["packId"]] <-
          self$`packId`
      }
      if (!is.null(self$`name`)) {
        PackResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        PackResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`active`)) {
        PackResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`downloaded`)) {
        PackResponseObject[["downloaded"]] <-
          self$`downloaded`
      }
      if (!is.null(self$`completed`)) {
        PackResponseObject[["completed"]] <-
          self$`completed`
      }
      if (!is.null(self$`icon`)) {
        PackResponseObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`background`)) {
        PackResponseObject[["background"]] <-
          self$extractSimpleType(self$`background`)
      }
      if (!is.null(self$`ticketsEarned`)) {
        PackResponseObject[["ticketsEarned"]] <-
          self$`ticketsEarned`
      }
      if (!is.null(self$`levels`)) {
        PackResponseObject[["levels"]] <-
          self$extractSimpleType(self$`levels`)
      }
      if (!is.null(self$`sequenceType`)) {
        PackResponseObject[["sequenceType"]] <-
          self$`sequenceType`
      }
      if (!is.null(self$`scores`)) {
        PackResponseObject[["scores"]] <-
          self$extractSimpleType(self$`scores`)
      }
      if (!is.null(self$`owner`)) {
        PackResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`costToRedeem`)) {
        PackResponseObject[["costToRedeem"]] <-
          self$`costToRedeem`
      }
      if (!is.null(self$`price`)) {
        PackResponseObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`priceType`)) {
        PackResponseObject[["priceType"]] <-
          self$`priceType`
      }
      if (!is.null(self$`userPermissionsList`)) {
        PackResponseObject[["userPermissionsList"]] <-
          self$extractSimpleType(self$`userPermissionsList`)
      }
      if (!is.null(self$`results`)) {
        PackResponseObject[["results"]] <-
          self$extractSimpleType(self$`results`)
      }
      if (!is.null(self$`tickets`)) {
        PackResponseObject[["tickets"]] <-
          self$extractSimpleType(self$`tickets`)
      }
      if (!is.null(self$`authorOverride`)) {
        PackResponseObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`updatedDate`)) {
        PackResponseObject[["updatedDate"]] <-
          self$`updatedDate`
      }
      if (!is.null(self$`startDate`)) {
        PackResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        PackResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`packType`)) {
        PackResponseObject[["packType"]] <-
          self$`packType`
      }
      if (!is.null(self$`packOrder`)) {
        PackResponseObject[["packOrder"]] <-
          self$`packOrder`
      }
      if (!is.null(self$`appKey`)) {
        PackResponseObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`application`)) {
        PackResponseObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`inGame`)) {
        PackResponseObject[["inGame"]] <-
          self$`inGame`
      }
      if (!is.null(self$`highest`)) {
        PackResponseObject[["highest"]] <-
          self$`highest`
      }
      if (!is.null(self$`allocateTickets`)) {
        PackResponseObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`ticketType`)) {
        PackResponseObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`ticketCount`)) {
        PackResponseObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`points`)) {
        PackResponseObject[["points"]] <-
          self$`points`
      }
      return(PackResponseObject)
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
    #' Deserialize JSON string into an instance of PackResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackResponse
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
      if (!is.null(this_object$`gameType`)) {
        self$`gameType` <- this_object$`gameType`
      }
      if (!is.null(this_object$`packId`)) {
        self$`packId` <- this_object$`packId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`downloaded`)) {
        self$`downloaded` <- this_object$`downloaded`
      }
      if (!is.null(this_object$`completed`)) {
        self$`completed` <- this_object$`completed`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- AssetShortResponse$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
      }
      if (!is.null(this_object$`background`)) {
        `background_object` <- AssetShortResponse$new()
        `background_object`$fromJSON(jsonlite::toJSON(this_object$`background`, auto_unbox = TRUE, digits = NA))
        self$`background` <- `background_object`
      }
      if (!is.null(this_object$`ticketsEarned`)) {
        self$`ticketsEarned` <- this_object$`ticketsEarned`
      }
      if (!is.null(this_object$`levels`)) {
        `levels_object` <- GameLevelListResponse$new()
        `levels_object`$fromJSON(jsonlite::toJSON(this_object$`levels`, auto_unbox = TRUE, digits = NA))
        self$`levels` <- `levels_object`
      }
      if (!is.null(this_object$`sequenceType`)) {
        self$`sequenceType` <- this_object$`sequenceType`
      }
      if (!is.null(this_object$`scores`)) {
        `scores_object` <- ScoreListResponse$new()
        `scores_object`$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
        self$`scores` <- `scores_object`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`costToRedeem`)) {
        self$`costToRedeem` <- this_object$`costToRedeem`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`priceType`)) {
        self$`priceType` <- this_object$`priceType`
      }
      if (!is.null(this_object$`userPermissionsList`)) {
        `userpermissionslist_object` <- UserPermissionsListResponse$new()
        `userpermissionslist_object`$fromJSON(jsonlite::toJSON(this_object$`userPermissionsList`, auto_unbox = TRUE, digits = NA))
        self$`userPermissionsList` <- `userpermissionslist_object`
      }
      if (!is.null(this_object$`results`)) {
        self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`tickets`)) {
        `tickets_object` <- TicketListResponse$new()
        `tickets_object`$fromJSON(jsonlite::toJSON(this_object$`tickets`, auto_unbox = TRUE, digits = NA))
        self$`tickets` <- `tickets_object`
      }
      if (!is.null(this_object$`authorOverride`)) {
        self$`authorOverride` <- this_object$`authorOverride`
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
      if (!is.null(this_object$`packType`)) {
        if (!is.null(this_object$`packType`) && !(this_object$`packType` %in% c("TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT"))) {
          stop(paste("Error! \"", this_object$`packType`, "\" cannot be assigned to `packType`. Must be \"TUTORIAL\", \"BUILTIN\", \"DOWNLOAD\", \"THRESHOLD\", \"THEME\", \"TOURNAMENT\".", sep = ""))
        }
        self$`packType` <- this_object$`packType`
      }
      if (!is.null(this_object$`packOrder`)) {
        self$`packOrder` <- this_object$`packOrder`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- ApplicationShortResponse$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`inGame`)) {
        self$`inGame` <- this_object$`inGame`
      }
      if (!is.null(this_object$`highest`)) {
        self$`highest` <- this_object$`highest`
      }
      if (!is.null(this_object$`allocateTickets`)) {
        self$`allocateTickets` <- this_object$`allocateTickets`
      }
      if (!is.null(this_object$`ticketType`)) {
        self$`ticketType` <- this_object$`ticketType`
      }
      if (!is.null(this_object$`ticketCount`)) {
        self$`ticketCount` <- this_object$`ticketCount`
      }
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PackResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PackResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`highestAppVersion` <- this_object$`highestAppVersion`
      self$`gameType` <- this_object$`gameType`
      self$`packId` <- this_object$`packId`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`active` <- this_object$`active`
      self$`downloaded` <- this_object$`downloaded`
      self$`completed` <- this_object$`completed`
      self$`icon` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`background` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`background`, auto_unbox = TRUE, digits = NA))
      self$`ticketsEarned` <- this_object$`ticketsEarned`
      self$`levels` <- GameLevelListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`levels`, auto_unbox = TRUE, digits = NA))
      self$`sequenceType` <- this_object$`sequenceType`
      self$`scores` <- ScoreListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`costToRedeem` <- this_object$`costToRedeem`
      self$`price` <- this_object$`price`
      self$`priceType` <- this_object$`priceType`
      self$`userPermissionsList` <- UserPermissionsListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`userPermissionsList`, auto_unbox = TRUE, digits = NA))
      self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`tickets` <- TicketListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`tickets`, auto_unbox = TRUE, digits = NA))
      self$`authorOverride` <- this_object$`authorOverride`
      self$`updatedDate` <- this_object$`updatedDate`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      if (!is.null(this_object$`packType`) && !(this_object$`packType` %in% c("TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT"))) {
        stop(paste("Error! \"", this_object$`packType`, "\" cannot be assigned to `packType`. Must be \"TUTORIAL\", \"BUILTIN\", \"DOWNLOAD\", \"THRESHOLD\", \"THEME\", \"TOURNAMENT\".", sep = ""))
      }
      self$`packType` <- this_object$`packType`
      self$`packOrder` <- this_object$`packOrder`
      self$`appKey` <- this_object$`appKey`
      self$`application` <- ApplicationShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`inGame` <- this_object$`inGame`
      self$`highest` <- this_object$`highest`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`ticketType` <- this_object$`ticketType`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`points` <- this_object$`points`
      self
    },

    #' @description
    #' Validate JSON input with respect to PackResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PackResponse
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
# PackResponse$unlock()
#
## Below is an example to define the print function
# PackResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PackResponse$lock()

