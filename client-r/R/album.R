#' Create a new Album
#'
#' @description
#' Album Class
#'
#' @docType class
#' @title Album
#' @description Album Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field owner  \link{Account} [optional]
#' @field title  character [optional]
#' @field application  \link{Application} [optional]
#' @field approvalStatus  character [optional]
#' @field publicPermissions  \link{Permissions} [optional]
#' @field userPermissions  list(\link{UserPermissions}) [optional]
#' @field visibility  character [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field likes  list(\link{YayOrNay}) [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field flags  list(\link{Flag}) [optional]
#' @field flagCount  integer [optional]
#' @field flagThreshold  \link{FlagThreshold} [optional]
#' @field description  character [optional]
#' @field albumType  character [optional]
#' @field assets  list(\link{Asset}) [optional]
#' @field coverAsset  \link{Asset} [optional]
#' @field tags  character [optional]
#' @field startDate  character [optional]
#' @field endDate  character [optional]
#' @field contactInfo  \link{ContactInfo} [optional]
#' @field assetCount  integer [optional]
#' @field favoriteCount  integer [optional]
#' @field viewedCount  integer [optional]
#' @field clickedCount  integer [optional]
#' @field sharedCount  integer [optional]
#' @field anonymous  character [optional]
#' @field ownerUsername  character [optional]
#' @field display  character [optional]
#' @field appKey  character [optional]
#' @field billableId  integer [optional]
#' @field subType  character [optional]
#' @field contentAsset  \link{Asset} [optional]
#' @field secondaryType  character [optional]
#' @field contentName  character [optional]
#' @field applicationTitle  character [optional]
#' @field shortTitle  character [optional]
#' @field defaultThreshold  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Album <- R6::R6Class(
  "Album",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `owner` = NULL,
    `title` = NULL,
    `application` = NULL,
    `approvalStatus` = NULL,
    `publicPermissions` = NULL,
    `userPermissions` = NULL,
    `visibility` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `likes` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `flags` = NULL,
    `flagCount` = NULL,
    `flagThreshold` = NULL,
    `description` = NULL,
    `albumType` = NULL,
    `assets` = NULL,
    `coverAsset` = NULL,
    `tags` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `contactInfo` = NULL,
    `assetCount` = NULL,
    `favoriteCount` = NULL,
    `viewedCount` = NULL,
    `clickedCount` = NULL,
    `sharedCount` = NULL,
    `anonymous` = NULL,
    `ownerUsername` = NULL,
    `display` = NULL,
    `appKey` = NULL,
    `billableId` = NULL,
    `subType` = NULL,
    `contentAsset` = NULL,
    `secondaryType` = NULL,
    `contentName` = NULL,
    `applicationTitle` = NULL,
    `shortTitle` = NULL,
    `defaultThreshold` = NULL,

    #' @description
    #' Initialize a new Album class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param owner owner
    #' @param title title
    #' @param application application
    #' @param approvalStatus approvalStatus
    #' @param publicPermissions publicPermissions
    #' @param userPermissions userPermissions
    #' @param visibility visibility
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param likes likes
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param flags flags
    #' @param flagCount flagCount
    #' @param flagThreshold flagThreshold
    #' @param description description
    #' @param albumType albumType
    #' @param assets assets
    #' @param coverAsset coverAsset
    #' @param tags tags
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param contactInfo contactInfo
    #' @param assetCount assetCount
    #' @param favoriteCount favoriteCount
    #' @param viewedCount viewedCount
    #' @param clickedCount clickedCount
    #' @param sharedCount sharedCount
    #' @param anonymous anonymous
    #' @param ownerUsername ownerUsername
    #' @param display display
    #' @param appKey appKey
    #' @param billableId billableId
    #' @param subType subType
    #' @param contentAsset contentAsset
    #' @param secondaryType secondaryType
    #' @param contentName contentName
    #' @param applicationTitle applicationTitle
    #' @param shortTitle shortTitle
    #' @param defaultThreshold defaultThreshold
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `owner` = NULL, `title` = NULL, `application` = NULL, `approvalStatus` = NULL, `publicPermissions` = NULL, `userPermissions` = NULL, `visibility` = NULL, `notes` = NULL, `noteCount` = NULL, `likes` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `flags` = NULL, `flagCount` = NULL, `flagThreshold` = NULL, `description` = NULL, `albumType` = NULL, `assets` = NULL, `coverAsset` = NULL, `tags` = NULL, `startDate` = NULL, `endDate` = NULL, `contactInfo` = NULL, `assetCount` = NULL, `favoriteCount` = NULL, `viewedCount` = NULL, `clickedCount` = NULL, `sharedCount` = NULL, `anonymous` = NULL, `ownerUsername` = NULL, `display` = NULL, `appKey` = NULL, `billableId` = NULL, `subType` = NULL, `contentAsset` = NULL, `secondaryType` = NULL, `contentName` = NULL, `applicationTitle` = NULL, `shortTitle` = NULL, `defaultThreshold` = NULL, ...) {
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
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`albumType`)) {
        if (!(is.character(`albumType`) && length(`albumType`) == 1)) {
          stop(paste("Error! Invalid data for `albumType`. Must be a string:", `albumType`))
        }
        self$`albumType` <- `albumType`
      }
      if (!is.null(`assets`)) {
        stopifnot(is.vector(`assets`), length(`assets`) != 0)
        sapply(`assets`, function(x) stopifnot(R6::is.R6(x)))
        self$`assets` <- `assets`
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
      if (!is.null(`contactInfo`)) {
        stopifnot(R6::is.R6(`contactInfo`))
        self$`contactInfo` <- `contactInfo`
      }
      if (!is.null(`assetCount`)) {
        if (!(is.numeric(`assetCount`) && length(`assetCount`) == 1)) {
          stop(paste("Error! Invalid data for `assetCount`. Must be an integer:", `assetCount`))
        }
        self$`assetCount` <- `assetCount`
      }
      if (!is.null(`favoriteCount`)) {
        if (!(is.numeric(`favoriteCount`) && length(`favoriteCount`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteCount`. Must be an integer:", `favoriteCount`))
        }
        self$`favoriteCount` <- `favoriteCount`
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
      if (!is.null(`anonymous`)) {
        if (!(is.logical(`anonymous`) && length(`anonymous`) == 1)) {
          stop(paste("Error! Invalid data for `anonymous`. Must be a boolean:", `anonymous`))
        }
        self$`anonymous` <- `anonymous`
      }
      if (!is.null(`ownerUsername`)) {
        if (!(is.character(`ownerUsername`) && length(`ownerUsername`) == 1)) {
          stop(paste("Error! Invalid data for `ownerUsername`. Must be a string:", `ownerUsername`))
        }
        self$`ownerUsername` <- `ownerUsername`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`billableId`)) {
        if (!(is.numeric(`billableId`) && length(`billableId`) == 1)) {
          stop(paste("Error! Invalid data for `billableId`. Must be an integer:", `billableId`))
        }
        self$`billableId` <- `billableId`
      }
      if (!is.null(`subType`)) {
        if (!(is.character(`subType`) && length(`subType`) == 1)) {
          stop(paste("Error! Invalid data for `subType`. Must be a string:", `subType`))
        }
        self$`subType` <- `subType`
      }
      if (!is.null(`contentAsset`)) {
        stopifnot(R6::is.R6(`contentAsset`))
        self$`contentAsset` <- `contentAsset`
      }
      if (!is.null(`secondaryType`)) {
        if (!(is.character(`secondaryType`) && length(`secondaryType`) == 1)) {
          stop(paste("Error! Invalid data for `secondaryType`. Must be a string:", `secondaryType`))
        }
        self$`secondaryType` <- `secondaryType`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`applicationTitle`)) {
        if (!(is.character(`applicationTitle`) && length(`applicationTitle`) == 1)) {
          stop(paste("Error! Invalid data for `applicationTitle`. Must be a string:", `applicationTitle`))
        }
        self$`applicationTitle` <- `applicationTitle`
      }
      if (!is.null(`shortTitle`)) {
        if (!(is.character(`shortTitle`) && length(`shortTitle`) == 1)) {
          stop(paste("Error! Invalid data for `shortTitle`. Must be a string:", `shortTitle`))
        }
        self$`shortTitle` <- `shortTitle`
      }
      if (!is.null(`defaultThreshold`)) {
        if (!(is.numeric(`defaultThreshold`) && length(`defaultThreshold`) == 1)) {
          stop(paste("Error! Invalid data for `defaultThreshold`. Must be an integer:", `defaultThreshold`))
        }
        self$`defaultThreshold` <- `defaultThreshold`
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
    #' @return Album as a base R list.
    #' @examples
    #' # convert array of Album (x) to a data frame
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
    #' Convert Album to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AlbumObject <- list()
      if (!is.null(self$`id`)) {
        AlbumObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        AlbumObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        AlbumObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        AlbumObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        AlbumObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        AlbumObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`owner`)) {
        AlbumObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`title`)) {
        AlbumObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`application`)) {
        AlbumObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`approvalStatus`)) {
        AlbumObject[["approvalStatus"]] <-
          self$`approvalStatus`
      }
      if (!is.null(self$`publicPermissions`)) {
        AlbumObject[["publicPermissions"]] <-
          self$extractSimpleType(self$`publicPermissions`)
      }
      if (!is.null(self$`userPermissions`)) {
        AlbumObject[["userPermissions"]] <-
          self$extractSimpleType(self$`userPermissions`)
      }
      if (!is.null(self$`visibility`)) {
        AlbumObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`notes`)) {
        AlbumObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        AlbumObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`likes`)) {
        AlbumObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`likeCount`)) {
        AlbumObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        AlbumObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`flags`)) {
        AlbumObject[["flags"]] <-
          self$extractSimpleType(self$`flags`)
      }
      if (!is.null(self$`flagCount`)) {
        AlbumObject[["flagCount"]] <-
          self$`flagCount`
      }
      if (!is.null(self$`flagThreshold`)) {
        AlbumObject[["flagThreshold"]] <-
          self$extractSimpleType(self$`flagThreshold`)
      }
      if (!is.null(self$`description`)) {
        AlbumObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`albumType`)) {
        AlbumObject[["albumType"]] <-
          self$`albumType`
      }
      if (!is.null(self$`assets`)) {
        AlbumObject[["assets"]] <-
          self$extractSimpleType(self$`assets`)
      }
      if (!is.null(self$`coverAsset`)) {
        AlbumObject[["coverAsset"]] <-
          self$extractSimpleType(self$`coverAsset`)
      }
      if (!is.null(self$`tags`)) {
        AlbumObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`startDate`)) {
        AlbumObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        AlbumObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`contactInfo`)) {
        AlbumObject[["contactInfo"]] <-
          self$extractSimpleType(self$`contactInfo`)
      }
      if (!is.null(self$`assetCount`)) {
        AlbumObject[["assetCount"]] <-
          self$`assetCount`
      }
      if (!is.null(self$`favoriteCount`)) {
        AlbumObject[["favoriteCount"]] <-
          self$`favoriteCount`
      }
      if (!is.null(self$`viewedCount`)) {
        AlbumObject[["viewedCount"]] <-
          self$`viewedCount`
      }
      if (!is.null(self$`clickedCount`)) {
        AlbumObject[["clickedCount"]] <-
          self$`clickedCount`
      }
      if (!is.null(self$`sharedCount`)) {
        AlbumObject[["sharedCount"]] <-
          self$`sharedCount`
      }
      if (!is.null(self$`anonymous`)) {
        AlbumObject[["anonymous"]] <-
          self$`anonymous`
      }
      if (!is.null(self$`ownerUsername`)) {
        AlbumObject[["ownerUsername"]] <-
          self$`ownerUsername`
      }
      if (!is.null(self$`display`)) {
        AlbumObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`appKey`)) {
        AlbumObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`billableId`)) {
        AlbumObject[["billableId"]] <-
          self$`billableId`
      }
      if (!is.null(self$`subType`)) {
        AlbumObject[["subType"]] <-
          self$`subType`
      }
      if (!is.null(self$`contentAsset`)) {
        AlbumObject[["contentAsset"]] <-
          self$extractSimpleType(self$`contentAsset`)
      }
      if (!is.null(self$`secondaryType`)) {
        AlbumObject[["secondaryType"]] <-
          self$`secondaryType`
      }
      if (!is.null(self$`contentName`)) {
        AlbumObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`applicationTitle`)) {
        AlbumObject[["applicationTitle"]] <-
          self$`applicationTitle`
      }
      if (!is.null(self$`shortTitle`)) {
        AlbumObject[["shortTitle"]] <-
          self$`shortTitle`
      }
      if (!is.null(self$`defaultThreshold`)) {
        AlbumObject[["defaultThreshold"]] <-
          self$`defaultThreshold`
      }
      return(AlbumObject)
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
    #' Deserialize JSON string into an instance of Album
    #'
    #' @param input_json the JSON input
    #' @return the instance of Album
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
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`approvalStatus`)) {
        if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
          stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
        }
        self$`approvalStatus` <- this_object$`approvalStatus`
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
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`albumType`)) {
        self$`albumType` <- this_object$`albumType`
      }
      if (!is.null(this_object$`assets`)) {
        self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[Asset]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`coverAsset`)) {
        `coverasset_object` <- Asset$new()
        `coverasset_object`$fromJSON(jsonlite::toJSON(this_object$`coverAsset`, auto_unbox = TRUE, digits = NA))
        self$`coverAsset` <- `coverasset_object`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- this_object$`tags`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`contactInfo`)) {
        `contactinfo_object` <- ContactInfo$new()
        `contactinfo_object`$fromJSON(jsonlite::toJSON(this_object$`contactInfo`, auto_unbox = TRUE, digits = NA))
        self$`contactInfo` <- `contactinfo_object`
      }
      if (!is.null(this_object$`assetCount`)) {
        self$`assetCount` <- this_object$`assetCount`
      }
      if (!is.null(this_object$`favoriteCount`)) {
        self$`favoriteCount` <- this_object$`favoriteCount`
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
      if (!is.null(this_object$`anonymous`)) {
        self$`anonymous` <- this_object$`anonymous`
      }
      if (!is.null(this_object$`ownerUsername`)) {
        self$`ownerUsername` <- this_object$`ownerUsername`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`billableId`)) {
        self$`billableId` <- this_object$`billableId`
      }
      if (!is.null(this_object$`subType`)) {
        self$`subType` <- this_object$`subType`
      }
      if (!is.null(this_object$`contentAsset`)) {
        `contentasset_object` <- Asset$new()
        `contentasset_object`$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
        self$`contentAsset` <- `contentasset_object`
      }
      if (!is.null(this_object$`secondaryType`)) {
        self$`secondaryType` <- this_object$`secondaryType`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`applicationTitle`)) {
        self$`applicationTitle` <- this_object$`applicationTitle`
      }
      if (!is.null(this_object$`shortTitle`)) {
        self$`shortTitle` <- this_object$`shortTitle`
      }
      if (!is.null(this_object$`defaultThreshold`)) {
        self$`defaultThreshold` <- this_object$`defaultThreshold`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Album in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Album
    #'
    #' @param input_json the JSON input
    #' @return the instance of Album
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`title` <- this_object$`title`
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`approvalStatus`) && !(this_object$`approvalStatus` %in% c("PENDING", "REJECTED", "APPROVED", "FEATURED"))) {
        stop(paste("Error! \"", this_object$`approvalStatus`, "\" cannot be assigned to `approvalStatus`. Must be \"PENDING\", \"REJECTED\", \"APPROVED\", \"FEATURED\".", sep = ""))
      }
      self$`approvalStatus` <- this_object$`approvalStatus`
      self$`publicPermissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`publicPermissions`, auto_unbox = TRUE, digits = NA))
      self$`userPermissions` <- ApiClient$new()$deserializeObj(this_object$`userPermissions`, "array[UserPermissions]", loadNamespace("openapi"))
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[YayOrNay]", loadNamespace("openapi"))
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`flags` <- ApiClient$new()$deserializeObj(this_object$`flags`, "array[Flag]", loadNamespace("openapi"))
      self$`flagCount` <- this_object$`flagCount`
      self$`flagThreshold` <- FlagThreshold$new()$fromJSON(jsonlite::toJSON(this_object$`flagThreshold`, auto_unbox = TRUE, digits = NA))
      self$`description` <- this_object$`description`
      self$`albumType` <- this_object$`albumType`
      self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[Asset]", loadNamespace("openapi"))
      self$`coverAsset` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`coverAsset`, auto_unbox = TRUE, digits = NA))
      self$`tags` <- this_object$`tags`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`contactInfo` <- ContactInfo$new()$fromJSON(jsonlite::toJSON(this_object$`contactInfo`, auto_unbox = TRUE, digits = NA))
      self$`assetCount` <- this_object$`assetCount`
      self$`favoriteCount` <- this_object$`favoriteCount`
      self$`viewedCount` <- this_object$`viewedCount`
      self$`clickedCount` <- this_object$`clickedCount`
      self$`sharedCount` <- this_object$`sharedCount`
      self$`anonymous` <- this_object$`anonymous`
      self$`ownerUsername` <- this_object$`ownerUsername`
      self$`display` <- this_object$`display`
      self$`appKey` <- this_object$`appKey`
      self$`billableId` <- this_object$`billableId`
      self$`subType` <- this_object$`subType`
      self$`contentAsset` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
      self$`secondaryType` <- this_object$`secondaryType`
      self$`contentName` <- this_object$`contentName`
      self$`applicationTitle` <- this_object$`applicationTitle`
      self$`shortTitle` <- this_object$`shortTitle`
      self$`defaultThreshold` <- this_object$`defaultThreshold`
      self
    },

    #' @description
    #' Validate JSON input with respect to Album and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Album
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
# Album$unlock()
#
## Below is an example to define the print function
# Album$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Album$lock()

