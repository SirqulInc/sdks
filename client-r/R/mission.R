#' Create a new Mission
#'
#' @description
#' Mission Class
#'
#' @docType class
#' @title Mission
#' @description Mission Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field missionType  character [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field costToPlay  integer [optional]
#' @field costToPlayType  character [optional]
#' @field games  list(\link{Game}) [optional]
#' @field audiences  list(\link{Audience}) [optional]
#' @field startDate  character [optional]
#' @field endDate  character [optional]
#' @field sequenceType  character [optional]
#' @field authorOverride  character [optional]
#' @field icon  \link{Asset} [optional]
#' @field image  \link{Asset} [optional]
#' @field offers  list(\link{Offer}) [optional]
#' @field visibility  character [optional]
#' @field task  \link{MissionTask} [optional]
#' @field points  integer [optional]
#' @field ticketType  character [optional]
#' @field ticketCount  integer [optional]
#' @field allocateTickets  character [optional]
#' @field billableEntity  \link{BillableEntity} [optional]
#' @field balance  numeric [optional]
#' @field startingLimit  integer [optional]
#' @field availableLimit  integer [optional]
#' @field inviteCount  integer [optional]
#' @field acceptedCount  integer [optional]
#' @field inviteStatus  character [optional]
#' @field childCount  integer [optional]
#' @field secondsBetweenLevels  integer [optional]
#' @field secondsBetweenPacks  integer [optional]
#' @field maximumLevelLength  integer [optional]
#' @field enableBuyBack  character [optional]
#' @field activePack  \link{Pack} [optional]
#' @field minimumToPlay  integer [optional]
#' @field fixedReward  character [optional]
#' @field refunded  character [optional]
#' @field notificationsCreated  character [optional]
#' @field rewarded  character [optional]
#' @field externalId  integer [optional]
#' @field advancedReporting  character [optional]
#' @field splitReward  character [optional]
#' @field joinCode  character [optional]
#' @field firstPack  \link{Pack} [optional]
#' @field allGameLevels  list(\link{GameLevel}) [optional]
#' @field allPacks  list(\link{Pack}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Mission <- R6::R6Class(
  "Mission",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `missionType` = NULL,
    `title` = NULL,
    `description` = NULL,
    `costToPlay` = NULL,
    `costToPlayType` = NULL,
    `games` = NULL,
    `audiences` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `sequenceType` = NULL,
    `authorOverride` = NULL,
    `icon` = NULL,
    `image` = NULL,
    `offers` = NULL,
    `visibility` = NULL,
    `task` = NULL,
    `points` = NULL,
    `ticketType` = NULL,
    `ticketCount` = NULL,
    `allocateTickets` = NULL,
    `billableEntity` = NULL,
    `balance` = NULL,
    `startingLimit` = NULL,
    `availableLimit` = NULL,
    `inviteCount` = NULL,
    `acceptedCount` = NULL,
    `inviteStatus` = NULL,
    `childCount` = NULL,
    `secondsBetweenLevels` = NULL,
    `secondsBetweenPacks` = NULL,
    `maximumLevelLength` = NULL,
    `enableBuyBack` = NULL,
    `activePack` = NULL,
    `minimumToPlay` = NULL,
    `fixedReward` = NULL,
    `refunded` = NULL,
    `notificationsCreated` = NULL,
    `rewarded` = NULL,
    `externalId` = NULL,
    `advancedReporting` = NULL,
    `splitReward` = NULL,
    `joinCode` = NULL,
    `firstPack` = NULL,
    `allGameLevels` = NULL,
    `allPacks` = NULL,

    #' @description
    #' Initialize a new Mission class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param missionType missionType
    #' @param title title
    #' @param description description
    #' @param costToPlay costToPlay
    #' @param costToPlayType costToPlayType
    #' @param games games
    #' @param audiences audiences
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param sequenceType sequenceType
    #' @param authorOverride authorOverride
    #' @param icon icon
    #' @param image image
    #' @param offers offers
    #' @param visibility visibility
    #' @param task task
    #' @param points points
    #' @param ticketType ticketType
    #' @param ticketCount ticketCount
    #' @param allocateTickets allocateTickets
    #' @param billableEntity billableEntity
    #' @param balance balance
    #' @param startingLimit startingLimit
    #' @param availableLimit availableLimit
    #' @param inviteCount inviteCount
    #' @param acceptedCount acceptedCount
    #' @param inviteStatus inviteStatus
    #' @param childCount childCount
    #' @param secondsBetweenLevels secondsBetweenLevels
    #' @param secondsBetweenPacks secondsBetweenPacks
    #' @param maximumLevelLength maximumLevelLength
    #' @param enableBuyBack enableBuyBack
    #' @param activePack activePack
    #' @param minimumToPlay minimumToPlay
    #' @param fixedReward fixedReward
    #' @param refunded refunded
    #' @param notificationsCreated notificationsCreated
    #' @param rewarded rewarded
    #' @param externalId externalId
    #' @param advancedReporting advancedReporting
    #' @param splitReward splitReward
    #' @param joinCode joinCode
    #' @param firstPack firstPack
    #' @param allGameLevels allGameLevels
    #' @param allPacks allPacks
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `missionType` = NULL, `title` = NULL, `description` = NULL, `costToPlay` = NULL, `costToPlayType` = NULL, `games` = NULL, `audiences` = NULL, `startDate` = NULL, `endDate` = NULL, `sequenceType` = NULL, `authorOverride` = NULL, `icon` = NULL, `image` = NULL, `offers` = NULL, `visibility` = NULL, `task` = NULL, `points` = NULL, `ticketType` = NULL, `ticketCount` = NULL, `allocateTickets` = NULL, `billableEntity` = NULL, `balance` = NULL, `startingLimit` = NULL, `availableLimit` = NULL, `inviteCount` = NULL, `acceptedCount` = NULL, `inviteStatus` = NULL, `childCount` = NULL, `secondsBetweenLevels` = NULL, `secondsBetweenPacks` = NULL, `maximumLevelLength` = NULL, `enableBuyBack` = NULL, `activePack` = NULL, `minimumToPlay` = NULL, `fixedReward` = NULL, `refunded` = NULL, `notificationsCreated` = NULL, `rewarded` = NULL, `externalId` = NULL, `advancedReporting` = NULL, `splitReward` = NULL, `joinCode` = NULL, `firstPack` = NULL, `allGameLevels` = NULL, `allPacks` = NULL, ...) {
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
      if (!is.null(`missionType`)) {
        if (!(`missionType` %in% c("PUBLIC", "SHARED", "TOURNAMENT", "POOLPLAY"))) {
          stop(paste("Error! \"", `missionType`, "\" cannot be assigned to `missionType`. Must be \"PUBLIC\", \"SHARED\", \"TOURNAMENT\", \"POOLPLAY\".", sep = ""))
        }
        if (!(is.character(`missionType`) && length(`missionType`) == 1)) {
          stop(paste("Error! Invalid data for `missionType`. Must be a string:", `missionType`))
        }
        self$`missionType` <- `missionType`
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
      if (!is.null(`games`)) {
        stopifnot(is.vector(`games`), length(`games`) != 0)
        sapply(`games`, function(x) stopifnot(R6::is.R6(x)))
        self$`games` <- `games`
      }
      if (!is.null(`audiences`)) {
        stopifnot(is.vector(`audiences`), length(`audiences`) != 0)
        sapply(`audiences`, function(x) stopifnot(R6::is.R6(x)))
        self$`audiences` <- `audiences`
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
      if (!is.null(`sequenceType`)) {
        if (!(`sequenceType` %in% c("FIRST_AVAILABLE", "ALL_AVAILABLE"))) {
          stop(paste("Error! \"", `sequenceType`, "\" cannot be assigned to `sequenceType`. Must be \"FIRST_AVAILABLE\", \"ALL_AVAILABLE\".", sep = ""))
        }
        if (!(is.character(`sequenceType`) && length(`sequenceType`) == 1)) {
          stop(paste("Error! Invalid data for `sequenceType`. Must be a string:", `sequenceType`))
        }
        self$`sequenceType` <- `sequenceType`
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
      if (!is.null(`offers`)) {
        stopifnot(is.vector(`offers`), length(`offers`) != 0)
        sapply(`offers`, function(x) stopifnot(R6::is.R6(x)))
        self$`offers` <- `offers`
      }
      if (!is.null(`visibility`)) {
        if (!(`visibility` %in% c("PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE"))) {
          stop(paste("Error! \"", `visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"LISTABLE\", \"REWARDABLE\", \"TRIGGERABLE\", \"PRIVATE\".", sep = ""))
        }
        if (!(is.character(`visibility`) && length(`visibility`) == 1)) {
          stop(paste("Error! Invalid data for `visibility`. Must be a string:", `visibility`))
        }
        self$`visibility` <- `visibility`
      }
      if (!is.null(`task`)) {
        stopifnot(R6::is.R6(`task`))
        self$`task` <- `task`
      }
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
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
      if (!is.null(`allocateTickets`)) {
        if (!(is.logical(`allocateTickets`) && length(`allocateTickets`) == 1)) {
          stop(paste("Error! Invalid data for `allocateTickets`. Must be a boolean:", `allocateTickets`))
        }
        self$`allocateTickets` <- `allocateTickets`
      }
      if (!is.null(`billableEntity`)) {
        stopifnot(R6::is.R6(`billableEntity`))
        self$`billableEntity` <- `billableEntity`
      }
      if (!is.null(`balance`)) {
        if (!(is.numeric(`balance`) && length(`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a number:", `balance`))
        }
        self$`balance` <- `balance`
      }
      if (!is.null(`startingLimit`)) {
        if (!(is.numeric(`startingLimit`) && length(`startingLimit`) == 1)) {
          stop(paste("Error! Invalid data for `startingLimit`. Must be an integer:", `startingLimit`))
        }
        self$`startingLimit` <- `startingLimit`
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
      if (!is.null(`inviteStatus`)) {
        if (!(`inviteStatus` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
          stop(paste("Error! \"", `inviteStatus`, "\" cannot be assigned to `inviteStatus`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
        }
        if (!(is.character(`inviteStatus`) && length(`inviteStatus`) == 1)) {
          stop(paste("Error! Invalid data for `inviteStatus`. Must be a string:", `inviteStatus`))
        }
        self$`inviteStatus` <- `inviteStatus`
      }
      if (!is.null(`childCount`)) {
        if (!(is.numeric(`childCount`) && length(`childCount`) == 1)) {
          stop(paste("Error! Invalid data for `childCount`. Must be an integer:", `childCount`))
        }
        self$`childCount` <- `childCount`
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
      if (!is.null(`maximumLevelLength`)) {
        if (!(is.numeric(`maximumLevelLength`) && length(`maximumLevelLength`) == 1)) {
          stop(paste("Error! Invalid data for `maximumLevelLength`. Must be an integer:", `maximumLevelLength`))
        }
        self$`maximumLevelLength` <- `maximumLevelLength`
      }
      if (!is.null(`enableBuyBack`)) {
        if (!(is.logical(`enableBuyBack`) && length(`enableBuyBack`) == 1)) {
          stop(paste("Error! Invalid data for `enableBuyBack`. Must be a boolean:", `enableBuyBack`))
        }
        self$`enableBuyBack` <- `enableBuyBack`
      }
      if (!is.null(`activePack`)) {
        stopifnot(R6::is.R6(`activePack`))
        self$`activePack` <- `activePack`
      }
      if (!is.null(`minimumToPlay`)) {
        if (!(is.numeric(`minimumToPlay`) && length(`minimumToPlay`) == 1)) {
          stop(paste("Error! Invalid data for `minimumToPlay`. Must be an integer:", `minimumToPlay`))
        }
        self$`minimumToPlay` <- `minimumToPlay`
      }
      if (!is.null(`fixedReward`)) {
        if (!(is.logical(`fixedReward`) && length(`fixedReward`) == 1)) {
          stop(paste("Error! Invalid data for `fixedReward`. Must be a boolean:", `fixedReward`))
        }
        self$`fixedReward` <- `fixedReward`
      }
      if (!is.null(`refunded`)) {
        if (!(is.logical(`refunded`) && length(`refunded`) == 1)) {
          stop(paste("Error! Invalid data for `refunded`. Must be a boolean:", `refunded`))
        }
        self$`refunded` <- `refunded`
      }
      if (!is.null(`notificationsCreated`)) {
        if (!(is.logical(`notificationsCreated`) && length(`notificationsCreated`) == 1)) {
          stop(paste("Error! Invalid data for `notificationsCreated`. Must be a boolean:", `notificationsCreated`))
        }
        self$`notificationsCreated` <- `notificationsCreated`
      }
      if (!is.null(`rewarded`)) {
        if (!(is.logical(`rewarded`) && length(`rewarded`) == 1)) {
          stop(paste("Error! Invalid data for `rewarded`. Must be a boolean:", `rewarded`))
        }
        self$`rewarded` <- `rewarded`
      }
      if (!is.null(`externalId`)) {
        if (!(is.numeric(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be an integer:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`advancedReporting`)) {
        if (!(is.logical(`advancedReporting`) && length(`advancedReporting`) == 1)) {
          stop(paste("Error! Invalid data for `advancedReporting`. Must be a boolean:", `advancedReporting`))
        }
        self$`advancedReporting` <- `advancedReporting`
      }
      if (!is.null(`splitReward`)) {
        if (!(`splitReward` %in% c("EVEN", "ALL", "FIRST", "RANDOM"))) {
          stop(paste("Error! \"", `splitReward`, "\" cannot be assigned to `splitReward`. Must be \"EVEN\", \"ALL\", \"FIRST\", \"RANDOM\".", sep = ""))
        }
        if (!(is.character(`splitReward`) && length(`splitReward`) == 1)) {
          stop(paste("Error! Invalid data for `splitReward`. Must be a string:", `splitReward`))
        }
        self$`splitReward` <- `splitReward`
      }
      if (!is.null(`joinCode`)) {
        if (!(is.character(`joinCode`) && length(`joinCode`) == 1)) {
          stop(paste("Error! Invalid data for `joinCode`. Must be a string:", `joinCode`))
        }
        self$`joinCode` <- `joinCode`
      }
      if (!is.null(`firstPack`)) {
        stopifnot(R6::is.R6(`firstPack`))
        self$`firstPack` <- `firstPack`
      }
      if (!is.null(`allGameLevels`)) {
        stopifnot(is.vector(`allGameLevels`), length(`allGameLevels`) != 0)
        sapply(`allGameLevels`, function(x) stopifnot(R6::is.R6(x)))
        self$`allGameLevels` <- `allGameLevels`
      }
      if (!is.null(`allPacks`)) {
        stopifnot(is.vector(`allPacks`), length(`allPacks`) != 0)
        sapply(`allPacks`, function(x) stopifnot(R6::is.R6(x)))
        self$`allPacks` <- `allPacks`
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
    #' @return Mission as a base R list.
    #' @examples
    #' # convert array of Mission (x) to a data frame
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
    #' Convert Mission to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MissionObject <- list()
      if (!is.null(self$`id`)) {
        MissionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        MissionObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        MissionObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        MissionObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`missionType`)) {
        MissionObject[["missionType"]] <-
          self$`missionType`
      }
      if (!is.null(self$`title`)) {
        MissionObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        MissionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`costToPlay`)) {
        MissionObject[["costToPlay"]] <-
          self$`costToPlay`
      }
      if (!is.null(self$`costToPlayType`)) {
        MissionObject[["costToPlayType"]] <-
          self$`costToPlayType`
      }
      if (!is.null(self$`games`)) {
        MissionObject[["games"]] <-
          self$extractSimpleType(self$`games`)
      }
      if (!is.null(self$`audiences`)) {
        MissionObject[["audiences"]] <-
          self$extractSimpleType(self$`audiences`)
      }
      if (!is.null(self$`startDate`)) {
        MissionObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        MissionObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`sequenceType`)) {
        MissionObject[["sequenceType"]] <-
          self$`sequenceType`
      }
      if (!is.null(self$`authorOverride`)) {
        MissionObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`icon`)) {
        MissionObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`image`)) {
        MissionObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`offers`)) {
        MissionObject[["offers"]] <-
          self$extractSimpleType(self$`offers`)
      }
      if (!is.null(self$`visibility`)) {
        MissionObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`task`)) {
        MissionObject[["task"]] <-
          self$extractSimpleType(self$`task`)
      }
      if (!is.null(self$`points`)) {
        MissionObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`ticketType`)) {
        MissionObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`ticketCount`)) {
        MissionObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`allocateTickets`)) {
        MissionObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`billableEntity`)) {
        MissionObject[["billableEntity"]] <-
          self$extractSimpleType(self$`billableEntity`)
      }
      if (!is.null(self$`balance`)) {
        MissionObject[["balance"]] <-
          self$`balance`
      }
      if (!is.null(self$`startingLimit`)) {
        MissionObject[["startingLimit"]] <-
          self$`startingLimit`
      }
      if (!is.null(self$`availableLimit`)) {
        MissionObject[["availableLimit"]] <-
          self$`availableLimit`
      }
      if (!is.null(self$`inviteCount`)) {
        MissionObject[["inviteCount"]] <-
          self$`inviteCount`
      }
      if (!is.null(self$`acceptedCount`)) {
        MissionObject[["acceptedCount"]] <-
          self$`acceptedCount`
      }
      if (!is.null(self$`inviteStatus`)) {
        MissionObject[["inviteStatus"]] <-
          self$`inviteStatus`
      }
      if (!is.null(self$`childCount`)) {
        MissionObject[["childCount"]] <-
          self$`childCount`
      }
      if (!is.null(self$`secondsBetweenLevels`)) {
        MissionObject[["secondsBetweenLevels"]] <-
          self$`secondsBetweenLevels`
      }
      if (!is.null(self$`secondsBetweenPacks`)) {
        MissionObject[["secondsBetweenPacks"]] <-
          self$`secondsBetweenPacks`
      }
      if (!is.null(self$`maximumLevelLength`)) {
        MissionObject[["maximumLevelLength"]] <-
          self$`maximumLevelLength`
      }
      if (!is.null(self$`enableBuyBack`)) {
        MissionObject[["enableBuyBack"]] <-
          self$`enableBuyBack`
      }
      if (!is.null(self$`activePack`)) {
        MissionObject[["activePack"]] <-
          self$extractSimpleType(self$`activePack`)
      }
      if (!is.null(self$`minimumToPlay`)) {
        MissionObject[["minimumToPlay"]] <-
          self$`minimumToPlay`
      }
      if (!is.null(self$`fixedReward`)) {
        MissionObject[["fixedReward"]] <-
          self$`fixedReward`
      }
      if (!is.null(self$`refunded`)) {
        MissionObject[["refunded"]] <-
          self$`refunded`
      }
      if (!is.null(self$`notificationsCreated`)) {
        MissionObject[["notificationsCreated"]] <-
          self$`notificationsCreated`
      }
      if (!is.null(self$`rewarded`)) {
        MissionObject[["rewarded"]] <-
          self$`rewarded`
      }
      if (!is.null(self$`externalId`)) {
        MissionObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`advancedReporting`)) {
        MissionObject[["advancedReporting"]] <-
          self$`advancedReporting`
      }
      if (!is.null(self$`splitReward`)) {
        MissionObject[["splitReward"]] <-
          self$`splitReward`
      }
      if (!is.null(self$`joinCode`)) {
        MissionObject[["joinCode"]] <-
          self$`joinCode`
      }
      if (!is.null(self$`firstPack`)) {
        MissionObject[["firstPack"]] <-
          self$extractSimpleType(self$`firstPack`)
      }
      if (!is.null(self$`allGameLevels`)) {
        MissionObject[["allGameLevels"]] <-
          self$extractSimpleType(self$`allGameLevels`)
      }
      if (!is.null(self$`allPacks`)) {
        MissionObject[["allPacks"]] <-
          self$extractSimpleType(self$`allPacks`)
      }
      return(MissionObject)
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
    #' Deserialize JSON string into an instance of Mission
    #'
    #' @param input_json the JSON input
    #' @return the instance of Mission
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
      if (!is.null(this_object$`missionType`)) {
        if (!is.null(this_object$`missionType`) && !(this_object$`missionType` %in% c("PUBLIC", "SHARED", "TOURNAMENT", "POOLPLAY"))) {
          stop(paste("Error! \"", this_object$`missionType`, "\" cannot be assigned to `missionType`. Must be \"PUBLIC\", \"SHARED\", \"TOURNAMENT\", \"POOLPLAY\".", sep = ""))
        }
        self$`missionType` <- this_object$`missionType`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`costToPlay`)) {
        self$`costToPlay` <- this_object$`costToPlay`
      }
      if (!is.null(this_object$`costToPlayType`)) {
        self$`costToPlayType` <- this_object$`costToPlayType`
      }
      if (!is.null(this_object$`games`)) {
        self$`games` <- ApiClient$new()$deserializeObj(this_object$`games`, "array[Game]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`audiences`)) {
        self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[Audience]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`sequenceType`)) {
        if (!is.null(this_object$`sequenceType`) && !(this_object$`sequenceType` %in% c("FIRST_AVAILABLE", "ALL_AVAILABLE"))) {
          stop(paste("Error! \"", this_object$`sequenceType`, "\" cannot be assigned to `sequenceType`. Must be \"FIRST_AVAILABLE\", \"ALL_AVAILABLE\".", sep = ""))
        }
        self$`sequenceType` <- this_object$`sequenceType`
      }
      if (!is.null(this_object$`authorOverride`)) {
        self$`authorOverride` <- this_object$`authorOverride`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- Asset$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- Asset$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`offers`)) {
        self$`offers` <- ApiClient$new()$deserializeObj(this_object$`offers`, "array[Offer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`visibility`)) {
        if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE"))) {
          stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"LISTABLE\", \"REWARDABLE\", \"TRIGGERABLE\", \"PRIVATE\".", sep = ""))
        }
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`task`)) {
        `task_object` <- MissionTask$new()
        `task_object`$fromJSON(jsonlite::toJSON(this_object$`task`, auto_unbox = TRUE, digits = NA))
        self$`task` <- `task_object`
      }
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      if (!is.null(this_object$`ticketType`)) {
        self$`ticketType` <- this_object$`ticketType`
      }
      if (!is.null(this_object$`ticketCount`)) {
        self$`ticketCount` <- this_object$`ticketCount`
      }
      if (!is.null(this_object$`allocateTickets`)) {
        self$`allocateTickets` <- this_object$`allocateTickets`
      }
      if (!is.null(this_object$`billableEntity`)) {
        `billableentity_object` <- BillableEntity$new()
        `billableentity_object`$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
        self$`billableEntity` <- `billableentity_object`
      }
      if (!is.null(this_object$`balance`)) {
        self$`balance` <- this_object$`balance`
      }
      if (!is.null(this_object$`startingLimit`)) {
        self$`startingLimit` <- this_object$`startingLimit`
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
      if (!is.null(this_object$`inviteStatus`)) {
        if (!is.null(this_object$`inviteStatus`) && !(this_object$`inviteStatus` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
          stop(paste("Error! \"", this_object$`inviteStatus`, "\" cannot be assigned to `inviteStatus`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
        }
        self$`inviteStatus` <- this_object$`inviteStatus`
      }
      if (!is.null(this_object$`childCount`)) {
        self$`childCount` <- this_object$`childCount`
      }
      if (!is.null(this_object$`secondsBetweenLevels`)) {
        self$`secondsBetweenLevels` <- this_object$`secondsBetweenLevels`
      }
      if (!is.null(this_object$`secondsBetweenPacks`)) {
        self$`secondsBetweenPacks` <- this_object$`secondsBetweenPacks`
      }
      if (!is.null(this_object$`maximumLevelLength`)) {
        self$`maximumLevelLength` <- this_object$`maximumLevelLength`
      }
      if (!is.null(this_object$`enableBuyBack`)) {
        self$`enableBuyBack` <- this_object$`enableBuyBack`
      }
      if (!is.null(this_object$`activePack`)) {
        `activepack_object` <- Pack$new()
        `activepack_object`$fromJSON(jsonlite::toJSON(this_object$`activePack`, auto_unbox = TRUE, digits = NA))
        self$`activePack` <- `activepack_object`
      }
      if (!is.null(this_object$`minimumToPlay`)) {
        self$`minimumToPlay` <- this_object$`minimumToPlay`
      }
      if (!is.null(this_object$`fixedReward`)) {
        self$`fixedReward` <- this_object$`fixedReward`
      }
      if (!is.null(this_object$`refunded`)) {
        self$`refunded` <- this_object$`refunded`
      }
      if (!is.null(this_object$`notificationsCreated`)) {
        self$`notificationsCreated` <- this_object$`notificationsCreated`
      }
      if (!is.null(this_object$`rewarded`)) {
        self$`rewarded` <- this_object$`rewarded`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`advancedReporting`)) {
        self$`advancedReporting` <- this_object$`advancedReporting`
      }
      if (!is.null(this_object$`splitReward`)) {
        if (!is.null(this_object$`splitReward`) && !(this_object$`splitReward` %in% c("EVEN", "ALL", "FIRST", "RANDOM"))) {
          stop(paste("Error! \"", this_object$`splitReward`, "\" cannot be assigned to `splitReward`. Must be \"EVEN\", \"ALL\", \"FIRST\", \"RANDOM\".", sep = ""))
        }
        self$`splitReward` <- this_object$`splitReward`
      }
      if (!is.null(this_object$`joinCode`)) {
        self$`joinCode` <- this_object$`joinCode`
      }
      if (!is.null(this_object$`firstPack`)) {
        `firstpack_object` <- Pack$new()
        `firstpack_object`$fromJSON(jsonlite::toJSON(this_object$`firstPack`, auto_unbox = TRUE, digits = NA))
        self$`firstPack` <- `firstpack_object`
      }
      if (!is.null(this_object$`allGameLevels`)) {
        self$`allGameLevels` <- ApiClient$new()$deserializeObj(this_object$`allGameLevels`, "array[GameLevel]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`allPacks`)) {
        self$`allPacks` <- ApiClient$new()$deserializeObj(this_object$`allPacks`, "array[Pack]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Mission in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Mission
    #'
    #' @param input_json the JSON input
    #' @return the instance of Mission
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`missionType`) && !(this_object$`missionType` %in% c("PUBLIC", "SHARED", "TOURNAMENT", "POOLPLAY"))) {
        stop(paste("Error! \"", this_object$`missionType`, "\" cannot be assigned to `missionType`. Must be \"PUBLIC\", \"SHARED\", \"TOURNAMENT\", \"POOLPLAY\".", sep = ""))
      }
      self$`missionType` <- this_object$`missionType`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`costToPlay` <- this_object$`costToPlay`
      self$`costToPlayType` <- this_object$`costToPlayType`
      self$`games` <- ApiClient$new()$deserializeObj(this_object$`games`, "array[Game]", loadNamespace("openapi"))
      self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[Audience]", loadNamespace("openapi"))
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      if (!is.null(this_object$`sequenceType`) && !(this_object$`sequenceType` %in% c("FIRST_AVAILABLE", "ALL_AVAILABLE"))) {
        stop(paste("Error! \"", this_object$`sequenceType`, "\" cannot be assigned to `sequenceType`. Must be \"FIRST_AVAILABLE\", \"ALL_AVAILABLE\".", sep = ""))
      }
      self$`sequenceType` <- this_object$`sequenceType`
      self$`authorOverride` <- this_object$`authorOverride`
      self$`icon` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`image` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`offers` <- ApiClient$new()$deserializeObj(this_object$`offers`, "array[Offer]", loadNamespace("openapi"))
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"LISTABLE\", \"REWARDABLE\", \"TRIGGERABLE\", \"PRIVATE\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`task` <- MissionTask$new()$fromJSON(jsonlite::toJSON(this_object$`task`, auto_unbox = TRUE, digits = NA))
      self$`points` <- this_object$`points`
      self$`ticketType` <- this_object$`ticketType`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`billableEntity` <- BillableEntity$new()$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
      self$`balance` <- this_object$`balance`
      self$`startingLimit` <- this_object$`startingLimit`
      self$`availableLimit` <- this_object$`availableLimit`
      self$`inviteCount` <- this_object$`inviteCount`
      self$`acceptedCount` <- this_object$`acceptedCount`
      if (!is.null(this_object$`inviteStatus`) && !(this_object$`inviteStatus` %in% c("AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED"))) {
        stop(paste("Error! \"", this_object$`inviteStatus`, "\" cannot be assigned to `inviteStatus`. Must be \"AVAILABLE\", \"PENDING\", \"UPDATED\", \"ACCEPTED\", \"ACTIVE\", \"BUY_BACK\", \"FAILED\", \"QUIT\", \"COMPLETED\", \"PENDING_REVIEW\", \"REJECTED\".", sep = ""))
      }
      self$`inviteStatus` <- this_object$`inviteStatus`
      self$`childCount` <- this_object$`childCount`
      self$`secondsBetweenLevels` <- this_object$`secondsBetweenLevels`
      self$`secondsBetweenPacks` <- this_object$`secondsBetweenPacks`
      self$`maximumLevelLength` <- this_object$`maximumLevelLength`
      self$`enableBuyBack` <- this_object$`enableBuyBack`
      self$`activePack` <- Pack$new()$fromJSON(jsonlite::toJSON(this_object$`activePack`, auto_unbox = TRUE, digits = NA))
      self$`minimumToPlay` <- this_object$`minimumToPlay`
      self$`fixedReward` <- this_object$`fixedReward`
      self$`refunded` <- this_object$`refunded`
      self$`notificationsCreated` <- this_object$`notificationsCreated`
      self$`rewarded` <- this_object$`rewarded`
      self$`externalId` <- this_object$`externalId`
      self$`advancedReporting` <- this_object$`advancedReporting`
      if (!is.null(this_object$`splitReward`) && !(this_object$`splitReward` %in% c("EVEN", "ALL", "FIRST", "RANDOM"))) {
        stop(paste("Error! \"", this_object$`splitReward`, "\" cannot be assigned to `splitReward`. Must be \"EVEN\", \"ALL\", \"FIRST\", \"RANDOM\".", sep = ""))
      }
      self$`splitReward` <- this_object$`splitReward`
      self$`joinCode` <- this_object$`joinCode`
      self$`firstPack` <- Pack$new()$fromJSON(jsonlite::toJSON(this_object$`firstPack`, auto_unbox = TRUE, digits = NA))
      self$`allGameLevels` <- ApiClient$new()$deserializeObj(this_object$`allGameLevels`, "array[GameLevel]", loadNamespace("openapi"))
      self$`allPacks` <- ApiClient$new()$deserializeObj(this_object$`allPacks`, "array[Pack]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Mission and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Mission
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
# Mission$unlock()
#
## Below is an example to define the print function
# Mission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Mission$lock()

