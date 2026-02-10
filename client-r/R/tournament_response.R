#' Create a new TournamentResponse
#'
#' @description
#' TournamentResponse Class
#'
#' @docType class
#' @title TournamentResponse
#' @description TournamentResponse Class
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
#' @field rewards  list(\link{RewardResponse}) [optional]
#' @field games  \link{GameListResponse} [optional]
#' @field scores  \link{ScoreListResponse} [optional]
#' @field userPermissionsList  \link{UserPermissionsListResponse} [optional]
#' @field results  list(\link{NameStringValueResponse}) [optional]
#' @field inviteStatus  character [optional]
#' @field audiences  list(\link{AudienceResponse}) [optional]
#' @field missionInviteId  integer [optional]
#' @field missionInvite  \link{MissionInviteResponse} [optional]
#' @field invitee  \link{AccountShortResponse} [optional]
#' @field formatType  character [optional]
#' @field creatives  list(\link{CreativeResponse}) [optional]
#' @field fixedReward  character [optional]
#' @field allocateTickets  character [optional]
#' @field ticketType  character [optional]
#' @field ticketCount  integer [optional]
#' @field points  integer [optional]
#' @field splitReward  character [optional]
#' @field secondsBetweenLevels  integer [optional]
#' @field secondsBetweenPacks  integer [optional]
#' @field advancedReporting  character [optional]
#' @field tournamentData  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TournamentResponse <- R6::R6Class(
  "TournamentResponse",
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
    `rewards` = NULL,
    `games` = NULL,
    `scores` = NULL,
    `userPermissionsList` = NULL,
    `results` = NULL,
    `inviteStatus` = NULL,
    `audiences` = NULL,
    `missionInviteId` = NULL,
    `missionInvite` = NULL,
    `invitee` = NULL,
    `formatType` = NULL,
    `creatives` = NULL,
    `fixedReward` = NULL,
    `allocateTickets` = NULL,
    `ticketType` = NULL,
    `ticketCount` = NULL,
    `points` = NULL,
    `splitReward` = NULL,
    `secondsBetweenLevels` = NULL,
    `secondsBetweenPacks` = NULL,
    `advancedReporting` = NULL,
    `tournamentData` = NULL,

    #' @description
    #' Initialize a new TournamentResponse class.
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
    #' @param rewards rewards
    #' @param games games
    #' @param scores scores
    #' @param userPermissionsList userPermissionsList
    #' @param results results
    #' @param inviteStatus inviteStatus
    #' @param audiences audiences
    #' @param missionInviteId missionInviteId
    #' @param missionInvite missionInvite
    #' @param invitee invitee
    #' @param formatType formatType
    #' @param creatives creatives
    #' @param fixedReward fixedReward
    #' @param allocateTickets allocateTickets
    #' @param ticketType ticketType
    #' @param ticketCount ticketCount
    #' @param points points
    #' @param splitReward splitReward
    #' @param secondsBetweenLevels secondsBetweenLevels
    #' @param secondsBetweenPacks secondsBetweenPacks
    #' @param advancedReporting advancedReporting
    #' @param tournamentData tournamentData
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `highestAppVersion` = NULL, `missionId` = NULL, `ticketsEarned` = NULL, `costToPlay` = NULL, `costToPlayType` = NULL, `owner` = NULL, `title` = NULL, `description` = NULL, `authorOverride` = NULL, `icon` = NULL, `image` = NULL, `sequenceType` = NULL, `updatedDate` = NULL, `startDate` = NULL, `endDate` = NULL, `missionType` = NULL, `active` = NULL, `balance` = NULL, `availableLimit` = NULL, `inviteCount` = NULL, `acceptedCount` = NULL, `childCount` = NULL, `enableBuyBack` = NULL, `minimumToPlay` = NULL, `rewarded` = NULL, `refunded` = NULL, `joinCode` = NULL, `rewards` = NULL, `games` = NULL, `scores` = NULL, `userPermissionsList` = NULL, `results` = NULL, `inviteStatus` = NULL, `audiences` = NULL, `missionInviteId` = NULL, `missionInvite` = NULL, `invitee` = NULL, `formatType` = NULL, `creatives` = NULL, `fixedReward` = NULL, `allocateTickets` = NULL, `ticketType` = NULL, `ticketCount` = NULL, `points` = NULL, `splitReward` = NULL, `secondsBetweenLevels` = NULL, `secondsBetweenPacks` = NULL, `advancedReporting` = NULL, `tournamentData` = NULL, ...) {
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
      if (!is.null(`rewards`)) {
        stopifnot(is.vector(`rewards`), length(`rewards`) != 0)
        sapply(`rewards`, function(x) stopifnot(R6::is.R6(x)))
        self$`rewards` <- `rewards`
      }
      if (!is.null(`games`)) {
        stopifnot(R6::is.R6(`games`))
        self$`games` <- `games`
      }
      if (!is.null(`scores`)) {
        stopifnot(R6::is.R6(`scores`))
        self$`scores` <- `scores`
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
      if (!is.null(`inviteStatus`)) {
        if (!(`inviteStatus` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
          stop(paste("Error! \"", `inviteStatus`, "\" cannot be assigned to `inviteStatus`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
        }
        if (!(is.character(`inviteStatus`) && length(`inviteStatus`) == 1)) {
          stop(paste("Error! Invalid data for `inviteStatus`. Must be a string:", `inviteStatus`))
        }
        self$`inviteStatus` <- `inviteStatus`
      }
      if (!is.null(`audiences`)) {
        stopifnot(is.vector(`audiences`), length(`audiences`) != 0)
        sapply(`audiences`, function(x) stopifnot(R6::is.R6(x)))
        self$`audiences` <- `audiences`
      }
      if (!is.null(`missionInviteId`)) {
        if (!(is.numeric(`missionInviteId`) && length(`missionInviteId`) == 1)) {
          stop(paste("Error! Invalid data for `missionInviteId`. Must be an integer:", `missionInviteId`))
        }
        self$`missionInviteId` <- `missionInviteId`
      }
      if (!is.null(`missionInvite`)) {
        stopifnot(R6::is.R6(`missionInvite`))
        self$`missionInvite` <- `missionInvite`
      }
      if (!is.null(`invitee`)) {
        stopifnot(R6::is.R6(`invitee`))
        self$`invitee` <- `invitee`
      }
      if (!is.null(`formatType`)) {
        if (!(is.character(`formatType`) && length(`formatType`) == 1)) {
          stop(paste("Error! Invalid data for `formatType`. Must be a string:", `formatType`))
        }
        self$`formatType` <- `formatType`
      }
      if (!is.null(`creatives`)) {
        stopifnot(is.vector(`creatives`), length(`creatives`) != 0)
        sapply(`creatives`, function(x) stopifnot(R6::is.R6(x)))
        self$`creatives` <- `creatives`
      }
      if (!is.null(`fixedReward`)) {
        if (!(is.logical(`fixedReward`) && length(`fixedReward`) == 1)) {
          stop(paste("Error! Invalid data for `fixedReward`. Must be a boolean:", `fixedReward`))
        }
        self$`fixedReward` <- `fixedReward`
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
      if (!is.null(`splitReward`)) {
        if (!(is.character(`splitReward`) && length(`splitReward`) == 1)) {
          stop(paste("Error! Invalid data for `splitReward`. Must be a string:", `splitReward`))
        }
        self$`splitReward` <- `splitReward`
      }
      if (!is.null(`secondsBetweenLevels`)) {
        if (!(is.numeric(`secondsBetweenLevels`) && length(`secondsBetweenLevels`) == 1)) {
          stop(paste("Error! Invalid data for `secondsBetweenLevels`. Must be an integer:", `secondsBetweenLevels`))
        }
        self$`secondsBetweenLevels` <- `secondsBetweenLevels`
      }
      if (!is.null(`secondsBetweenPacks`)) {
        if (!(is.numeric(`secondsBetweenPacks`) && length(`secondsBetweenPacks`) == 1)) {
          stop(paste("Error! Invalid data for `secondsBetweenPacks`. Must be an integer:", `secondsBetweenPacks`))
        }
        self$`secondsBetweenPacks` <- `secondsBetweenPacks`
      }
      if (!is.null(`advancedReporting`)) {
        if (!(is.logical(`advancedReporting`) && length(`advancedReporting`) == 1)) {
          stop(paste("Error! Invalid data for `advancedReporting`. Must be a boolean:", `advancedReporting`))
        }
        self$`advancedReporting` <- `advancedReporting`
      }
      if (!is.null(`tournamentData`)) {
        if (!(is.character(`tournamentData`) && length(`tournamentData`) == 1)) {
          stop(paste("Error! Invalid data for `tournamentData`. Must be a string:", `tournamentData`))
        }
        self$`tournamentData` <- `tournamentData`
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
    #' @return TournamentResponse as a base R list.
    #' @examples
    #' # convert array of TournamentResponse (x) to a data frame
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
    #' Convert TournamentResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TournamentResponseObject <- list()
      if (!is.null(self$`action`)) {
        TournamentResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`highestAppVersion`)) {
        TournamentResponseObject[["highestAppVersion"]] <-
          self$`highestAppVersion`
      }
      if (!is.null(self$`missionId`)) {
        TournamentResponseObject[["missionId"]] <-
          self$`missionId`
      }
      if (!is.null(self$`ticketsEarned`)) {
        TournamentResponseObject[["ticketsEarned"]] <-
          self$`ticketsEarned`
      }
      if (!is.null(self$`costToPlay`)) {
        TournamentResponseObject[["costToPlay"]] <-
          self$`costToPlay`
      }
      if (!is.null(self$`costToPlayType`)) {
        TournamentResponseObject[["costToPlayType"]] <-
          self$`costToPlayType`
      }
      if (!is.null(self$`owner`)) {
        TournamentResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`title`)) {
        TournamentResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        TournamentResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`authorOverride`)) {
        TournamentResponseObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`icon`)) {
        TournamentResponseObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`image`)) {
        TournamentResponseObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`sequenceType`)) {
        TournamentResponseObject[["sequenceType"]] <-
          self$`sequenceType`
      }
      if (!is.null(self$`updatedDate`)) {
        TournamentResponseObject[["updatedDate"]] <-
          self$`updatedDate`
      }
      if (!is.null(self$`startDate`)) {
        TournamentResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        TournamentResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`missionType`)) {
        TournamentResponseObject[["missionType"]] <-
          self$`missionType`
      }
      if (!is.null(self$`active`)) {
        TournamentResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`balance`)) {
        TournamentResponseObject[["balance"]] <-
          self$`balance`
      }
      if (!is.null(self$`availableLimit`)) {
        TournamentResponseObject[["availableLimit"]] <-
          self$`availableLimit`
      }
      if (!is.null(self$`inviteCount`)) {
        TournamentResponseObject[["inviteCount"]] <-
          self$`inviteCount`
      }
      if (!is.null(self$`acceptedCount`)) {
        TournamentResponseObject[["acceptedCount"]] <-
          self$`acceptedCount`
      }
      if (!is.null(self$`childCount`)) {
        TournamentResponseObject[["childCount"]] <-
          self$`childCount`
      }
      if (!is.null(self$`enableBuyBack`)) {
        TournamentResponseObject[["enableBuyBack"]] <-
          self$`enableBuyBack`
      }
      if (!is.null(self$`minimumToPlay`)) {
        TournamentResponseObject[["minimumToPlay"]] <-
          self$`minimumToPlay`
      }
      if (!is.null(self$`rewarded`)) {
        TournamentResponseObject[["rewarded"]] <-
          self$`rewarded`
      }
      if (!is.null(self$`refunded`)) {
        TournamentResponseObject[["refunded"]] <-
          self$`refunded`
      }
      if (!is.null(self$`joinCode`)) {
        TournamentResponseObject[["joinCode"]] <-
          self$`joinCode`
      }
      if (!is.null(self$`rewards`)) {
        TournamentResponseObject[["rewards"]] <-
          self$extractSimpleType(self$`rewards`)
      }
      if (!is.null(self$`games`)) {
        TournamentResponseObject[["games"]] <-
          self$extractSimpleType(self$`games`)
      }
      if (!is.null(self$`scores`)) {
        TournamentResponseObject[["scores"]] <-
          self$extractSimpleType(self$`scores`)
      }
      if (!is.null(self$`userPermissionsList`)) {
        TournamentResponseObject[["userPermissionsList"]] <-
          self$extractSimpleType(self$`userPermissionsList`)
      }
      if (!is.null(self$`results`)) {
        TournamentResponseObject[["results"]] <-
          self$extractSimpleType(self$`results`)
      }
      if (!is.null(self$`inviteStatus`)) {
        TournamentResponseObject[["inviteStatus"]] <-
          self$`inviteStatus`
      }
      if (!is.null(self$`audiences`)) {
        TournamentResponseObject[["audiences"]] <-
          self$extractSimpleType(self$`audiences`)
      }
      if (!is.null(self$`missionInviteId`)) {
        TournamentResponseObject[["missionInviteId"]] <-
          self$`missionInviteId`
      }
      if (!is.null(self$`missionInvite`)) {
        TournamentResponseObject[["missionInvite"]] <-
          self$extractSimpleType(self$`missionInvite`)
      }
      if (!is.null(self$`invitee`)) {
        TournamentResponseObject[["invitee"]] <-
          self$extractSimpleType(self$`invitee`)
      }
      if (!is.null(self$`formatType`)) {
        TournamentResponseObject[["formatType"]] <-
          self$`formatType`
      }
      if (!is.null(self$`creatives`)) {
        TournamentResponseObject[["creatives"]] <-
          self$extractSimpleType(self$`creatives`)
      }
      if (!is.null(self$`fixedReward`)) {
        TournamentResponseObject[["fixedReward"]] <-
          self$`fixedReward`
      }
      if (!is.null(self$`allocateTickets`)) {
        TournamentResponseObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`ticketType`)) {
        TournamentResponseObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`ticketCount`)) {
        TournamentResponseObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`points`)) {
        TournamentResponseObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`splitReward`)) {
        TournamentResponseObject[["splitReward"]] <-
          self$`splitReward`
      }
      if (!is.null(self$`secondsBetweenLevels`)) {
        TournamentResponseObject[["secondsBetweenLevels"]] <-
          self$`secondsBetweenLevels`
      }
      if (!is.null(self$`secondsBetweenPacks`)) {
        TournamentResponseObject[["secondsBetweenPacks"]] <-
          self$`secondsBetweenPacks`
      }
      if (!is.null(self$`advancedReporting`)) {
        TournamentResponseObject[["advancedReporting"]] <-
          self$`advancedReporting`
      }
      if (!is.null(self$`tournamentData`)) {
        TournamentResponseObject[["tournamentData"]] <-
          self$`tournamentData`
      }
      return(TournamentResponseObject)
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
    #' Deserialize JSON string into an instance of TournamentResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TournamentResponse
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
      if (!is.null(this_object$`rewards`)) {
        self$`rewards` <- ApiClient$new()$deserializeObj(this_object$`rewards`, "array[RewardResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`games`)) {
        `games_object` <- GameListResponse$new()
        `games_object`$fromJSON(jsonlite::toJSON(this_object$`games`, auto_unbox = TRUE, digits = NA))
        self$`games` <- `games_object`
      }
      if (!is.null(this_object$`scores`)) {
        `scores_object` <- ScoreListResponse$new()
        `scores_object`$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
        self$`scores` <- `scores_object`
      }
      if (!is.null(this_object$`userPermissionsList`)) {
        `userpermissionslist_object` <- UserPermissionsListResponse$new()
        `userpermissionslist_object`$fromJSON(jsonlite::toJSON(this_object$`userPermissionsList`, auto_unbox = TRUE, digits = NA))
        self$`userPermissionsList` <- `userpermissionslist_object`
      }
      if (!is.null(this_object$`results`)) {
        self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`inviteStatus`)) {
        if (!is.null(this_object$`inviteStatus`) && !(this_object$`inviteStatus` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
          stop(paste("Error! \"", this_object$`inviteStatus`, "\" cannot be assigned to `inviteStatus`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
        }
        self$`inviteStatus` <- this_object$`inviteStatus`
      }
      if (!is.null(this_object$`audiences`)) {
        self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[AudienceResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`missionInviteId`)) {
        self$`missionInviteId` <- this_object$`missionInviteId`
      }
      if (!is.null(this_object$`missionInvite`)) {
        `missioninvite_object` <- MissionInviteResponse$new()
        `missioninvite_object`$fromJSON(jsonlite::toJSON(this_object$`missionInvite`, auto_unbox = TRUE, digits = NA))
        self$`missionInvite` <- `missioninvite_object`
      }
      if (!is.null(this_object$`invitee`)) {
        `invitee_object` <- AccountShortResponse$new()
        `invitee_object`$fromJSON(jsonlite::toJSON(this_object$`invitee`, auto_unbox = TRUE, digits = NA))
        self$`invitee` <- `invitee_object`
      }
      if (!is.null(this_object$`formatType`)) {
        self$`formatType` <- this_object$`formatType`
      }
      if (!is.null(this_object$`creatives`)) {
        self$`creatives` <- ApiClient$new()$deserializeObj(this_object$`creatives`, "array[CreativeResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`fixedReward`)) {
        self$`fixedReward` <- this_object$`fixedReward`
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
      if (!is.null(this_object$`splitReward`)) {
        self$`splitReward` <- this_object$`splitReward`
      }
      if (!is.null(this_object$`secondsBetweenLevels`)) {
        self$`secondsBetweenLevels` <- this_object$`secondsBetweenLevels`
      }
      if (!is.null(this_object$`secondsBetweenPacks`)) {
        self$`secondsBetweenPacks` <- this_object$`secondsBetweenPacks`
      }
      if (!is.null(this_object$`advancedReporting`)) {
        self$`advancedReporting` <- this_object$`advancedReporting`
      }
      if (!is.null(this_object$`tournamentData`)) {
        self$`tournamentData` <- this_object$`tournamentData`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TournamentResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TournamentResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TournamentResponse
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
      self$`rewards` <- ApiClient$new()$deserializeObj(this_object$`rewards`, "array[RewardResponse]", loadNamespace("openapi"))
      self$`games` <- GameListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`games`, auto_unbox = TRUE, digits = NA))
      self$`scores` <- ScoreListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
      self$`userPermissionsList` <- UserPermissionsListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`userPermissionsList`, auto_unbox = TRUE, digits = NA))
      self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      if (!is.null(this_object$`inviteStatus`) && !(this_object$`inviteStatus` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
        stop(paste("Error! \"", this_object$`inviteStatus`, "\" cannot be assigned to `inviteStatus`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
      }
      self$`inviteStatus` <- this_object$`inviteStatus`
      self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[AudienceResponse]", loadNamespace("openapi"))
      self$`missionInviteId` <- this_object$`missionInviteId`
      self$`missionInvite` <- MissionInviteResponse$new()$fromJSON(jsonlite::toJSON(this_object$`missionInvite`, auto_unbox = TRUE, digits = NA))
      self$`invitee` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`invitee`, auto_unbox = TRUE, digits = NA))
      self$`formatType` <- this_object$`formatType`
      self$`creatives` <- ApiClient$new()$deserializeObj(this_object$`creatives`, "array[CreativeResponse]", loadNamespace("openapi"))
      self$`fixedReward` <- this_object$`fixedReward`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`ticketType` <- this_object$`ticketType`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`points` <- this_object$`points`
      self$`splitReward` <- this_object$`splitReward`
      self$`secondsBetweenLevels` <- this_object$`secondsBetweenLevels`
      self$`secondsBetweenPacks` <- this_object$`secondsBetweenPacks`
      self$`advancedReporting` <- this_object$`advancedReporting`
      self$`tournamentData` <- this_object$`tournamentData`
      self
    },

    #' @description
    #' Validate JSON input with respect to TournamentResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TournamentResponse
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
# TournamentResponse$unlock()
#
## Below is an example to define the print function
# TournamentResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TournamentResponse$lock()

