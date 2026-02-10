#' Create a new GameLevelResponse
#'
#' @description
#' GameLevelResponse Class
#'
#' @docType class
#' @title GameLevelResponse
#' @description GameLevelResponse Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field gameLevelId  integer [optional]
#' @field gameType  character [optional]
#' @field active  character [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field difficulty  character [optional]
#' @field appVersion  character [optional]
#' @field likesCount  integer [optional]
#' @field dislikesCount  integer [optional]
#' @field commentsCount  integer [optional]
#' @field downloadCount  integer [optional]
#' @field comments  list(\link{NoteResponse}) [optional]
#' @field locked  character [optional]
#' @field completed  character [optional]
#' @field ticketsEarned  integer [optional]
#' @field gameObjects  \link{GameObjectListResponse} [optional]
#' @field hasLiked  character [optional]
#' @field image  \link{AssetShortResponse} [optional]
#' @field gameData  character [optional]
#' @field gameDataSuffix  character [optional]
#' @field scores  \link{ScoreListResponse} [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field userPermissionsList  \link{UserPermissionsListResponse} [optional]
#' @field results  list(\link{NameStringValueResponse}) [optional]
#' @field randomizeGameObjects  character [optional]
#' @field tickets  \link{TicketListResponse} [optional]
#' @field assignMission  character [optional]
#' @field icon  \link{AssetShortResponse} [optional]
#' @field authorOverride  character [optional]
#' @field updatedDate  integer [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field splashTitle  character [optional]
#' @field splashMessage  character [optional]
#' @field hasFlagged  character [optional]
#' @field allocateTickets  character [optional]
#' @field ticketType  character [optional]
#' @field ticketCount  integer [optional]
#' @field points  integer [optional]
#' @field winnerMessage  character [optional]
#' @field tutorial  \link{TutorialResponse} [optional]
#' @field appKey  character [optional]
#' @field appName  character [optional]
#' @field scoringType  character [optional]
#' @field tutorialTitle  character [optional]
#' @field tutorialMessage  character [optional]
#' @field tutorialAlignment  character [optional]
#' @field tutorialImage  \link{AssetShortResponse} [optional]
#' @field nextLevelId  integer [optional]
#' @field offer  \link{OfferShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GameLevelResponse <- R6::R6Class(
  "GameLevelResponse",
  public = list(
    `action` = NULL,
    `gameLevelId` = NULL,
    `gameType` = NULL,
    `active` = NULL,
    `name` = NULL,
    `description` = NULL,
    `difficulty` = NULL,
    `appVersion` = NULL,
    `likesCount` = NULL,
    `dislikesCount` = NULL,
    `commentsCount` = NULL,
    `downloadCount` = NULL,
    `comments` = NULL,
    `locked` = NULL,
    `completed` = NULL,
    `ticketsEarned` = NULL,
    `gameObjects` = NULL,
    `hasLiked` = NULL,
    `image` = NULL,
    `gameData` = NULL,
    `gameDataSuffix` = NULL,
    `scores` = NULL,
    `owner` = NULL,
    `userPermissionsList` = NULL,
    `results` = NULL,
    `randomizeGameObjects` = NULL,
    `tickets` = NULL,
    `assignMission` = NULL,
    `icon` = NULL,
    `authorOverride` = NULL,
    `updatedDate` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `splashTitle` = NULL,
    `splashMessage` = NULL,
    `hasFlagged` = NULL,
    `allocateTickets` = NULL,
    `ticketType` = NULL,
    `ticketCount` = NULL,
    `points` = NULL,
    `winnerMessage` = NULL,
    `tutorial` = NULL,
    `appKey` = NULL,
    `appName` = NULL,
    `scoringType` = NULL,
    `tutorialTitle` = NULL,
    `tutorialMessage` = NULL,
    `tutorialAlignment` = NULL,
    `tutorialImage` = NULL,
    `nextLevelId` = NULL,
    `offer` = NULL,

    #' @description
    #' Initialize a new GameLevelResponse class.
    #'
    #' @param action action
    #' @param gameLevelId gameLevelId
    #' @param gameType gameType
    #' @param active active
    #' @param name name
    #' @param description description
    #' @param difficulty difficulty
    #' @param appVersion appVersion
    #' @param likesCount likesCount
    #' @param dislikesCount dislikesCount
    #' @param commentsCount commentsCount
    #' @param downloadCount downloadCount
    #' @param comments comments
    #' @param locked locked
    #' @param completed completed
    #' @param ticketsEarned ticketsEarned
    #' @param gameObjects gameObjects
    #' @param hasLiked hasLiked
    #' @param image image
    #' @param gameData gameData
    #' @param gameDataSuffix gameDataSuffix
    #' @param scores scores
    #' @param owner owner
    #' @param userPermissionsList userPermissionsList
    #' @param results results
    #' @param randomizeGameObjects randomizeGameObjects
    #' @param tickets tickets
    #' @param assignMission assignMission
    #' @param icon icon
    #' @param authorOverride authorOverride
    #' @param updatedDate updatedDate
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param splashTitle splashTitle
    #' @param splashMessage splashMessage
    #' @param hasFlagged hasFlagged
    #' @param allocateTickets allocateTickets
    #' @param ticketType ticketType
    #' @param ticketCount ticketCount
    #' @param points points
    #' @param winnerMessage winnerMessage
    #' @param tutorial tutorial
    #' @param appKey appKey
    #' @param appName appName
    #' @param scoringType scoringType
    #' @param tutorialTitle tutorialTitle
    #' @param tutorialMessage tutorialMessage
    #' @param tutorialAlignment tutorialAlignment
    #' @param tutorialImage tutorialImage
    #' @param nextLevelId nextLevelId
    #' @param offer offer
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `gameLevelId` = NULL, `gameType` = NULL, `active` = NULL, `name` = NULL, `description` = NULL, `difficulty` = NULL, `appVersion` = NULL, `likesCount` = NULL, `dislikesCount` = NULL, `commentsCount` = NULL, `downloadCount` = NULL, `comments` = NULL, `locked` = NULL, `completed` = NULL, `ticketsEarned` = NULL, `gameObjects` = NULL, `hasLiked` = NULL, `image` = NULL, `gameData` = NULL, `gameDataSuffix` = NULL, `scores` = NULL, `owner` = NULL, `userPermissionsList` = NULL, `results` = NULL, `randomizeGameObjects` = NULL, `tickets` = NULL, `assignMission` = NULL, `icon` = NULL, `authorOverride` = NULL, `updatedDate` = NULL, `startDate` = NULL, `endDate` = NULL, `splashTitle` = NULL, `splashMessage` = NULL, `hasFlagged` = NULL, `allocateTickets` = NULL, `ticketType` = NULL, `ticketCount` = NULL, `points` = NULL, `winnerMessage` = NULL, `tutorial` = NULL, `appKey` = NULL, `appName` = NULL, `scoringType` = NULL, `tutorialTitle` = NULL, `tutorialMessage` = NULL, `tutorialAlignment` = NULL, `tutorialImage` = NULL, `nextLevelId` = NULL, `offer` = NULL, ...) {
      if (!is.null(`action`)) {
        if (!(`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`gameLevelId`)) {
        if (!(is.numeric(`gameLevelId`) && length(`gameLevelId`) == 1)) {
          stop(paste("Error! Invalid data for `gameLevelId`. Must be an integer:", `gameLevelId`))
        }
        self$`gameLevelId` <- `gameLevelId`
      }
      if (!is.null(`gameType`)) {
        if (!(is.character(`gameType`) && length(`gameType`) == 1)) {
          stop(paste("Error! Invalid data for `gameType`. Must be a string:", `gameType`))
        }
        self$`gameType` <- `gameType`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
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
      if (!is.null(`difficulty`)) {
        if (!(is.character(`difficulty`) && length(`difficulty`) == 1)) {
          stop(paste("Error! Invalid data for `difficulty`. Must be a string:", `difficulty`))
        }
        self$`difficulty` <- `difficulty`
      }
      if (!is.null(`appVersion`)) {
        if (!(is.character(`appVersion`) && length(`appVersion`) == 1)) {
          stop(paste("Error! Invalid data for `appVersion`. Must be a string:", `appVersion`))
        }
        self$`appVersion` <- `appVersion`
      }
      if (!is.null(`likesCount`)) {
        if (!(is.numeric(`likesCount`) && length(`likesCount`) == 1)) {
          stop(paste("Error! Invalid data for `likesCount`. Must be an integer:", `likesCount`))
        }
        self$`likesCount` <- `likesCount`
      }
      if (!is.null(`dislikesCount`)) {
        if (!(is.numeric(`dislikesCount`) && length(`dislikesCount`) == 1)) {
          stop(paste("Error! Invalid data for `dislikesCount`. Must be an integer:", `dislikesCount`))
        }
        self$`dislikesCount` <- `dislikesCount`
      }
      if (!is.null(`commentsCount`)) {
        if (!(is.numeric(`commentsCount`) && length(`commentsCount`) == 1)) {
          stop(paste("Error! Invalid data for `commentsCount`. Must be an integer:", `commentsCount`))
        }
        self$`commentsCount` <- `commentsCount`
      }
      if (!is.null(`downloadCount`)) {
        if (!(is.numeric(`downloadCount`) && length(`downloadCount`) == 1)) {
          stop(paste("Error! Invalid data for `downloadCount`. Must be an integer:", `downloadCount`))
        }
        self$`downloadCount` <- `downloadCount`
      }
      if (!is.null(`comments`)) {
        stopifnot(is.vector(`comments`), length(`comments`) != 0)
        sapply(`comments`, function(x) stopifnot(R6::is.R6(x)))
        self$`comments` <- `comments`
      }
      if (!is.null(`locked`)) {
        if (!(is.logical(`locked`) && length(`locked`) == 1)) {
          stop(paste("Error! Invalid data for `locked`. Must be a boolean:", `locked`))
        }
        self$`locked` <- `locked`
      }
      if (!is.null(`completed`)) {
        if (!(is.logical(`completed`) && length(`completed`) == 1)) {
          stop(paste("Error! Invalid data for `completed`. Must be a boolean:", `completed`))
        }
        self$`completed` <- `completed`
      }
      if (!is.null(`ticketsEarned`)) {
        if (!(is.numeric(`ticketsEarned`) && length(`ticketsEarned`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsEarned`. Must be an integer:", `ticketsEarned`))
        }
        self$`ticketsEarned` <- `ticketsEarned`
      }
      if (!is.null(`gameObjects`)) {
        stopifnot(R6::is.R6(`gameObjects`))
        self$`gameObjects` <- `gameObjects`
      }
      if (!is.null(`hasLiked`)) {
        if (!(is.logical(`hasLiked`) && length(`hasLiked`) == 1)) {
          stop(paste("Error! Invalid data for `hasLiked`. Must be a boolean:", `hasLiked`))
        }
        self$`hasLiked` <- `hasLiked`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`gameData`)) {
        if (!(is.character(`gameData`) && length(`gameData`) == 1)) {
          stop(paste("Error! Invalid data for `gameData`. Must be a string:", `gameData`))
        }
        self$`gameData` <- `gameData`
      }
      if (!is.null(`gameDataSuffix`)) {
        if (!(is.character(`gameDataSuffix`) && length(`gameDataSuffix`) == 1)) {
          stop(paste("Error! Invalid data for `gameDataSuffix`. Must be a string:", `gameDataSuffix`))
        }
        self$`gameDataSuffix` <- `gameDataSuffix`
      }
      if (!is.null(`scores`)) {
        stopifnot(R6::is.R6(`scores`))
        self$`scores` <- `scores`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
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
      if (!is.null(`randomizeGameObjects`)) {
        if (!(is.logical(`randomizeGameObjects`) && length(`randomizeGameObjects`) == 1)) {
          stop(paste("Error! Invalid data for `randomizeGameObjects`. Must be a boolean:", `randomizeGameObjects`))
        }
        self$`randomizeGameObjects` <- `randomizeGameObjects`
      }
      if (!is.null(`tickets`)) {
        stopifnot(R6::is.R6(`tickets`))
        self$`tickets` <- `tickets`
      }
      if (!is.null(`assignMission`)) {
        if (!(is.logical(`assignMission`) && length(`assignMission`) == 1)) {
          stop(paste("Error! Invalid data for `assignMission`. Must be a boolean:", `assignMission`))
        }
        self$`assignMission` <- `assignMission`
      }
      if (!is.null(`icon`)) {
        stopifnot(R6::is.R6(`icon`))
        self$`icon` <- `icon`
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
      if (!is.null(`splashTitle`)) {
        if (!(is.character(`splashTitle`) && length(`splashTitle`) == 1)) {
          stop(paste("Error! Invalid data for `splashTitle`. Must be a string:", `splashTitle`))
        }
        self$`splashTitle` <- `splashTitle`
      }
      if (!is.null(`splashMessage`)) {
        if (!(is.character(`splashMessage`) && length(`splashMessage`) == 1)) {
          stop(paste("Error! Invalid data for `splashMessage`. Must be a string:", `splashMessage`))
        }
        self$`splashMessage` <- `splashMessage`
      }
      if (!is.null(`hasFlagged`)) {
        if (!(is.logical(`hasFlagged`) && length(`hasFlagged`) == 1)) {
          stop(paste("Error! Invalid data for `hasFlagged`. Must be a boolean:", `hasFlagged`))
        }
        self$`hasFlagged` <- `hasFlagged`
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
      if (!is.null(`winnerMessage`)) {
        if (!(is.character(`winnerMessage`) && length(`winnerMessage`) == 1)) {
          stop(paste("Error! Invalid data for `winnerMessage`. Must be a string:", `winnerMessage`))
        }
        self$`winnerMessage` <- `winnerMessage`
      }
      if (!is.null(`tutorial`)) {
        stopifnot(R6::is.R6(`tutorial`))
        self$`tutorial` <- `tutorial`
      }
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`appName`)) {
        if (!(is.character(`appName`) && length(`appName`) == 1)) {
          stop(paste("Error! Invalid data for `appName`. Must be a string:", `appName`))
        }
        self$`appName` <- `appName`
      }
      if (!is.null(`scoringType`)) {
        if (!(`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
          stop(paste("Error! \"", `scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
        }
        if (!(is.character(`scoringType`) && length(`scoringType`) == 1)) {
          stop(paste("Error! Invalid data for `scoringType`. Must be a string:", `scoringType`))
        }
        self$`scoringType` <- `scoringType`
      }
      if (!is.null(`tutorialTitle`)) {
        if (!(is.character(`tutorialTitle`) && length(`tutorialTitle`) == 1)) {
          stop(paste("Error! Invalid data for `tutorialTitle`. Must be a string:", `tutorialTitle`))
        }
        self$`tutorialTitle` <- `tutorialTitle`
      }
      if (!is.null(`tutorialMessage`)) {
        if (!(is.character(`tutorialMessage`) && length(`tutorialMessage`) == 1)) {
          stop(paste("Error! Invalid data for `tutorialMessage`. Must be a string:", `tutorialMessage`))
        }
        self$`tutorialMessage` <- `tutorialMessage`
      }
      if (!is.null(`tutorialAlignment`)) {
        if (!(is.character(`tutorialAlignment`) && length(`tutorialAlignment`) == 1)) {
          stop(paste("Error! Invalid data for `tutorialAlignment`. Must be a string:", `tutorialAlignment`))
        }
        self$`tutorialAlignment` <- `tutorialAlignment`
      }
      if (!is.null(`tutorialImage`)) {
        stopifnot(R6::is.R6(`tutorialImage`))
        self$`tutorialImage` <- `tutorialImage`
      }
      if (!is.null(`nextLevelId`)) {
        if (!(is.numeric(`nextLevelId`) && length(`nextLevelId`) == 1)) {
          stop(paste("Error! Invalid data for `nextLevelId`. Must be an integer:", `nextLevelId`))
        }
        self$`nextLevelId` <- `nextLevelId`
      }
      if (!is.null(`offer`)) {
        stopifnot(R6::is.R6(`offer`))
        self$`offer` <- `offer`
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
    #' @return GameLevelResponse as a base R list.
    #' @examples
    #' # convert array of GameLevelResponse (x) to a data frame
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
    #' Convert GameLevelResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GameLevelResponseObject <- list()
      if (!is.null(self$`action`)) {
        GameLevelResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`gameLevelId`)) {
        GameLevelResponseObject[["gameLevelId"]] <-
          self$`gameLevelId`
      }
      if (!is.null(self$`gameType`)) {
        GameLevelResponseObject[["gameType"]] <-
          self$`gameType`
      }
      if (!is.null(self$`active`)) {
        GameLevelResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`name`)) {
        GameLevelResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        GameLevelResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`difficulty`)) {
        GameLevelResponseObject[["difficulty"]] <-
          self$`difficulty`
      }
      if (!is.null(self$`appVersion`)) {
        GameLevelResponseObject[["appVersion"]] <-
          self$`appVersion`
      }
      if (!is.null(self$`likesCount`)) {
        GameLevelResponseObject[["likesCount"]] <-
          self$`likesCount`
      }
      if (!is.null(self$`dislikesCount`)) {
        GameLevelResponseObject[["dislikesCount"]] <-
          self$`dislikesCount`
      }
      if (!is.null(self$`commentsCount`)) {
        GameLevelResponseObject[["commentsCount"]] <-
          self$`commentsCount`
      }
      if (!is.null(self$`downloadCount`)) {
        GameLevelResponseObject[["downloadCount"]] <-
          self$`downloadCount`
      }
      if (!is.null(self$`comments`)) {
        GameLevelResponseObject[["comments"]] <-
          self$extractSimpleType(self$`comments`)
      }
      if (!is.null(self$`locked`)) {
        GameLevelResponseObject[["locked"]] <-
          self$`locked`
      }
      if (!is.null(self$`completed`)) {
        GameLevelResponseObject[["completed"]] <-
          self$`completed`
      }
      if (!is.null(self$`ticketsEarned`)) {
        GameLevelResponseObject[["ticketsEarned"]] <-
          self$`ticketsEarned`
      }
      if (!is.null(self$`gameObjects`)) {
        GameLevelResponseObject[["gameObjects"]] <-
          self$extractSimpleType(self$`gameObjects`)
      }
      if (!is.null(self$`hasLiked`)) {
        GameLevelResponseObject[["hasLiked"]] <-
          self$`hasLiked`
      }
      if (!is.null(self$`image`)) {
        GameLevelResponseObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`gameData`)) {
        GameLevelResponseObject[["gameData"]] <-
          self$`gameData`
      }
      if (!is.null(self$`gameDataSuffix`)) {
        GameLevelResponseObject[["gameDataSuffix"]] <-
          self$`gameDataSuffix`
      }
      if (!is.null(self$`scores`)) {
        GameLevelResponseObject[["scores"]] <-
          self$extractSimpleType(self$`scores`)
      }
      if (!is.null(self$`owner`)) {
        GameLevelResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`userPermissionsList`)) {
        GameLevelResponseObject[["userPermissionsList"]] <-
          self$extractSimpleType(self$`userPermissionsList`)
      }
      if (!is.null(self$`results`)) {
        GameLevelResponseObject[["results"]] <-
          self$extractSimpleType(self$`results`)
      }
      if (!is.null(self$`randomizeGameObjects`)) {
        GameLevelResponseObject[["randomizeGameObjects"]] <-
          self$`randomizeGameObjects`
      }
      if (!is.null(self$`tickets`)) {
        GameLevelResponseObject[["tickets"]] <-
          self$extractSimpleType(self$`tickets`)
      }
      if (!is.null(self$`assignMission`)) {
        GameLevelResponseObject[["assignMission"]] <-
          self$`assignMission`
      }
      if (!is.null(self$`icon`)) {
        GameLevelResponseObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`authorOverride`)) {
        GameLevelResponseObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`updatedDate`)) {
        GameLevelResponseObject[["updatedDate"]] <-
          self$`updatedDate`
      }
      if (!is.null(self$`startDate`)) {
        GameLevelResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        GameLevelResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`splashTitle`)) {
        GameLevelResponseObject[["splashTitle"]] <-
          self$`splashTitle`
      }
      if (!is.null(self$`splashMessage`)) {
        GameLevelResponseObject[["splashMessage"]] <-
          self$`splashMessage`
      }
      if (!is.null(self$`hasFlagged`)) {
        GameLevelResponseObject[["hasFlagged"]] <-
          self$`hasFlagged`
      }
      if (!is.null(self$`allocateTickets`)) {
        GameLevelResponseObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`ticketType`)) {
        GameLevelResponseObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`ticketCount`)) {
        GameLevelResponseObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`points`)) {
        GameLevelResponseObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`winnerMessage`)) {
        GameLevelResponseObject[["winnerMessage"]] <-
          self$`winnerMessage`
      }
      if (!is.null(self$`tutorial`)) {
        GameLevelResponseObject[["tutorial"]] <-
          self$extractSimpleType(self$`tutorial`)
      }
      if (!is.null(self$`appKey`)) {
        GameLevelResponseObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`appName`)) {
        GameLevelResponseObject[["appName"]] <-
          self$`appName`
      }
      if (!is.null(self$`scoringType`)) {
        GameLevelResponseObject[["scoringType"]] <-
          self$`scoringType`
      }
      if (!is.null(self$`tutorialTitle`)) {
        GameLevelResponseObject[["tutorialTitle"]] <-
          self$`tutorialTitle`
      }
      if (!is.null(self$`tutorialMessage`)) {
        GameLevelResponseObject[["tutorialMessage"]] <-
          self$`tutorialMessage`
      }
      if (!is.null(self$`tutorialAlignment`)) {
        GameLevelResponseObject[["tutorialAlignment"]] <-
          self$`tutorialAlignment`
      }
      if (!is.null(self$`tutorialImage`)) {
        GameLevelResponseObject[["tutorialImage"]] <-
          self$extractSimpleType(self$`tutorialImage`)
      }
      if (!is.null(self$`nextLevelId`)) {
        GameLevelResponseObject[["nextLevelId"]] <-
          self$`nextLevelId`
      }
      if (!is.null(self$`offer`)) {
        GameLevelResponseObject[["offer"]] <-
          self$extractSimpleType(self$`offer`)
      }
      return(GameLevelResponseObject)
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
    #' Deserialize JSON string into an instance of GameLevelResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GameLevelResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`gameLevelId`)) {
        self$`gameLevelId` <- this_object$`gameLevelId`
      }
      if (!is.null(this_object$`gameType`)) {
        self$`gameType` <- this_object$`gameType`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`difficulty`)) {
        self$`difficulty` <- this_object$`difficulty`
      }
      if (!is.null(this_object$`appVersion`)) {
        self$`appVersion` <- this_object$`appVersion`
      }
      if (!is.null(this_object$`likesCount`)) {
        self$`likesCount` <- this_object$`likesCount`
      }
      if (!is.null(this_object$`dislikesCount`)) {
        self$`dislikesCount` <- this_object$`dislikesCount`
      }
      if (!is.null(this_object$`commentsCount`)) {
        self$`commentsCount` <- this_object$`commentsCount`
      }
      if (!is.null(this_object$`downloadCount`)) {
        self$`downloadCount` <- this_object$`downloadCount`
      }
      if (!is.null(this_object$`comments`)) {
        self$`comments` <- ApiClient$new()$deserializeObj(this_object$`comments`, "array[NoteResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`locked`)) {
        self$`locked` <- this_object$`locked`
      }
      if (!is.null(this_object$`completed`)) {
        self$`completed` <- this_object$`completed`
      }
      if (!is.null(this_object$`ticketsEarned`)) {
        self$`ticketsEarned` <- this_object$`ticketsEarned`
      }
      if (!is.null(this_object$`gameObjects`)) {
        `gameobjects_object` <- GameObjectListResponse$new()
        `gameobjects_object`$fromJSON(jsonlite::toJSON(this_object$`gameObjects`, auto_unbox = TRUE, digits = NA))
        self$`gameObjects` <- `gameobjects_object`
      }
      if (!is.null(this_object$`hasLiked`)) {
        self$`hasLiked` <- this_object$`hasLiked`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- AssetShortResponse$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`gameData`)) {
        self$`gameData` <- this_object$`gameData`
      }
      if (!is.null(this_object$`gameDataSuffix`)) {
        self$`gameDataSuffix` <- this_object$`gameDataSuffix`
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
      if (!is.null(this_object$`userPermissionsList`)) {
        `userpermissionslist_object` <- UserPermissionsListResponse$new()
        `userpermissionslist_object`$fromJSON(jsonlite::toJSON(this_object$`userPermissionsList`, auto_unbox = TRUE, digits = NA))
        self$`userPermissionsList` <- `userpermissionslist_object`
      }
      if (!is.null(this_object$`results`)) {
        self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`randomizeGameObjects`)) {
        self$`randomizeGameObjects` <- this_object$`randomizeGameObjects`
      }
      if (!is.null(this_object$`tickets`)) {
        `tickets_object` <- TicketListResponse$new()
        `tickets_object`$fromJSON(jsonlite::toJSON(this_object$`tickets`, auto_unbox = TRUE, digits = NA))
        self$`tickets` <- `tickets_object`
      }
      if (!is.null(this_object$`assignMission`)) {
        self$`assignMission` <- this_object$`assignMission`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- AssetShortResponse$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
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
      if (!is.null(this_object$`splashTitle`)) {
        self$`splashTitle` <- this_object$`splashTitle`
      }
      if (!is.null(this_object$`splashMessage`)) {
        self$`splashMessage` <- this_object$`splashMessage`
      }
      if (!is.null(this_object$`hasFlagged`)) {
        self$`hasFlagged` <- this_object$`hasFlagged`
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
      if (!is.null(this_object$`winnerMessage`)) {
        self$`winnerMessage` <- this_object$`winnerMessage`
      }
      if (!is.null(this_object$`tutorial`)) {
        `tutorial_object` <- TutorialResponse$new()
        `tutorial_object`$fromJSON(jsonlite::toJSON(this_object$`tutorial`, auto_unbox = TRUE, digits = NA))
        self$`tutorial` <- `tutorial_object`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`appName`)) {
        self$`appName` <- this_object$`appName`
      }
      if (!is.null(this_object$`scoringType`)) {
        if (!is.null(this_object$`scoringType`) && !(this_object$`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
          stop(paste("Error! \"", this_object$`scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
        }
        self$`scoringType` <- this_object$`scoringType`
      }
      if (!is.null(this_object$`tutorialTitle`)) {
        self$`tutorialTitle` <- this_object$`tutorialTitle`
      }
      if (!is.null(this_object$`tutorialMessage`)) {
        self$`tutorialMessage` <- this_object$`tutorialMessage`
      }
      if (!is.null(this_object$`tutorialAlignment`)) {
        self$`tutorialAlignment` <- this_object$`tutorialAlignment`
      }
      if (!is.null(this_object$`tutorialImage`)) {
        `tutorialimage_object` <- AssetShortResponse$new()
        `tutorialimage_object`$fromJSON(jsonlite::toJSON(this_object$`tutorialImage`, auto_unbox = TRUE, digits = NA))
        self$`tutorialImage` <- `tutorialimage_object`
      }
      if (!is.null(this_object$`nextLevelId`)) {
        self$`nextLevelId` <- this_object$`nextLevelId`
      }
      if (!is.null(this_object$`offer`)) {
        `offer_object` <- OfferShortResponse$new()
        `offer_object`$fromJSON(jsonlite::toJSON(this_object$`offer`, auto_unbox = TRUE, digits = NA))
        self$`offer` <- `offer_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GameLevelResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GameLevelResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GameLevelResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`gameLevelId` <- this_object$`gameLevelId`
      self$`gameType` <- this_object$`gameType`
      self$`active` <- this_object$`active`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`difficulty` <- this_object$`difficulty`
      self$`appVersion` <- this_object$`appVersion`
      self$`likesCount` <- this_object$`likesCount`
      self$`dislikesCount` <- this_object$`dislikesCount`
      self$`commentsCount` <- this_object$`commentsCount`
      self$`downloadCount` <- this_object$`downloadCount`
      self$`comments` <- ApiClient$new()$deserializeObj(this_object$`comments`, "array[NoteResponse]", loadNamespace("openapi"))
      self$`locked` <- this_object$`locked`
      self$`completed` <- this_object$`completed`
      self$`ticketsEarned` <- this_object$`ticketsEarned`
      self$`gameObjects` <- GameObjectListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`gameObjects`, auto_unbox = TRUE, digits = NA))
      self$`hasLiked` <- this_object$`hasLiked`
      self$`image` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`gameData` <- this_object$`gameData`
      self$`gameDataSuffix` <- this_object$`gameDataSuffix`
      self$`scores` <- ScoreListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`userPermissionsList` <- UserPermissionsListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`userPermissionsList`, auto_unbox = TRUE, digits = NA))
      self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`randomizeGameObjects` <- this_object$`randomizeGameObjects`
      self$`tickets` <- TicketListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`tickets`, auto_unbox = TRUE, digits = NA))
      self$`assignMission` <- this_object$`assignMission`
      self$`icon` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`authorOverride` <- this_object$`authorOverride`
      self$`updatedDate` <- this_object$`updatedDate`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`splashTitle` <- this_object$`splashTitle`
      self$`splashMessage` <- this_object$`splashMessage`
      self$`hasFlagged` <- this_object$`hasFlagged`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`ticketType` <- this_object$`ticketType`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`points` <- this_object$`points`
      self$`winnerMessage` <- this_object$`winnerMessage`
      self$`tutorial` <- TutorialResponse$new()$fromJSON(jsonlite::toJSON(this_object$`tutorial`, auto_unbox = TRUE, digits = NA))
      self$`appKey` <- this_object$`appKey`
      self$`appName` <- this_object$`appName`
      if (!is.null(this_object$`scoringType`) && !(this_object$`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
        stop(paste("Error! \"", this_object$`scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
      }
      self$`scoringType` <- this_object$`scoringType`
      self$`tutorialTitle` <- this_object$`tutorialTitle`
      self$`tutorialMessage` <- this_object$`tutorialMessage`
      self$`tutorialAlignment` <- this_object$`tutorialAlignment`
      self$`tutorialImage` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`tutorialImage`, auto_unbox = TRUE, digits = NA))
      self$`nextLevelId` <- this_object$`nextLevelId`
      self$`offer` <- OfferShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`offer`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GameLevelResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GameLevelResponse
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
# GameLevelResponse$unlock()
#
## Below is an example to define the print function
# GameLevelResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GameLevelResponse$lock()

