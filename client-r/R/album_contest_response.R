#' Create a new AlbumContestResponse
#'
#' @description
#' AlbumContestResponse Class
#'
#' @docType class
#' @title AlbumContestResponse
#' @description AlbumContestResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field albumContestId  integer [optional]
#' @field contestType  character [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field visibility  character [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field commentsCount  integer [optional]
#' @field userCount  integer [optional]
#' @field comments  list(\link{NoteFullResponse}) [optional]
#' @field likes  list(\link{LikeResponse}) [optional]
#' @field connectionGroups  list(\link{ConnectionGroupShortResponse}) [optional]
#' @field connections  list(\link{ConnectionResponse}) [optional]
#' @field hasLiked  character [optional]
#' @field userPermissions  \link{Permissions} [optional]
#' @field publicPermissions  \link{Permissions} [optional]
#' @field album1  \link{AlbumFullResponse} [optional]
#' @field album2  \link{AlbumFullResponse} [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field distance  numeric [optional]
#' @field dateCreated  integer [optional]
#' @field dateUpdated  integer [optional]
#' @field approvalStatus  character [optional]
#' @field voteCount  integer [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AlbumContestResponse <- R6::R6Class(
  "AlbumContestResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `albumContestId` = NULL,
    `contestType` = NULL,
    `owner` = NULL,
    `title` = NULL,
    `description` = NULL,
    `visibility` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `commentsCount` = NULL,
    `userCount` = NULL,
    `comments` = NULL,
    `likes` = NULL,
    `connectionGroups` = NULL,
    `connections` = NULL,
    `hasLiked` = NULL,
    `userPermissions` = NULL,
    `publicPermissions` = NULL,
    `album1` = NULL,
    `album2` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `distance` = NULL,
    `dateCreated` = NULL,
    `dateUpdated` = NULL,
    `approvalStatus` = NULL,
    `voteCount` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new AlbumContestResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param albumContestId albumContestId
    #' @param contestType contestType
    #' @param owner owner
    #' @param title title
    #' @param description description
    #' @param visibility visibility
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param commentsCount commentsCount
    #' @param userCount userCount
    #' @param comments comments
    #' @param likes likes
    #' @param connectionGroups connectionGroups
    #' @param connections connections
    #' @param hasLiked hasLiked
    #' @param userPermissions userPermissions
    #' @param publicPermissions publicPermissions
    #' @param album1 album1
    #' @param album2 album2
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param distance distance
    #' @param dateCreated dateCreated
    #' @param dateUpdated dateUpdated
    #' @param approvalStatus approvalStatus
    #' @param voteCount voteCount
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `albumContestId` = NULL, `contestType` = NULL, `owner` = NULL, `title` = NULL, `description` = NULL, `visibility` = NULL, `startDate` = NULL, `endDate` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `commentsCount` = NULL, `userCount` = NULL, `comments` = NULL, `likes` = NULL, `connectionGroups` = NULL, `connections` = NULL, `hasLiked` = NULL, `userPermissions` = NULL, `publicPermissions` = NULL, `album1` = NULL, `album2` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `distance` = NULL, `dateCreated` = NULL, `dateUpdated` = NULL, `approvalStatus` = NULL, `voteCount` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`albumContestId`)) {
        if (!(is.numeric(`albumContestId`) && length(`albumContestId`) == 1)) {
          stop(paste("Error! Invalid data for `albumContestId`. Must be an integer:", `albumContestId`))
        }
        self$`albumContestId` <- `albumContestId`
      }
      if (!is.null(`contestType`)) {
        if (!(is.character(`contestType`) && length(`contestType`) == 1)) {
          stop(paste("Error! Invalid data for `contestType`. Must be a string:", `contestType`))
        }
        self$`contestType` <- `contestType`
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
      if (!is.null(`userPermissions`)) {
        stopifnot(R6::is.R6(`userPermissions`))
        self$`userPermissions` <- `userPermissions`
      }
      if (!is.null(`publicPermissions`)) {
        stopifnot(R6::is.R6(`publicPermissions`))
        self$`publicPermissions` <- `publicPermissions`
      }
      if (!is.null(`album1`)) {
        stopifnot(R6::is.R6(`album1`))
        self$`album1` <- `album1`
      }
      if (!is.null(`album2`)) {
        stopifnot(R6::is.R6(`album2`))
        self$`album2` <- `album2`
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
      if (!is.null(`approvalStatus`)) {
        if (!(`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", `approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        if (!(is.character(`approvalStatus`) && length(`approvalStatus`) == 1)) {
          stop(paste("Error! Invalid data for `approvalStatus`. Must be a string:", `approvalStatus`))
        }
        self$`approvalStatus` <- `approvalStatus`
      }
      if (!is.null(`voteCount`)) {
        if (!(is.numeric(`voteCount`) && length(`voteCount`) == 1)) {
          stop(paste("Error! Invalid data for `voteCount`. Must be an integer:", `voteCount`))
        }
        self$`voteCount` <- `voteCount`
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
    #' @return AlbumContestResponse as a base R list.
    #' @examples
    #' # convert array of AlbumContestResponse (x) to a data frame
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
    #' Convert AlbumContestResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AlbumContestResponseObject <- list()
      if (!is.null(self$`valid`)) {
        AlbumContestResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        AlbumContestResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        AlbumContestResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        AlbumContestResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        AlbumContestResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        AlbumContestResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        AlbumContestResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`albumContestId`)) {
        AlbumContestResponseObject[["albumContestId"]] <-
          self$`albumContestId`
      }
      if (!is.null(self$`contestType`)) {
        AlbumContestResponseObject[["contestType"]] <-
          self$`contestType`
      }
      if (!is.null(self$`owner`)) {
        AlbumContestResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`title`)) {
        AlbumContestResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        AlbumContestResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`visibility`)) {
        AlbumContestResponseObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`startDate`)) {
        AlbumContestResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        AlbumContestResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`likeCount`)) {
        AlbumContestResponseObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        AlbumContestResponseObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`commentsCount`)) {
        AlbumContestResponseObject[["commentsCount"]] <-
          self$`commentsCount`
      }
      if (!is.null(self$`userCount`)) {
        AlbumContestResponseObject[["userCount"]] <-
          self$`userCount`
      }
      if (!is.null(self$`comments`)) {
        AlbumContestResponseObject[["comments"]] <-
          self$extractSimpleType(self$`comments`)
      }
      if (!is.null(self$`likes`)) {
        AlbumContestResponseObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`connectionGroups`)) {
        AlbumContestResponseObject[["connectionGroups"]] <-
          self$extractSimpleType(self$`connectionGroups`)
      }
      if (!is.null(self$`connections`)) {
        AlbumContestResponseObject[["connections"]] <-
          self$extractSimpleType(self$`connections`)
      }
      if (!is.null(self$`hasLiked`)) {
        AlbumContestResponseObject[["hasLiked"]] <-
          self$`hasLiked`
      }
      if (!is.null(self$`userPermissions`)) {
        AlbumContestResponseObject[["userPermissions"]] <-
          self$extractSimpleType(self$`userPermissions`)
      }
      if (!is.null(self$`publicPermissions`)) {
        AlbumContestResponseObject[["publicPermissions"]] <-
          self$extractSimpleType(self$`publicPermissions`)
      }
      if (!is.null(self$`album1`)) {
        AlbumContestResponseObject[["album1"]] <-
          self$extractSimpleType(self$`album1`)
      }
      if (!is.null(self$`album2`)) {
        AlbumContestResponseObject[["album2"]] <-
          self$extractSimpleType(self$`album2`)
      }
      if (!is.null(self$`latitude`)) {
        AlbumContestResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        AlbumContestResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        AlbumContestResponseObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`distance`)) {
        AlbumContestResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`dateCreated`)) {
        AlbumContestResponseObject[["dateCreated"]] <-
          self$`dateCreated`
      }
      if (!is.null(self$`dateUpdated`)) {
        AlbumContestResponseObject[["dateUpdated"]] <-
          self$`dateUpdated`
      }
      if (!is.null(self$`approvalStatus`)) {
        AlbumContestResponseObject[["approvalStatus"]] <-
          self$`approvalStatus`
      }
      if (!is.null(self$`voteCount`)) {
        AlbumContestResponseObject[["voteCount"]] <-
          self$`voteCount`
      }
      if (!is.null(self$`returning`)) {
        AlbumContestResponseObject[["returning"]] <-
          self$`returning`
      }
      return(AlbumContestResponseObject)
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
    #' Deserialize JSON string into an instance of AlbumContestResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlbumContestResponse
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
      if (!is.null(this_object$`albumContestId`)) {
        self$`albumContestId` <- this_object$`albumContestId`
      }
      if (!is.null(this_object$`contestType`)) {
        self$`contestType` <- this_object$`contestType`
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
      if (!is.null(this_object$`album1`)) {
        `album1_object` <- AlbumFullResponse$new()
        `album1_object`$fromJSON(jsonlite::toJSON(this_object$`album1`, auto_unbox = TRUE, digits = NA))
        self$`album1` <- `album1_object`
      }
      if (!is.null(this_object$`album2`)) {
        `album2_object` <- AlbumFullResponse$new()
        `album2_object`$fromJSON(jsonlite::toJSON(this_object$`album2`, auto_unbox = TRUE, digits = NA))
        self$`album2` <- `album2_object`
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
      if (!is.null(this_object$`approvalStatus`)) {
        if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        self$`approvalStatus` <- this_object$`approvalStatus`
      }
      if (!is.null(this_object$`voteCount`)) {
        self$`voteCount` <- this_object$`voteCount`
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
    #' @return AlbumContestResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AlbumContestResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AlbumContestResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`albumContestId` <- this_object$`albumContestId`
      self$`contestType` <- this_object$`contestType`
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`commentsCount` <- this_object$`commentsCount`
      self$`userCount` <- this_object$`userCount`
      self$`comments` <- ApiClient$new()$deserializeObj(this_object$`comments`, "array[NoteFullResponse]", loadNamespace("openapi"))
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[LikeResponse]", loadNamespace("openapi"))
      self$`connectionGroups` <- ApiClient$new()$deserializeObj(this_object$`connectionGroups`, "array[ConnectionGroupShortResponse]", loadNamespace("openapi"))
      self$`connections` <- ApiClient$new()$deserializeObj(this_object$`connections`, "array[ConnectionResponse]", loadNamespace("openapi"))
      self$`hasLiked` <- this_object$`hasLiked`
      self$`userPermissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`userPermissions`, auto_unbox = TRUE, digits = NA))
      self$`publicPermissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
      self$`album1` <- AlbumFullResponse$new()$fromJSON(jsonlite::toJSON(this_object$`album1`, auto_unbox = TRUE, digits = NA))
      self$`album2` <- AlbumFullResponse$new()$fromJSON(jsonlite::toJSON(this_object$`album2`, auto_unbox = TRUE, digits = NA))
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`distance` <- this_object$`distance`
      self$`dateCreated` <- this_object$`dateCreated`
      self$`dateUpdated` <- this_object$`dateUpdated`
      if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
        stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
      }
      self$`approvalStatus` <- this_object$`approvalStatus`
      self$`voteCount` <- this_object$`voteCount`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to AlbumContestResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AlbumContestResponse
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
# AlbumContestResponse$unlock()
#
## Below is an example to define the print function
# AlbumContestResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AlbumContestResponse$lock()

