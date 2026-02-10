#' Create a new GameLevel
#'
#' @description
#' GameLevel Class
#'
#' @docType class
#' @title GameLevel
#' @description GameLevel Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field newOwnerId  integer [optional]
#' @field gameDifficulty  character [optional]
#' @field name  character [optional]
#' @field image  \link{Asset} [optional]
#' @field icon  \link{Asset} [optional]
#' @field description  character [optional]
#' @field startDate  character [optional]
#' @field endDate  character [optional]
#' @field randomizeGameObjects  character [optional]
#' @field owner  \link{Account} [optional]
#' @field version  \link{AppVersion} [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field likes  list(\link{YayOrNay}) [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field playCount  integer [optional]
#' @field downloadCount  integer [optional]
#' @field gameObjectCount  integer [optional]
#' @field publicPermissions  \link{Permissions} [optional]
#' @field visibility  character [optional]
#' @field userPermissions  list(\link{UserPermissions}) [optional]
#' @field flags  list(\link{Flag}) [optional]
#' @field flagCount  integer [optional]
#' @field flagThreshold  \link{FlagThreshold} [optional]
#' @field application  \link{Application} [optional]
#' @field assignMission  character [optional]
#' @field authorOverride  character [optional]
#' @field splashTitle  character [optional]
#' @field splashMessage  character [optional]
#' @field winnerMessage  character [optional]
#' @field tutorial  \link{Tutorial} [optional]
#' @field approvalStatus  character [optional]
#' @field nextLevel  \link{GameLevel} [optional]
#' @field offer  \link{Offer} [optional]
#' @field balance  numeric [optional]
#' @field levelNumber  integer [optional]
#' @field points  integer [optional]
#' @field ticketType  character [optional]
#' @field ticketCount  integer [optional]
#' @field allocateTickets  character [optional]
#' @field applicationTitle  character [optional]
#' @field ownerUsername  character [optional]
#' @field likableNotificationModels  list(named list(object)) [optional]
#' @field notableNotificationModels  list(named list(object)) [optional]
#' @field published  character [optional]
#' @field contentName  character [optional]
#' @field defaultThreshold  integer [optional]
#' @field contentAsset  \link{Asset} [optional]
#' @field contentType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GameLevel <- R6::R6Class(
  "GameLevel",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `newOwnerId` = NULL,
    `gameDifficulty` = NULL,
    `name` = NULL,
    `image` = NULL,
    `icon` = NULL,
    `description` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `randomizeGameObjects` = NULL,
    `owner` = NULL,
    `version` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `likes` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `playCount` = NULL,
    `downloadCount` = NULL,
    `gameObjectCount` = NULL,
    `publicPermissions` = NULL,
    `visibility` = NULL,
    `userPermissions` = NULL,
    `flags` = NULL,
    `flagCount` = NULL,
    `flagThreshold` = NULL,
    `application` = NULL,
    `assignMission` = NULL,
    `authorOverride` = NULL,
    `splashTitle` = NULL,
    `splashMessage` = NULL,
    `winnerMessage` = NULL,
    `tutorial` = NULL,
    `approvalStatus` = NULL,
    `nextLevel` = NULL,
    `offer` = NULL,
    `balance` = NULL,
    `levelNumber` = NULL,
    `points` = NULL,
    `ticketType` = NULL,
    `ticketCount` = NULL,
    `allocateTickets` = NULL,
    `applicationTitle` = NULL,
    `ownerUsername` = NULL,
    `likableNotificationModels` = NULL,
    `notableNotificationModels` = NULL,
    `published` = NULL,
    `contentName` = NULL,
    `defaultThreshold` = NULL,
    `contentAsset` = NULL,
    `contentType` = NULL,

    #' @description
    #' Initialize a new GameLevel class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param newOwnerId newOwnerId
    #' @param gameDifficulty gameDifficulty
    #' @param name name
    #' @param image image
    #' @param icon icon
    #' @param description description
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param randomizeGameObjects randomizeGameObjects
    #' @param owner owner
    #' @param version version
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param likes likes
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param playCount playCount
    #' @param downloadCount downloadCount
    #' @param gameObjectCount gameObjectCount
    #' @param publicPermissions publicPermissions
    #' @param visibility visibility
    #' @param userPermissions userPermissions
    #' @param flags flags
    #' @param flagCount flagCount
    #' @param flagThreshold flagThreshold
    #' @param application application
    #' @param assignMission assignMission
    #' @param authorOverride authorOverride
    #' @param splashTitle splashTitle
    #' @param splashMessage splashMessage
    #' @param winnerMessage winnerMessage
    #' @param tutorial tutorial
    #' @param approvalStatus approvalStatus
    #' @param nextLevel nextLevel
    #' @param offer offer
    #' @param balance balance
    #' @param levelNumber levelNumber
    #' @param points points
    #' @param ticketType ticketType
    #' @param ticketCount ticketCount
    #' @param allocateTickets allocateTickets
    #' @param applicationTitle applicationTitle
    #' @param ownerUsername ownerUsername
    #' @param likableNotificationModels likableNotificationModels
    #' @param notableNotificationModels notableNotificationModels
    #' @param published published
    #' @param contentName contentName
    #' @param defaultThreshold defaultThreshold
    #' @param contentAsset contentAsset
    #' @param contentType contentType
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `newOwnerId` = NULL, `gameDifficulty` = NULL, `name` = NULL, `image` = NULL, `icon` = NULL, `description` = NULL, `startDate` = NULL, `endDate` = NULL, `randomizeGameObjects` = NULL, `owner` = NULL, `version` = NULL, `notes` = NULL, `noteCount` = NULL, `likes` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `playCount` = NULL, `downloadCount` = NULL, `gameObjectCount` = NULL, `publicPermissions` = NULL, `visibility` = NULL, `userPermissions` = NULL, `flags` = NULL, `flagCount` = NULL, `flagThreshold` = NULL, `application` = NULL, `assignMission` = NULL, `authorOverride` = NULL, `splashTitle` = NULL, `splashMessage` = NULL, `winnerMessage` = NULL, `tutorial` = NULL, `approvalStatus` = NULL, `nextLevel` = NULL, `offer` = NULL, `balance` = NULL, `levelNumber` = NULL, `points` = NULL, `ticketType` = NULL, `ticketCount` = NULL, `allocateTickets` = NULL, `applicationTitle` = NULL, `ownerUsername` = NULL, `likableNotificationModels` = NULL, `notableNotificationModels` = NULL, `published` = NULL, `contentName` = NULL, `defaultThreshold` = NULL, `contentAsset` = NULL, `contentType` = NULL, ...) {
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
      if (!is.null(`newOwnerId`)) {
        if (!(is.numeric(`newOwnerId`) && length(`newOwnerId`) == 1)) {
          stop(paste("Error! Invalid data for `newOwnerId`. Must be an integer:", `newOwnerId`))
        }
        self$`newOwnerId` <- `newOwnerId`
      }
      if (!is.null(`gameDifficulty`)) {
        if (!(`gameDifficulty` %in% c("VERY_EASY", "EASY", "MEDIUM", "HARD", "VERY_HARD"))) {
          stop(paste("Error! \"", `gameDifficulty`, "\" cannot be assigned to `gameDifficulty`. Must be \"VERY_EASY\", \"EASY\", \"MEDIUM\", \"HARD\", \"VERY_HARD\".", sep = ""))
        }
        if (!(is.character(`gameDifficulty`) && length(`gameDifficulty`) == 1)) {
          stop(paste("Error! Invalid data for `gameDifficulty`. Must be a string:", `gameDifficulty`))
        }
        self$`gameDifficulty` <- `gameDifficulty`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`icon`)) {
        stopifnot(R6::is.R6(`icon`))
        self$`icon` <- `icon`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
      if (!is.null(`randomizeGameObjects`)) {
        if (!(is.logical(`randomizeGameObjects`) && length(`randomizeGameObjects`) == 1)) {
          stop(paste("Error! Invalid data for `randomizeGameObjects`. Must be a boolean:", `randomizeGameObjects`))
        }
        self$`randomizeGameObjects` <- `randomizeGameObjects`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`version`)) {
        stopifnot(R6::is.R6(`version`))
        self$`version` <- `version`
      }
      if (!is.null(`notes`)) {
        stopifnot(is.vector(`notes`), length(`notes`) != 0)
        sapply(`notes`, function(x) stopifnot(R6::is.R6(x)))
        self$`notes` <- `notes`
      }
      if (!is.null(`noteCount`)) {
        if (!(is.numeric(`noteCount`) && length(`noteCount`) == 1)) {
          stop(paste("Error! Invalid data for `noteCount`. Must be an integer:", `noteCount`))
        }
        self$`noteCount` <- `noteCount`
      }
      if (!is.null(`likes`)) {
        stopifnot(is.vector(`likes`), length(`likes`) != 0)
        sapply(`likes`, function(x) stopifnot(R6::is.R6(x)))
        self$`likes` <- `likes`
      }
      if (!is.null(`likeCount`)) {
        if (!(is.numeric(`likeCount`) && length(`likeCount`) == 1)) {
          stop(paste("Error! Invalid data for `likeCount`. Must be an integer:", `likeCount`))
        }
        self$`likeCount` <- `likeCount`
      }
      if (!is.null(`dislikeCount`)) {
        if (!(is.numeric(`dislikeCount`) && length(`dislikeCount`) == 1)) {
          stop(paste("Error! Invalid data for `dislikeCount`. Must be an integer:", `dislikeCount`))
        }
        self$`dislikeCount` <- `dislikeCount`
      }
      if (!is.null(`playCount`)) {
        if (!(is.numeric(`playCount`) && length(`playCount`) == 1)) {
          stop(paste("Error! Invalid data for `playCount`. Must be an integer:", `playCount`))
        }
        self$`playCount` <- `playCount`
      }
      if (!is.null(`downloadCount`)) {
        if (!(is.numeric(`downloadCount`) && length(`downloadCount`) == 1)) {
          stop(paste("Error! Invalid data for `downloadCount`. Must be an integer:", `downloadCount`))
        }
        self$`downloadCount` <- `downloadCount`
      }
      if (!is.null(`gameObjectCount`)) {
        if (!(is.numeric(`gameObjectCount`) && length(`gameObjectCount`) == 1)) {
          stop(paste("Error! Invalid data for `gameObjectCount`. Must be an integer:", `gameObjectCount`))
        }
        self$`gameObjectCount` <- `gameObjectCount`
      }
      if (!is.null(`publicPermissions`)) {
        stopifnot(R6::is.R6(`publicPermissions`))
        self$`publicPermissions` <- `publicPermissions`
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
      if (!is.null(`userPermissions`)) {
        stopifnot(is.vector(`userPermissions`), length(`userPermissions`) != 0)
        sapply(`userPermissions`, function(x) stopifnot(R6::is.R6(x)))
        self$`userPermissions` <- `userPermissions`
      }
      if (!is.null(`flags`)) {
        stopifnot(is.vector(`flags`), length(`flags`) != 0)
        sapply(`flags`, function(x) stopifnot(R6::is.R6(x)))
        self$`flags` <- `flags`
      }
      if (!is.null(`flagCount`)) {
        if (!(is.numeric(`flagCount`) && length(`flagCount`) == 1)) {
          stop(paste("Error! Invalid data for `flagCount`. Must be an integer:", `flagCount`))
        }
        self$`flagCount` <- `flagCount`
      }
      if (!is.null(`flagThreshold`)) {
        stopifnot(R6::is.R6(`flagThreshold`))
        self$`flagThreshold` <- `flagThreshold`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`assignMission`)) {
        if (!(is.logical(`assignMission`) && length(`assignMission`) == 1)) {
          stop(paste("Error! Invalid data for `assignMission`. Must be a boolean:", `assignMission`))
        }
        self$`assignMission` <- `assignMission`
      }
      if (!is.null(`authorOverride`)) {
        if (!(is.character(`authorOverride`) && length(`authorOverride`) == 1)) {
          stop(paste("Error! Invalid data for `authorOverride`. Must be a string:", `authorOverride`))
        }
        self$`authorOverride` <- `authorOverride`
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
      if (!is.null(`approvalStatus`)) {
        if (!(`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", `approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        if (!(is.character(`approvalStatus`) && length(`approvalStatus`) == 1)) {
          stop(paste("Error! Invalid data for `approvalStatus`. Must be a string:", `approvalStatus`))
        }
        self$`approvalStatus` <- `approvalStatus`
      }
      if (!is.null(`nextLevel`)) {
        stopifnot(R6::is.R6(`nextLevel`))
        self$`nextLevel` <- `nextLevel`
      }
      if (!is.null(`offer`)) {
        stopifnot(R6::is.R6(`offer`))
        self$`offer` <- `offer`
      }
      if (!is.null(`balance`)) {
        if (!(is.numeric(`balance`) && length(`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a number:", `balance`))
        }
        self$`balance` <- `balance`
      }
      if (!is.null(`levelNumber`)) {
        if (!(is.numeric(`levelNumber`) && length(`levelNumber`) == 1)) {
          stop(paste("Error! Invalid data for `levelNumber`. Must be an integer:", `levelNumber`))
        }
        self$`levelNumber` <- `levelNumber`
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
      if (!is.null(`applicationTitle`)) {
        if (!(is.character(`applicationTitle`) && length(`applicationTitle`) == 1)) {
          stop(paste("Error! Invalid data for `applicationTitle`. Must be a string:", `applicationTitle`))
        }
        self$`applicationTitle` <- `applicationTitle`
      }
      if (!is.null(`ownerUsername`)) {
        if (!(is.character(`ownerUsername`) && length(`ownerUsername`) == 1)) {
          stop(paste("Error! Invalid data for `ownerUsername`. Must be a string:", `ownerUsername`))
        }
        self$`ownerUsername` <- `ownerUsername`
      }
      if (!is.null(`likableNotificationModels`)) {
        stopifnot(is.vector(`likableNotificationModels`), length(`likableNotificationModels`) != 0)
        sapply(`likableNotificationModels`, function(x) stopifnot(R6::is.R6(x)))
        self$`likableNotificationModels` <- `likableNotificationModels`
      }
      if (!is.null(`notableNotificationModels`)) {
        stopifnot(is.vector(`notableNotificationModels`), length(`notableNotificationModels`) != 0)
        sapply(`notableNotificationModels`, function(x) stopifnot(R6::is.R6(x)))
        self$`notableNotificationModels` <- `notableNotificationModels`
      }
      if (!is.null(`published`)) {
        if (!(is.logical(`published`) && length(`published`) == 1)) {
          stop(paste("Error! Invalid data for `published`. Must be a boolean:", `published`))
        }
        self$`published` <- `published`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`defaultThreshold`)) {
        if (!(is.numeric(`defaultThreshold`) && length(`defaultThreshold`) == 1)) {
          stop(paste("Error! Invalid data for `defaultThreshold`. Must be an integer:", `defaultThreshold`))
        }
        self$`defaultThreshold` <- `defaultThreshold`
      }
      if (!is.null(`contentAsset`)) {
        stopifnot(R6::is.R6(`contentAsset`))
        self$`contentAsset` <- `contentAsset`
      }
      if (!is.null(`contentType`)) {
        if (!(is.character(`contentType`) && length(`contentType`) == 1)) {
          stop(paste("Error! Invalid data for `contentType`. Must be a string:", `contentType`))
        }
        self$`contentType` <- `contentType`
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
    #' @return GameLevel as a base R list.
    #' @examples
    #' # convert array of GameLevel (x) to a data frame
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
    #' Convert GameLevel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GameLevelObject <- list()
      if (!is.null(self$`id`)) {
        GameLevelObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        GameLevelObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        GameLevelObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`newOwnerId`)) {
        GameLevelObject[["newOwnerId"]] <-
          self$`newOwnerId`
      }
      if (!is.null(self$`gameDifficulty`)) {
        GameLevelObject[["gameDifficulty"]] <-
          self$`gameDifficulty`
      }
      if (!is.null(self$`name`)) {
        GameLevelObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`image`)) {
        GameLevelObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`icon`)) {
        GameLevelObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`description`)) {
        GameLevelObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`startDate`)) {
        GameLevelObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        GameLevelObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`randomizeGameObjects`)) {
        GameLevelObject[["randomizeGameObjects"]] <-
          self$`randomizeGameObjects`
      }
      if (!is.null(self$`owner`)) {
        GameLevelObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`version`)) {
        GameLevelObject[["version"]] <-
          self$extractSimpleType(self$`version`)
      }
      if (!is.null(self$`notes`)) {
        GameLevelObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        GameLevelObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`likes`)) {
        GameLevelObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`likeCount`)) {
        GameLevelObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        GameLevelObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`playCount`)) {
        GameLevelObject[["playCount"]] <-
          self$`playCount`
      }
      if (!is.null(self$`downloadCount`)) {
        GameLevelObject[["downloadCount"]] <-
          self$`downloadCount`
      }
      if (!is.null(self$`gameObjectCount`)) {
        GameLevelObject[["gameObjectCount"]] <-
          self$`gameObjectCount`
      }
      if (!is.null(self$`publicPermissions`)) {
        GameLevelObject[["publicPermissions"]] <-
          self$extractSimpleType(self$`publicPermissions`)
      }
      if (!is.null(self$`visibility`)) {
        GameLevelObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`userPermissions`)) {
        GameLevelObject[["userPermissions"]] <-
          self$extractSimpleType(self$`userPermissions`)
      }
      if (!is.null(self$`flags`)) {
        GameLevelObject[["flags"]] <-
          self$extractSimpleType(self$`flags`)
      }
      if (!is.null(self$`flagCount`)) {
        GameLevelObject[["flagCount"]] <-
          self$`flagCount`
      }
      if (!is.null(self$`flagThreshold`)) {
        GameLevelObject[["flagThreshold"]] <-
          self$extractSimpleType(self$`flagThreshold`)
      }
      if (!is.null(self$`application`)) {
        GameLevelObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`assignMission`)) {
        GameLevelObject[["assignMission"]] <-
          self$`assignMission`
      }
      if (!is.null(self$`authorOverride`)) {
        GameLevelObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`splashTitle`)) {
        GameLevelObject[["splashTitle"]] <-
          self$`splashTitle`
      }
      if (!is.null(self$`splashMessage`)) {
        GameLevelObject[["splashMessage"]] <-
          self$`splashMessage`
      }
      if (!is.null(self$`winnerMessage`)) {
        GameLevelObject[["winnerMessage"]] <-
          self$`winnerMessage`
      }
      if (!is.null(self$`tutorial`)) {
        GameLevelObject[["tutorial"]] <-
          self$extractSimpleType(self$`tutorial`)
      }
      if (!is.null(self$`approvalStatus`)) {
        GameLevelObject[["approvalStatus"]] <-
          self$`approvalStatus`
      }
      if (!is.null(self$`nextLevel`)) {
        GameLevelObject[["nextLevel"]] <-
          self$extractSimpleType(self$`nextLevel`)
      }
      if (!is.null(self$`offer`)) {
        GameLevelObject[["offer"]] <-
          self$extractSimpleType(self$`offer`)
      }
      if (!is.null(self$`balance`)) {
        GameLevelObject[["balance"]] <-
          self$`balance`
      }
      if (!is.null(self$`levelNumber`)) {
        GameLevelObject[["levelNumber"]] <-
          self$`levelNumber`
      }
      if (!is.null(self$`points`)) {
        GameLevelObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`ticketType`)) {
        GameLevelObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`ticketCount`)) {
        GameLevelObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`allocateTickets`)) {
        GameLevelObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`applicationTitle`)) {
        GameLevelObject[["applicationTitle"]] <-
          self$`applicationTitle`
      }
      if (!is.null(self$`ownerUsername`)) {
        GameLevelObject[["ownerUsername"]] <-
          self$`ownerUsername`
      }
      if (!is.null(self$`likableNotificationModels`)) {
        GameLevelObject[["likableNotificationModels"]] <-
          self$extractSimpleType(self$`likableNotificationModels`)
      }
      if (!is.null(self$`notableNotificationModels`)) {
        GameLevelObject[["notableNotificationModels"]] <-
          self$extractSimpleType(self$`notableNotificationModels`)
      }
      if (!is.null(self$`published`)) {
        GameLevelObject[["published"]] <-
          self$`published`
      }
      if (!is.null(self$`contentName`)) {
        GameLevelObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`defaultThreshold`)) {
        GameLevelObject[["defaultThreshold"]] <-
          self$`defaultThreshold`
      }
      if (!is.null(self$`contentAsset`)) {
        GameLevelObject[["contentAsset"]] <-
          self$extractSimpleType(self$`contentAsset`)
      }
      if (!is.null(self$`contentType`)) {
        GameLevelObject[["contentType"]] <-
          self$`contentType`
      }
      return(GameLevelObject)
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
    #' Deserialize JSON string into an instance of GameLevel
    #'
    #' @param input_json the JSON input
    #' @return the instance of GameLevel
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
      if (!is.null(this_object$`newOwnerId`)) {
        self$`newOwnerId` <- this_object$`newOwnerId`
      }
      if (!is.null(this_object$`gameDifficulty`)) {
        if (!is.null(this_object$`gameDifficulty`) && !(this_object$`gameDifficulty` %in% c("VERY_EASY", "EASY", "MEDIUM", "HARD", "VERY_HARD"))) {
          stop(paste("Error! \"", this_object$`gameDifficulty`, "\" cannot be assigned to `gameDifficulty`. Must be \"VERY_EASY\", \"EASY\", \"MEDIUM\", \"HARD\", \"VERY_HARD\".", sep = ""))
        }
        self$`gameDifficulty` <- this_object$`gameDifficulty`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- Asset$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- Asset$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`randomizeGameObjects`)) {
        self$`randomizeGameObjects` <- this_object$`randomizeGameObjects`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`version`)) {
        `version_object` <- AppVersion$new()
        `version_object`$fromJSON(jsonlite::toJSON(this_object$`version`, auto_unbox = TRUE, digits = NA))
        self$`version` <- `version_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`likes`)) {
        self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[YayOrNay]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`likeCount`)) {
        self$`likeCount` <- this_object$`likeCount`
      }
      if (!is.null(this_object$`dislikeCount`)) {
        self$`dislikeCount` <- this_object$`dislikeCount`
      }
      if (!is.null(this_object$`playCount`)) {
        self$`playCount` <- this_object$`playCount`
      }
      if (!is.null(this_object$`downloadCount`)) {
        self$`downloadCount` <- this_object$`downloadCount`
      }
      if (!is.null(this_object$`gameObjectCount`)) {
        self$`gameObjectCount` <- this_object$`gameObjectCount`
      }
      if (!is.null(this_object$`publicPermissions`)) {
        `publicpermissions_object` <- Permissions$new()
        `publicpermissions_object`$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
        self$`publicPermissions` <- `publicpermissions_object`
      }
      if (!is.null(this_object$`visibility`)) {
        if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`userPermissions`)) {
        self$`userPermissions` <- ApiClient$new()$deserializeObj(this_object$`userPermissions`, "array[UserPermissions]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`flags`)) {
        self$`flags` <- ApiClient$new()$deserializeObj(this_object$`flags`, "array[Flag]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`flagCount`)) {
        self$`flagCount` <- this_object$`flagCount`
      }
      if (!is.null(this_object$`flagThreshold`)) {
        `flagthreshold_object` <- FlagThreshold$new()
        `flagthreshold_object`$fromJSON(jsonlite::toJSON(this_object$`flagThreshold`, auto_unbox = TRUE, digits = NA))
        self$`flagThreshold` <- `flagthreshold_object`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`assignMission`)) {
        self$`assignMission` <- this_object$`assignMission`
      }
      if (!is.null(this_object$`authorOverride`)) {
        self$`authorOverride` <- this_object$`authorOverride`
      }
      if (!is.null(this_object$`splashTitle`)) {
        self$`splashTitle` <- this_object$`splashTitle`
      }
      if (!is.null(this_object$`splashMessage`)) {
        self$`splashMessage` <- this_object$`splashMessage`
      }
      if (!is.null(this_object$`winnerMessage`)) {
        self$`winnerMessage` <- this_object$`winnerMessage`
      }
      if (!is.null(this_object$`tutorial`)) {
        `tutorial_object` <- Tutorial$new()
        `tutorial_object`$fromJSON(jsonlite::toJSON(this_object$`tutorial`, auto_unbox = TRUE, digits = NA))
        self$`tutorial` <- `tutorial_object`
      }
      if (!is.null(this_object$`approvalStatus`)) {
        if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        self$`approvalStatus` <- this_object$`approvalStatus`
      }
      if (!is.null(this_object$`nextLevel`)) {
        `nextlevel_object` <- GameLevel$new()
        `nextlevel_object`$fromJSON(jsonlite::toJSON(this_object$`nextLevel`, auto_unbox = TRUE, digits = NA))
        self$`nextLevel` <- `nextlevel_object`
      }
      if (!is.null(this_object$`offer`)) {
        `offer_object` <- Offer$new()
        `offer_object`$fromJSON(jsonlite::toJSON(this_object$`offer`, auto_unbox = TRUE, digits = NA))
        self$`offer` <- `offer_object`
      }
      if (!is.null(this_object$`balance`)) {
        self$`balance` <- this_object$`balance`
      }
      if (!is.null(this_object$`levelNumber`)) {
        self$`levelNumber` <- this_object$`levelNumber`
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
      if (!is.null(this_object$`applicationTitle`)) {
        self$`applicationTitle` <- this_object$`applicationTitle`
      }
      if (!is.null(this_object$`ownerUsername`)) {
        self$`ownerUsername` <- this_object$`ownerUsername`
      }
      if (!is.null(this_object$`likableNotificationModels`)) {
        self$`likableNotificationModels` <- ApiClient$new()$deserializeObj(this_object$`likableNotificationModels`, "array[map(object)]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`notableNotificationModels`)) {
        self$`notableNotificationModels` <- ApiClient$new()$deserializeObj(this_object$`notableNotificationModels`, "array[map(object)]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`published`)) {
        self$`published` <- this_object$`published`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`defaultThreshold`)) {
        self$`defaultThreshold` <- this_object$`defaultThreshold`
      }
      if (!is.null(this_object$`contentAsset`)) {
        `contentasset_object` <- Asset$new()
        `contentasset_object`$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
        self$`contentAsset` <- `contentasset_object`
      }
      if (!is.null(this_object$`contentType`)) {
        self$`contentType` <- this_object$`contentType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GameLevel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GameLevel
    #'
    #' @param input_json the JSON input
    #' @return the instance of GameLevel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`newOwnerId` <- this_object$`newOwnerId`
      if (!is.null(this_object$`gameDifficulty`) && !(this_object$`gameDifficulty` %in% c("VERY_EASY", "EASY", "MEDIUM", "HARD", "VERY_HARD"))) {
        stop(paste("Error! \"", this_object$`gameDifficulty`, "\" cannot be assigned to `gameDifficulty`. Must be \"VERY_EASY\", \"EASY\", \"MEDIUM\", \"HARD\", \"VERY_HARD\".", sep = ""))
      }
      self$`gameDifficulty` <- this_object$`gameDifficulty`
      self$`name` <- this_object$`name`
      self$`image` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`icon` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`description` <- this_object$`description`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`randomizeGameObjects` <- this_object$`randomizeGameObjects`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`version` <- AppVersion$new()$fromJSON(jsonlite::toJSON(this_object$`version`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[YayOrNay]", loadNamespace("openapi"))
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`playCount` <- this_object$`playCount`
      self$`downloadCount` <- this_object$`downloadCount`
      self$`gameObjectCount` <- this_object$`gameObjectCount`
      self$`publicPermissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`userPermissions` <- ApiClient$new()$deserializeObj(this_object$`userPermissions`, "array[UserPermissions]", loadNamespace("openapi"))
      self$`flags` <- ApiClient$new()$deserializeObj(this_object$`flags`, "array[Flag]", loadNamespace("openapi"))
      self$`flagCount` <- this_object$`flagCount`
      self$`flagThreshold` <- FlagThreshold$new()$fromJSON(jsonlite::toJSON(this_object$`flagThreshold`, auto_unbox = TRUE, digits = NA))
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`assignMission` <- this_object$`assignMission`
      self$`authorOverride` <- this_object$`authorOverride`
      self$`splashTitle` <- this_object$`splashTitle`
      self$`splashMessage` <- this_object$`splashMessage`
      self$`winnerMessage` <- this_object$`winnerMessage`
      self$`tutorial` <- Tutorial$new()$fromJSON(jsonlite::toJSON(this_object$`tutorial`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
        stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
      }
      self$`approvalStatus` <- this_object$`approvalStatus`
      self$`nextLevel` <- GameLevel$new()$fromJSON(jsonlite::toJSON(this_object$`nextLevel`, auto_unbox = TRUE, digits = NA))
      self$`offer` <- Offer$new()$fromJSON(jsonlite::toJSON(this_object$`offer`, auto_unbox = TRUE, digits = NA))
      self$`balance` <- this_object$`balance`
      self$`levelNumber` <- this_object$`levelNumber`
      self$`points` <- this_object$`points`
      self$`ticketType` <- this_object$`ticketType`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`applicationTitle` <- this_object$`applicationTitle`
      self$`ownerUsername` <- this_object$`ownerUsername`
      self$`likableNotificationModels` <- ApiClient$new()$deserializeObj(this_object$`likableNotificationModels`, "array[map(object)]", loadNamespace("openapi"))
      self$`notableNotificationModels` <- ApiClient$new()$deserializeObj(this_object$`notableNotificationModels`, "array[map(object)]", loadNamespace("openapi"))
      self$`published` <- this_object$`published`
      self$`contentName` <- this_object$`contentName`
      self$`defaultThreshold` <- this_object$`defaultThreshold`
      self$`contentAsset` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
      self$`contentType` <- this_object$`contentType`
      self
    },

    #' @description
    #' Validate JSON input with respect to GameLevel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GameLevel
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
# GameLevel$unlock()
#
## Below is an example to define the print function
# GameLevel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GameLevel$lock()

