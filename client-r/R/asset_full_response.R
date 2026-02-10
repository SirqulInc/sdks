#' Create a new AssetFullResponse
#'
#' @description
#' AssetFullResponse Class
#'
#' @docType class
#' @title AssetFullResponse
#' @description AssetFullResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field assetId  integer [optional]
#' @field fileName  character [optional]
#' @field caption  character [optional]
#' @field mediaType  character [optional]
#' @field thumbnailURL  character [optional]
#' @field coverURL  character [optional]
#' @field fullURL  character [optional]
#' @field assetVersion  character [optional]
#' @field versionName  character [optional]
#' @field versionCode  integer [optional]
#' @field display  character [optional]
#' @field locationDescription  character [optional]
#' @field uploader  \link{AccountShortResponse} [optional]
#' @field likesCount  integer [optional]
#' @field commentsCount  integer [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field attachedMediaType  character [optional]
#' @field attachedAssetURL  character [optional]
#' @field created  integer [optional]
#' @field updated  integer [optional]
#' @field searchTags  character [optional]
#' @field metaData  character [optional]
#' @field comments  list(\link{NoteFullResponse}) [optional]
#' @field likes  list(\link{LikeResponse}) [optional]
#' @field hasLiked  character [optional]
#' @field hasDisliked  character [optional]
#' @field metFlagThreshold  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AssetFullResponse <- R6::R6Class(
  "AssetFullResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `assetId` = NULL,
    `fileName` = NULL,
    `caption` = NULL,
    `mediaType` = NULL,
    `thumbnailURL` = NULL,
    `coverURL` = NULL,
    `fullURL` = NULL,
    `assetVersion` = NULL,
    `versionName` = NULL,
    `versionCode` = NULL,
    `display` = NULL,
    `locationDescription` = NULL,
    `uploader` = NULL,
    `likesCount` = NULL,
    `commentsCount` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `attachedMediaType` = NULL,
    `attachedAssetURL` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `searchTags` = NULL,
    `metaData` = NULL,
    `comments` = NULL,
    `likes` = NULL,
    `hasLiked` = NULL,
    `hasDisliked` = NULL,
    `metFlagThreshold` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new AssetFullResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param assetId assetId
    #' @param fileName fileName
    #' @param caption caption
    #' @param mediaType mediaType
    #' @param thumbnailURL thumbnailURL
    #' @param coverURL coverURL
    #' @param fullURL fullURL
    #' @param assetVersion assetVersion
    #' @param versionName versionName
    #' @param versionCode versionCode
    #' @param display display
    #' @param locationDescription locationDescription
    #' @param uploader uploader
    #' @param likesCount likesCount
    #' @param commentsCount commentsCount
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param attachedMediaType attachedMediaType
    #' @param attachedAssetURL attachedAssetURL
    #' @param created created
    #' @param updated updated
    #' @param searchTags searchTags
    #' @param metaData metaData
    #' @param comments comments
    #' @param likes likes
    #' @param hasLiked hasLiked
    #' @param hasDisliked hasDisliked
    #' @param metFlagThreshold metFlagThreshold
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `assetId` = NULL, `fileName` = NULL, `caption` = NULL, `mediaType` = NULL, `thumbnailURL` = NULL, `coverURL` = NULL, `fullURL` = NULL, `assetVersion` = NULL, `versionName` = NULL, `versionCode` = NULL, `display` = NULL, `locationDescription` = NULL, `uploader` = NULL, `likesCount` = NULL, `commentsCount` = NULL, `latitude` = NULL, `longitude` = NULL, `attachedMediaType` = NULL, `attachedAssetURL` = NULL, `created` = NULL, `updated` = NULL, `searchTags` = NULL, `metaData` = NULL, `comments` = NULL, `likes` = NULL, `hasLiked` = NULL, `hasDisliked` = NULL, `metFlagThreshold` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`assetId`)) {
        if (!(is.numeric(`assetId`) && length(`assetId`) == 1)) {
          stop(paste("Error! Invalid data for `assetId`. Must be an integer:", `assetId`))
        }
        self$`assetId` <- `assetId`
      }
      if (!is.null(`fileName`)) {
        if (!(is.character(`fileName`) && length(`fileName`) == 1)) {
          stop(paste("Error! Invalid data for `fileName`. Must be a string:", `fileName`))
        }
        self$`fileName` <- `fileName`
      }
      if (!is.null(`caption`)) {
        if (!(is.character(`caption`) && length(`caption`) == 1)) {
          stop(paste("Error! Invalid data for `caption`. Must be a string:", `caption`))
        }
        self$`caption` <- `caption`
      }
      if (!is.null(`mediaType`)) {
        if (!(is.character(`mediaType`) && length(`mediaType`) == 1)) {
          stop(paste("Error! Invalid data for `mediaType`. Must be a string:", `mediaType`))
        }
        self$`mediaType` <- `mediaType`
      }
      if (!is.null(`thumbnailURL`)) {
        if (!(is.character(`thumbnailURL`) && length(`thumbnailURL`) == 1)) {
          stop(paste("Error! Invalid data for `thumbnailURL`. Must be a string:", `thumbnailURL`))
        }
        self$`thumbnailURL` <- `thumbnailURL`
      }
      if (!is.null(`coverURL`)) {
        if (!(is.character(`coverURL`) && length(`coverURL`) == 1)) {
          stop(paste("Error! Invalid data for `coverURL`. Must be a string:", `coverURL`))
        }
        self$`coverURL` <- `coverURL`
      }
      if (!is.null(`fullURL`)) {
        if (!(is.character(`fullURL`) && length(`fullURL`) == 1)) {
          stop(paste("Error! Invalid data for `fullURL`. Must be a string:", `fullURL`))
        }
        self$`fullURL` <- `fullURL`
      }
      if (!is.null(`assetVersion`)) {
        if (!(is.character(`assetVersion`) && length(`assetVersion`) == 1)) {
          stop(paste("Error! Invalid data for `assetVersion`. Must be a string:", `assetVersion`))
        }
        self$`assetVersion` <- `assetVersion`
      }
      if (!is.null(`versionName`)) {
        if (!(is.character(`versionName`) && length(`versionName`) == 1)) {
          stop(paste("Error! Invalid data for `versionName`. Must be a string:", `versionName`))
        }
        self$`versionName` <- `versionName`
      }
      if (!is.null(`versionCode`)) {
        if (!(is.numeric(`versionCode`) && length(`versionCode`) == 1)) {
          stop(paste("Error! Invalid data for `versionCode`. Must be an integer:", `versionCode`))
        }
        self$`versionCode` <- `versionCode`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`locationDescription`)) {
        if (!(is.character(`locationDescription`) && length(`locationDescription`) == 1)) {
          stop(paste("Error! Invalid data for `locationDescription`. Must be a string:", `locationDescription`))
        }
        self$`locationDescription` <- `locationDescription`
      }
      if (!is.null(`uploader`)) {
        stopifnot(R6::is.R6(`uploader`))
        self$`uploader` <- `uploader`
      }
      if (!is.null(`likesCount`)) {
        if (!(is.numeric(`likesCount`) && length(`likesCount`) == 1)) {
          stop(paste("Error! Invalid data for `likesCount`. Must be an integer:", `likesCount`))
        }
        self$`likesCount` <- `likesCount`
      }
      if (!is.null(`commentsCount`)) {
        if (!(is.numeric(`commentsCount`) && length(`commentsCount`) == 1)) {
          stop(paste("Error! Invalid data for `commentsCount`. Must be an integer:", `commentsCount`))
        }
        self$`commentsCount` <- `commentsCount`
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
      if (!is.null(`attachedMediaType`)) {
        if (!(is.character(`attachedMediaType`) && length(`attachedMediaType`) == 1)) {
          stop(paste("Error! Invalid data for `attachedMediaType`. Must be a string:", `attachedMediaType`))
        }
        self$`attachedMediaType` <- `attachedMediaType`
      }
      if (!is.null(`attachedAssetURL`)) {
        if (!(is.character(`attachedAssetURL`) && length(`attachedAssetURL`) == 1)) {
          stop(paste("Error! Invalid data for `attachedAssetURL`. Must be a string:", `attachedAssetURL`))
        }
        self$`attachedAssetURL` <- `attachedAssetURL`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`searchTags`)) {
        if (!(is.character(`searchTags`) && length(`searchTags`) == 1)) {
          stop(paste("Error! Invalid data for `searchTags`. Must be a string:", `searchTags`))
        }
        self$`searchTags` <- `searchTags`
      }
      if (!is.null(`metaData`)) {
        if (!(is.character(`metaData`) && length(`metaData`) == 1)) {
          stop(paste("Error! Invalid data for `metaData`. Must be a string:", `metaData`))
        }
        self$`metaData` <- `metaData`
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
      if (!is.null(`metFlagThreshold`)) {
        if (!(is.logical(`metFlagThreshold`) && length(`metFlagThreshold`) == 1)) {
          stop(paste("Error! Invalid data for `metFlagThreshold`. Must be a boolean:", `metFlagThreshold`))
        }
        self$`metFlagThreshold` <- `metFlagThreshold`
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
    #' @return AssetFullResponse as a base R list.
    #' @examples
    #' # convert array of AssetFullResponse (x) to a data frame
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
    #' Convert AssetFullResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssetFullResponseObject <- list()
      if (!is.null(self$`valid`)) {
        AssetFullResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        AssetFullResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        AssetFullResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        AssetFullResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        AssetFullResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        AssetFullResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        AssetFullResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`assetId`)) {
        AssetFullResponseObject[["assetId"]] <-
          self$`assetId`
      }
      if (!is.null(self$`fileName`)) {
        AssetFullResponseObject[["fileName"]] <-
          self$`fileName`
      }
      if (!is.null(self$`caption`)) {
        AssetFullResponseObject[["caption"]] <-
          self$`caption`
      }
      if (!is.null(self$`mediaType`)) {
        AssetFullResponseObject[["mediaType"]] <-
          self$`mediaType`
      }
      if (!is.null(self$`thumbnailURL`)) {
        AssetFullResponseObject[["thumbnailURL"]] <-
          self$`thumbnailURL`
      }
      if (!is.null(self$`coverURL`)) {
        AssetFullResponseObject[["coverURL"]] <-
          self$`coverURL`
      }
      if (!is.null(self$`fullURL`)) {
        AssetFullResponseObject[["fullURL"]] <-
          self$`fullURL`
      }
      if (!is.null(self$`assetVersion`)) {
        AssetFullResponseObject[["assetVersion"]] <-
          self$`assetVersion`
      }
      if (!is.null(self$`versionName`)) {
        AssetFullResponseObject[["versionName"]] <-
          self$`versionName`
      }
      if (!is.null(self$`versionCode`)) {
        AssetFullResponseObject[["versionCode"]] <-
          self$`versionCode`
      }
      if (!is.null(self$`display`)) {
        AssetFullResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`locationDescription`)) {
        AssetFullResponseObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`uploader`)) {
        AssetFullResponseObject[["uploader"]] <-
          self$extractSimpleType(self$`uploader`)
      }
      if (!is.null(self$`likesCount`)) {
        AssetFullResponseObject[["likesCount"]] <-
          self$`likesCount`
      }
      if (!is.null(self$`commentsCount`)) {
        AssetFullResponseObject[["commentsCount"]] <-
          self$`commentsCount`
      }
      if (!is.null(self$`latitude`)) {
        AssetFullResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        AssetFullResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`attachedMediaType`)) {
        AssetFullResponseObject[["attachedMediaType"]] <-
          self$`attachedMediaType`
      }
      if (!is.null(self$`attachedAssetURL`)) {
        AssetFullResponseObject[["attachedAssetURL"]] <-
          self$`attachedAssetURL`
      }
      if (!is.null(self$`created`)) {
        AssetFullResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        AssetFullResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`searchTags`)) {
        AssetFullResponseObject[["searchTags"]] <-
          self$`searchTags`
      }
      if (!is.null(self$`metaData`)) {
        AssetFullResponseObject[["metaData"]] <-
          self$`metaData`
      }
      if (!is.null(self$`comments`)) {
        AssetFullResponseObject[["comments"]] <-
          self$extractSimpleType(self$`comments`)
      }
      if (!is.null(self$`likes`)) {
        AssetFullResponseObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`hasLiked`)) {
        AssetFullResponseObject[["hasLiked"]] <-
          self$`hasLiked`
      }
      if (!is.null(self$`hasDisliked`)) {
        AssetFullResponseObject[["hasDisliked"]] <-
          self$`hasDisliked`
      }
      if (!is.null(self$`metFlagThreshold`)) {
        AssetFullResponseObject[["metFlagThreshold"]] <-
          self$`metFlagThreshold`
      }
      if (!is.null(self$`returning`)) {
        AssetFullResponseObject[["returning"]] <-
          self$`returning`
      }
      return(AssetFullResponseObject)
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
    #' Deserialize JSON string into an instance of AssetFullResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssetFullResponse
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
      if (!is.null(this_object$`assetId`)) {
        self$`assetId` <- this_object$`assetId`
      }
      if (!is.null(this_object$`fileName`)) {
        self$`fileName` <- this_object$`fileName`
      }
      if (!is.null(this_object$`caption`)) {
        self$`caption` <- this_object$`caption`
      }
      if (!is.null(this_object$`mediaType`)) {
        self$`mediaType` <- this_object$`mediaType`
      }
      if (!is.null(this_object$`thumbnailURL`)) {
        self$`thumbnailURL` <- this_object$`thumbnailURL`
      }
      if (!is.null(this_object$`coverURL`)) {
        self$`coverURL` <- this_object$`coverURL`
      }
      if (!is.null(this_object$`fullURL`)) {
        self$`fullURL` <- this_object$`fullURL`
      }
      if (!is.null(this_object$`assetVersion`)) {
        self$`assetVersion` <- this_object$`assetVersion`
      }
      if (!is.null(this_object$`versionName`)) {
        self$`versionName` <- this_object$`versionName`
      }
      if (!is.null(this_object$`versionCode`)) {
        self$`versionCode` <- this_object$`versionCode`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      if (!is.null(this_object$`uploader`)) {
        `uploader_object` <- AccountShortResponse$new()
        `uploader_object`$fromJSON(jsonlite::toJSON(this_object$`uploader`, auto_unbox = TRUE, digits = NA))
        self$`uploader` <- `uploader_object`
      }
      if (!is.null(this_object$`likesCount`)) {
        self$`likesCount` <- this_object$`likesCount`
      }
      if (!is.null(this_object$`commentsCount`)) {
        self$`commentsCount` <- this_object$`commentsCount`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`attachedMediaType`)) {
        self$`attachedMediaType` <- this_object$`attachedMediaType`
      }
      if (!is.null(this_object$`attachedAssetURL`)) {
        self$`attachedAssetURL` <- this_object$`attachedAssetURL`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`searchTags`)) {
        self$`searchTags` <- this_object$`searchTags`
      }
      if (!is.null(this_object$`metaData`)) {
        self$`metaData` <- this_object$`metaData`
      }
      if (!is.null(this_object$`comments`)) {
        self$`comments` <- ApiClient$new()$deserializeObj(this_object$`comments`, "array[NoteFullResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`likes`)) {
        self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[LikeResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`hasLiked`)) {
        self$`hasLiked` <- this_object$`hasLiked`
      }
      if (!is.null(this_object$`hasDisliked`)) {
        self$`hasDisliked` <- this_object$`hasDisliked`
      }
      if (!is.null(this_object$`metFlagThreshold`)) {
        self$`metFlagThreshold` <- this_object$`metFlagThreshold`
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
    #' @return AssetFullResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AssetFullResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssetFullResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`assetId` <- this_object$`assetId`
      self$`fileName` <- this_object$`fileName`
      self$`caption` <- this_object$`caption`
      self$`mediaType` <- this_object$`mediaType`
      self$`thumbnailURL` <- this_object$`thumbnailURL`
      self$`coverURL` <- this_object$`coverURL`
      self$`fullURL` <- this_object$`fullURL`
      self$`assetVersion` <- this_object$`assetVersion`
      self$`versionName` <- this_object$`versionName`
      self$`versionCode` <- this_object$`versionCode`
      self$`display` <- this_object$`display`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`uploader` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`uploader`, auto_unbox = TRUE, digits = NA))
      self$`likesCount` <- this_object$`likesCount`
      self$`commentsCount` <- this_object$`commentsCount`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`attachedMediaType` <- this_object$`attachedMediaType`
      self$`attachedAssetURL` <- this_object$`attachedAssetURL`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`searchTags` <- this_object$`searchTags`
      self$`metaData` <- this_object$`metaData`
      self$`comments` <- ApiClient$new()$deserializeObj(this_object$`comments`, "array[NoteFullResponse]", loadNamespace("openapi"))
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[LikeResponse]", loadNamespace("openapi"))
      self$`hasLiked` <- this_object$`hasLiked`
      self$`hasDisliked` <- this_object$`hasDisliked`
      self$`metFlagThreshold` <- this_object$`metFlagThreshold`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to AssetFullResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AssetFullResponse
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
# AssetFullResponse$unlock()
#
## Below is an example to define the print function
# AssetFullResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AssetFullResponse$lock()

