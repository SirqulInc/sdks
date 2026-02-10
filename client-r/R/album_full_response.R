#' Create a new AlbumFullResponse
#'
#' @description
#' AlbumFullResponse Class
#'
#' @docType class
#' @title AlbumFullResponse
#' @description AlbumFullResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field albumId  integer [optional]
#' @field albumType  character [optional]
#' @field ownerId  integer [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field coverAsset  \link{AssetResponse} [optional]
#' @field tags  character [optional]
#' @field visibility  character [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field assetCount  integer [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field commentsCount  integer [optional]
#' @field userCount  integer [optional]
#' @field notifications  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field distance  numeric [optional]
#' @field dateCreated  integer [optional]
#' @field dateUpdated  integer [optional]
#' @field cellPhone  character [optional]
#' @field fullAddress  character [optional]
#' @field approvalStatus  character [optional]
#' @field favoriteCount  integer [optional]
#' @field liked  character [optional]
#' @field favorite  character [optional]
#' @field favoriteId  integer [optional]
#' @field anonymous  character [optional]
#' @field flagCount  integer [optional]
#' @field viewedCount  integer [optional]
#' @field clickedCount  integer [optional]
#' @field sharedCount  integer [optional]
#' @field assets  list(\link{AssetResponse}) [optional]
#' @field comments  list(\link{NoteFullResponse}) [optional]
#' @field likes  list(\link{LikeResponse}) [optional]
#' @field connectionGroups  list(\link{ConnectionGroupShortResponse}) [optional]
#' @field connections  list(\link{ConnectionResponse}) [optional]
#' @field hasLiked  character [optional]
#' @field hasDisliked  character [optional]
#' @field userPermissions  \link{Permissions} [optional]
#' @field publicPermissions  \link{Permissions} [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AlbumFullResponse <- R6::R6Class(
  "AlbumFullResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `albumId` = NULL,
    `albumType` = NULL,
    `ownerId` = NULL,
    `owner` = NULL,
    `title` = NULL,
    `description` = NULL,
    `coverAsset` = NULL,
    `tags` = NULL,
    `visibility` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `assetCount` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `commentsCount` = NULL,
    `userCount` = NULL,
    `notifications` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `distance` = NULL,
    `dateCreated` = NULL,
    `dateUpdated` = NULL,
    `cellPhone` = NULL,
    `fullAddress` = NULL,
    `approvalStatus` = NULL,
    `favoriteCount` = NULL,
    `liked` = NULL,
    `favorite` = NULL,
    `favoriteId` = NULL,
    `anonymous` = NULL,
    `flagCount` = NULL,
    `viewedCount` = NULL,
    `clickedCount` = NULL,
    `sharedCount` = NULL,
    `assets` = NULL,
    `comments` = NULL,
    `likes` = NULL,
    `connectionGroups` = NULL,
    `connections` = NULL,
    `hasLiked` = NULL,
    `hasDisliked` = NULL,
    `userPermissions` = NULL,
    `publicPermissions` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new AlbumFullResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param albumId albumId
    #' @param albumType albumType
    #' @param ownerId ownerId
    #' @param owner owner
    #' @param title title
    #' @param description description
    #' @param coverAsset coverAsset
    #' @param tags tags
    #' @param visibility visibility
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param assetCount assetCount
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param commentsCount commentsCount
    #' @param userCount userCount
    #' @param notifications notifications
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param distance distance
    #' @param dateCreated dateCreated
    #' @param dateUpdated dateUpdated
    #' @param cellPhone cellPhone
    #' @param fullAddress fullAddress
    #' @param approvalStatus approvalStatus
    #' @param favoriteCount favoriteCount
    #' @param liked liked
    #' @param favorite favorite
    #' @param favoriteId favoriteId
    #' @param anonymous anonymous
    #' @param flagCount flagCount
    #' @param viewedCount viewedCount
    #' @param clickedCount clickedCount
    #' @param sharedCount sharedCount
    #' @param assets assets
    #' @param comments comments
    #' @param likes likes
    #' @param connectionGroups connectionGroups
    #' @param connections connections
    #' @param hasLiked hasLiked
    #' @param hasDisliked hasDisliked
    #' @param userPermissions userPermissions
    #' @param publicPermissions publicPermissions
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `albumId` = NULL, `albumType` = NULL, `ownerId` = NULL, `owner` = NULL, `title` = NULL, `description` = NULL, `coverAsset` = NULL, `tags` = NULL, `visibility` = NULL, `startDate` = NULL, `endDate` = NULL, `assetCount` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `commentsCount` = NULL, `userCount` = NULL, `notifications` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `distance` = NULL, `dateCreated` = NULL, `dateUpdated` = NULL, `cellPhone` = NULL, `fullAddress` = NULL, `approvalStatus` = NULL, `favoriteCount` = NULL, `liked` = NULL, `favorite` = NULL, `favoriteId` = NULL, `anonymous` = NULL, `flagCount` = NULL, `viewedCount` = NULL, `clickedCount` = NULL, `sharedCount` = NULL, `assets` = NULL, `comments` = NULL, `likes` = NULL, `connectionGroups` = NULL, `connections` = NULL, `hasLiked` = NULL, `hasDisliked` = NULL, `userPermissions` = NULL, `publicPermissions` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`albumId`)) {
        if (!(is.numeric(`albumId`) && length(`albumId`) == 1)) {
          stop(paste("Error! Invalid data for `albumId`. Must be an integer:", `albumId`))
        }
        self$`albumId` <- `albumId`
      }
      if (!is.null(`albumType`)) {
        if (!(is.character(`albumType`) && length(`albumType`) == 1)) {
          stop(paste("Error! Invalid data for `albumType`. Must be a string:", `albumType`))
        }
        self$`albumType` <- `albumType`
      }
      if (!is.null(`ownerId`)) {
        if (!(is.numeric(`ownerId`) && length(`ownerId`) == 1)) {
          stop(paste("Error! Invalid data for `ownerId`. Must be an integer:", `ownerId`))
        }
        self$`ownerId` <- `ownerId`
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
      if (!is.null(`coverAsset`)) {
        stopifnot(R6::is.R6(`coverAsset`))
        self$`coverAsset` <- `coverAsset`
      }
      if (!is.null(`tags`)) {
        if (!(is.character(`tags`) && length(`tags`) == 1)) {
          stop(paste("Error! Invalid data for `tags`. Must be a string:", `tags`))
        }
        self$`tags` <- `tags`
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
      if (!is.null(`assetCount`)) {
        if (!(is.numeric(`assetCount`) && length(`assetCount`) == 1)) {
          stop(paste("Error! Invalid data for `assetCount`. Must be an integer:", `assetCount`))
        }
        self$`assetCount` <- `assetCount`
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
      if (!is.null(`commentsCount`)) {
        if (!(is.numeric(`commentsCount`) && length(`commentsCount`) == 1)) {
          stop(paste("Error! Invalid data for `commentsCount`. Must be an integer:", `commentsCount`))
        }
        self$`commentsCount` <- `commentsCount`
      }
      if (!is.null(`userCount`)) {
        if (!(is.numeric(`userCount`) && length(`userCount`) == 1)) {
          stop(paste("Error! Invalid data for `userCount`. Must be an integer:", `userCount`))
        }
        self$`userCount` <- `userCount`
      }
      if (!is.null(`notifications`)) {
        if (!(is.logical(`notifications`) && length(`notifications`) == 1)) {
          stop(paste("Error! Invalid data for `notifications`. Must be a boolean:", `notifications`))
        }
        self$`notifications` <- `notifications`
      }
      if (!is.null(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!is.null(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
      }
      if (!is.null(`locationDescription`)) {
        if (!(is.character(`locationDescription`) && length(`locationDescription`) == 1)) {
          stop(paste("Error! Invalid data for `locationDescription`. Must be a string:", `locationDescription`))
        }
        self$`locationDescription` <- `locationDescription`
      }
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
      }
      if (!is.null(`dateCreated`)) {
        if (!(is.numeric(`dateCreated`) && length(`dateCreated`) == 1)) {
          stop(paste("Error! Invalid data for `dateCreated`. Must be an integer:", `dateCreated`))
        }
        self$`dateCreated` <- `dateCreated`
      }
      if (!is.null(`dateUpdated`)) {
        if (!(is.numeric(`dateUpdated`) && length(`dateUpdated`) == 1)) {
          stop(paste("Error! Invalid data for `dateUpdated`. Must be an integer:", `dateUpdated`))
        }
        self$`dateUpdated` <- `dateUpdated`
      }
      if (!is.null(`cellPhone`)) {
        if (!(is.character(`cellPhone`) && length(`cellPhone`) == 1)) {
          stop(paste("Error! Invalid data for `cellPhone`. Must be a string:", `cellPhone`))
        }
        self$`cellPhone` <- `cellPhone`
      }
      if (!is.null(`fullAddress`)) {
        if (!(is.character(`fullAddress`) && length(`fullAddress`) == 1)) {
          stop(paste("Error! Invalid data for `fullAddress`. Must be a string:", `fullAddress`))
        }
        self$`fullAddress` <- `fullAddress`
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
      if (!is.null(`favoriteCount`)) {
        if (!(is.numeric(`favoriteCount`) && length(`favoriteCount`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteCount`. Must be an integer:", `favoriteCount`))
        }
        self$`favoriteCount` <- `favoriteCount`
      }
      if (!is.null(`liked`)) {
        if (!(is.logical(`liked`) && length(`liked`) == 1)) {
          stop(paste("Error! Invalid data for `liked`. Must be a boolean:", `liked`))
        }
        self$`liked` <- `liked`
      }
      if (!is.null(`favorite`)) {
        if (!(is.logical(`favorite`) && length(`favorite`) == 1)) {
          stop(paste("Error! Invalid data for `favorite`. Must be a boolean:", `favorite`))
        }
        self$`favorite` <- `favorite`
      }
      if (!is.null(`favoriteId`)) {
        if (!(is.numeric(`favoriteId`) && length(`favoriteId`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteId`. Must be an integer:", `favoriteId`))
        }
        self$`favoriteId` <- `favoriteId`
      }
      if (!is.null(`anonymous`)) {
        if (!(is.logical(`anonymous`) && length(`anonymous`) == 1)) {
          stop(paste("Error! Invalid data for `anonymous`. Must be a boolean:", `anonymous`))
        }
        self$`anonymous` <- `anonymous`
      }
      if (!is.null(`flagCount`)) {
        if (!(is.numeric(`flagCount`) && length(`flagCount`) == 1)) {
          stop(paste("Error! Invalid data for `flagCount`. Must be an integer:", `flagCount`))
        }
        self$`flagCount` <- `flagCount`
      }
      if (!is.null(`viewedCount`)) {
        if (!(is.numeric(`viewedCount`) && length(`viewedCount`) == 1)) {
          stop(paste("Error! Invalid data for `viewedCount`. Must be an integer:", `viewedCount`))
        }
        self$`viewedCount` <- `viewedCount`
      }
      if (!is.null(`clickedCount`)) {
        if (!(is.numeric(`clickedCount`) && length(`clickedCount`) == 1)) {
          stop(paste("Error! Invalid data for `clickedCount`. Must be an integer:", `clickedCount`))
        }
        self$`clickedCount` <- `clickedCount`
      }
      if (!is.null(`sharedCount`)) {
        if (!(is.numeric(`sharedCount`) && length(`sharedCount`) == 1)) {
          stop(paste("Error! Invalid data for `sharedCount`. Must be an integer:", `sharedCount`))
        }
        self$`sharedCount` <- `sharedCount`
      }
      if (!is.null(`assets`)) {
        stopifnot(is.vector(`assets`), length(`assets`) != 0)
        sapply(`assets`, function(x) stopifnot(R6::is.R6(x)))
        self$`assets` <- `assets`
      }
      if (!is.null(`comments`)) {
        stopifnot(is.vector(`comments`), length(`comments`) != 0)
        sapply(`comments`, function(x) stopifnot(R6::is.R6(x)))
        self$`comments` <- `comments`
      }
      if (!is.null(`likes`)) {
        stopifnot(is.vector(`likes`), length(`likes`) != 0)
        sapply(`likes`, function(x) stopifnot(R6::is.R6(x)))
        self$`likes` <- `likes`
      }
      if (!is.null(`connectionGroups`)) {
        stopifnot(is.vector(`connectionGroups`), length(`connectionGroups`) != 0)
        sapply(`connectionGroups`, function(x) stopifnot(R6::is.R6(x)))
        self$`connectionGroups` <- `connectionGroups`
      }
      if (!is.null(`connections`)) {
        stopifnot(is.vector(`connections`), length(`connections`) != 0)
        sapply(`connections`, function(x) stopifnot(R6::is.R6(x)))
        self$`connections` <- `connections`
      }
      if (!is.null(`hasLiked`)) {
        if (!(is.logical(`hasLiked`) && length(`hasLiked`) == 1)) {
          stop(paste("Error! Invalid data for `hasLiked`. Must be a boolean:", `hasLiked`))
        }
        self$`hasLiked` <- `hasLiked`
      }
      if (!is.null(`hasDisliked`)) {
        if (!(is.logical(`hasDisliked`) && length(`hasDisliked`) == 1)) {
          stop(paste("Error! Invalid data for `hasDisliked`. Must be a boolean:", `hasDisliked`))
        }
        self$`hasDisliked` <- `hasDisliked`
      }
      if (!is.null(`userPermissions`)) {
        stopifnot(R6::is.R6(`userPermissions`))
        self$`userPermissions` <- `userPermissions`
      }
      if (!is.null(`publicPermissions`)) {
        stopifnot(R6::is.R6(`publicPermissions`))
        self$`publicPermissions` <- `publicPermissions`
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
    #' @return AlbumFullResponse as a base R list.
    #' @examples
    #' # convert array of AlbumFullResponse (x) to a data frame
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
    #' Convert AlbumFullResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AlbumFullResponseObject <- list()
      if (!is.null(self$`valid`)) {
        AlbumFullResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        AlbumFullResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        AlbumFullResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        AlbumFullResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        AlbumFullResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        AlbumFullResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        AlbumFullResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`albumId`)) {
        AlbumFullResponseObject[["albumId"]] <-
          self$`albumId`
      }
      if (!is.null(self$`albumType`)) {
        AlbumFullResponseObject[["albumType"]] <-
          self$`albumType`
      }
      if (!is.null(self$`ownerId`)) {
        AlbumFullResponseObject[["ownerId"]] <-
          self$`ownerId`
      }
      if (!is.null(self$`owner`)) {
        AlbumFullResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`title`)) {
        AlbumFullResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        AlbumFullResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`coverAsset`)) {
        AlbumFullResponseObject[["coverAsset"]] <-
          self$extractSimpleType(self$`coverAsset`)
      }
      if (!is.null(self$`tags`)) {
        AlbumFullResponseObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`visibility`)) {
        AlbumFullResponseObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`startDate`)) {
        AlbumFullResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        AlbumFullResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`assetCount`)) {
        AlbumFullResponseObject[["assetCount"]] <-
          self$`assetCount`
      }
      if (!is.null(self$`likeCount`)) {
        AlbumFullResponseObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        AlbumFullResponseObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`commentsCount`)) {
        AlbumFullResponseObject[["commentsCount"]] <-
          self$`commentsCount`
      }
      if (!is.null(self$`userCount`)) {
        AlbumFullResponseObject[["userCount"]] <-
          self$`userCount`
      }
      if (!is.null(self$`notifications`)) {
        AlbumFullResponseObject[["notifications"]] <-
          self$`notifications`
      }
      if (!is.null(self$`latitude`)) {
        AlbumFullResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        AlbumFullResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        AlbumFullResponseObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`distance`)) {
        AlbumFullResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`dateCreated`)) {
        AlbumFullResponseObject[["dateCreated"]] <-
          self$`dateCreated`
      }
      if (!is.null(self$`dateUpdated`)) {
        AlbumFullResponseObject[["dateUpdated"]] <-
          self$`dateUpdated`
      }
      if (!is.null(self$`cellPhone`)) {
        AlbumFullResponseObject[["cellPhone"]] <-
          self$`cellPhone`
      }
      if (!is.null(self$`fullAddress`)) {
        AlbumFullResponseObject[["fullAddress"]] <-
          self$`fullAddress`
      }
      if (!is.null(self$`approvalStatus`)) {
        AlbumFullResponseObject[["approvalStatus"]] <-
          self$`approvalStatus`
      }
      if (!is.null(self$`favoriteCount`)) {
        AlbumFullResponseObject[["favoriteCount"]] <-
          self$`favoriteCount`
      }
      if (!is.null(self$`liked`)) {
        AlbumFullResponseObject[["liked"]] <-
          self$`liked`
      }
      if (!is.null(self$`favorite`)) {
        AlbumFullResponseObject[["favorite"]] <-
          self$`favorite`
      }
      if (!is.null(self$`favoriteId`)) {
        AlbumFullResponseObject[["favoriteId"]] <-
          self$`favoriteId`
      }
      if (!is.null(self$`anonymous`)) {
        AlbumFullResponseObject[["anonymous"]] <-
          self$`anonymous`
      }
      if (!is.null(self$`flagCount`)) {
        AlbumFullResponseObject[["flagCount"]] <-
          self$`flagCount`
      }
      if (!is.null(self$`viewedCount`)) {
        AlbumFullResponseObject[["viewedCount"]] <-
          self$`viewedCount`
      }
      if (!is.null(self$`clickedCount`)) {
        AlbumFullResponseObject[["clickedCount"]] <-
          self$`clickedCount`
      }
      if (!is.null(self$`sharedCount`)) {
        AlbumFullResponseObject[["sharedCount"]] <-
          self$`sharedCount`
      }
      if (!is.null(self$`assets`)) {
        AlbumFullResponseObject[["assets"]] <-
          self$extractSimpleType(self$`assets`)
      }
      if (!is.null(self$`comments`)) {
        AlbumFullResponseObject[["comments"]] <-
          self$extractSimpleType(self$`comments`)
      }
      if (!is.null(self$`likes`)) {
        AlbumFullResponseObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`connectionGroups`)) {
        AlbumFullResponseObject[["connectionGroups"]] <-
          self$extractSimpleType(self$`connectionGroups`)
      }
      if (!is.null(self$`connections`)) {
        AlbumFullResponseObject[["connections"]] <-
          self$extractSimpleType(self$`connections`)
      }
      if (!is.null(self$`hasLiked`)) {
        AlbumFullResponseObject[["hasLiked"]] <-
          self$`hasLiked`
      }
      if (!is.null(self$`hasDisliked`)) {
        AlbumFullResponseObject[["hasDisliked"]] <-
          self$`hasDisliked`
      }
      if (!is.null(self$`userPermissions`)) {
        AlbumFullResponseObject[["userPermissions"]] <-
          self$extractSimpleType(self$`userPermissions`)
      }
      if (!is.null(self$`publicPermissions`)) {
        AlbumFullResponseObject[["publicPermissions"]] <-
          self$extractSimpleType(self$`publicPermissions`)
      }
      if (!is.null(self$`returning`)) {
        AlbumFullResponseObject[["returning"]] <-
          self$`returning`
      }
      return(AlbumFullResponseObject)
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
    #' Deserialize JSON string into an instance of AlbumFullResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlbumFullResponse
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
      if (!is.null(this_object$`albumId`)) {
        self$`albumId` <- this_object$`albumId`
      }
      if (!is.null(this_object$`albumType`)) {
        self$`albumType` <- this_object$`albumType`
      }
      if (!is.null(this_object$`ownerId`)) {
        self$`ownerId` <- this_object$`ownerId`
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
      if (!is.null(this_object$`coverAsset`)) {
        `coverasset_object` <- AssetResponse$new()
        `coverasset_object`$fromJSON(jsonlite::toJSON(this_object$`coverAsset`, auto_unbox = TRUE, digits = NA))
        self$`coverAsset` <- `coverasset_object`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- this_object$`tags`
      }
      if (!is.null(this_object$`visibility`)) {
        if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`assetCount`)) {
        self$`assetCount` <- this_object$`assetCount`
      }
      if (!is.null(this_object$`likeCount`)) {
        self$`likeCount` <- this_object$`likeCount`
      }
      if (!is.null(this_object$`dislikeCount`)) {
        self$`dislikeCount` <- this_object$`dislikeCount`
      }
      if (!is.null(this_object$`commentsCount`)) {
        self$`commentsCount` <- this_object$`commentsCount`
      }
      if (!is.null(this_object$`userCount`)) {
        self$`userCount` <- this_object$`userCount`
      }
      if (!is.null(this_object$`notifications`)) {
        self$`notifications` <- this_object$`notifications`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`dateCreated`)) {
        self$`dateCreated` <- this_object$`dateCreated`
      }
      if (!is.null(this_object$`dateUpdated`)) {
        self$`dateUpdated` <- this_object$`dateUpdated`
      }
      if (!is.null(this_object$`cellPhone`)) {
        self$`cellPhone` <- this_object$`cellPhone`
      }
      if (!is.null(this_object$`fullAddress`)) {
        self$`fullAddress` <- this_object$`fullAddress`
      }
      if (!is.null(this_object$`approvalStatus`)) {
        if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        self$`approvalStatus` <- this_object$`approvalStatus`
      }
      if (!is.null(this_object$`favoriteCount`)) {
        self$`favoriteCount` <- this_object$`favoriteCount`
      }
      if (!is.null(this_object$`liked`)) {
        self$`liked` <- this_object$`liked`
      }
      if (!is.null(this_object$`favorite`)) {
        self$`favorite` <- this_object$`favorite`
      }
      if (!is.null(this_object$`favoriteId`)) {
        self$`favoriteId` <- this_object$`favoriteId`
      }
      if (!is.null(this_object$`anonymous`)) {
        self$`anonymous` <- this_object$`anonymous`
      }
      if (!is.null(this_object$`flagCount`)) {
        self$`flagCount` <- this_object$`flagCount`
      }
      if (!is.null(this_object$`viewedCount`)) {
        self$`viewedCount` <- this_object$`viewedCount`
      }
      if (!is.null(this_object$`clickedCount`)) {
        self$`clickedCount` <- this_object$`clickedCount`
      }
      if (!is.null(this_object$`sharedCount`)) {
        self$`sharedCount` <- this_object$`sharedCount`
      }
      if (!is.null(this_object$`assets`)) {
        self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[AssetResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`comments`)) {
        self$`comments` <- ApiClient$new()$deserializeObj(this_object$`comments`, "array[NoteFullResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`likes`)) {
        self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[LikeResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`connectionGroups`)) {
        self$`connectionGroups` <- ApiClient$new()$deserializeObj(this_object$`connectionGroups`, "array[ConnectionGroupShortResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`connections`)) {
        self$`connections` <- ApiClient$new()$deserializeObj(this_object$`connections`, "array[ConnectionResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`hasLiked`)) {
        self$`hasLiked` <- this_object$`hasLiked`
      }
      if (!is.null(this_object$`hasDisliked`)) {
        self$`hasDisliked` <- this_object$`hasDisliked`
      }
      if (!is.null(this_object$`userPermissions`)) {
        `userpermissions_object` <- Permissions$new()
        `userpermissions_object`$fromJSON(jsonlite::toJSON(this_object$`userPermissions`, auto_unbox = TRUE, digits = NA))
        self$`userPermissions` <- `userpermissions_object`
      }
      if (!is.null(this_object$`publicPermissions`)) {
        `publicpermissions_object` <- Permissions$new()
        `publicpermissions_object`$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
        self$`publicPermissions` <- `publicpermissions_object`
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
    #' @return AlbumFullResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AlbumFullResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlbumFullResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`albumId` <- this_object$`albumId`
      self$`albumType` <- this_object$`albumType`
      self$`ownerId` <- this_object$`ownerId`
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`coverAsset` <- AssetResponse$new()$fromJSON(jsonlite::toJSON(this_object$`coverAsset`, auto_unbox = TRUE, digits = NA))
      self$`tags` <- this_object$`tags`
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`assetCount` <- this_object$`assetCount`
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`commentsCount` <- this_object$`commentsCount`
      self$`userCount` <- this_object$`userCount`
      self$`notifications` <- this_object$`notifications`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`distance` <- this_object$`distance`
      self$`dateCreated` <- this_object$`dateCreated`
      self$`dateUpdated` <- this_object$`dateUpdated`
      self$`cellPhone` <- this_object$`cellPhone`
      self$`fullAddress` <- this_object$`fullAddress`
      if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
        stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
      }
      self$`approvalStatus` <- this_object$`approvalStatus`
      self$`favoriteCount` <- this_object$`favoriteCount`
      self$`liked` <- this_object$`liked`
      self$`favorite` <- this_object$`favorite`
      self$`favoriteId` <- this_object$`favoriteId`
      self$`anonymous` <- this_object$`anonymous`
      self$`flagCount` <- this_object$`flagCount`
      self$`viewedCount` <- this_object$`viewedCount`
      self$`clickedCount` <- this_object$`clickedCount`
      self$`sharedCount` <- this_object$`sharedCount`
      self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[AssetResponse]", loadNamespace("openapi"))
      self$`comments` <- ApiClient$new()$deserializeObj(this_object$`comments`, "array[NoteFullResponse]", loadNamespace("openapi"))
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[LikeResponse]", loadNamespace("openapi"))
      self$`connectionGroups` <- ApiClient$new()$deserializeObj(this_object$`connectionGroups`, "array[ConnectionGroupShortResponse]", loadNamespace("openapi"))
      self$`connections` <- ApiClient$new()$deserializeObj(this_object$`connections`, "array[ConnectionResponse]", loadNamespace("openapi"))
      self$`hasLiked` <- this_object$`hasLiked`
      self$`hasDisliked` <- this_object$`hasDisliked`
      self$`userPermissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`userPermissions`, auto_unbox = TRUE, digits = NA))
      self$`publicPermissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to AlbumFullResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AlbumFullResponse
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
# AlbumFullResponse$unlock()
#
## Below is an example to define the print function
# AlbumFullResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AlbumFullResponse$lock()

