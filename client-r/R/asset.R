#' Create a new Asset
#'
#' @description
#' Asset Class
#'
#' @docType class
#' @title Asset
#' @description Asset Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field premigrationId  integer [optional]
#' @field newOwnerId  integer [optional]
#' @field folderUri  character [optional]
#' @field fileName  character [optional]
#' @field mediaType  character [optional]
#' @field mimeType  character [optional]
#' @field metaData  character [optional]
#' @field caption  character [optional]
#' @field versionCode  integer [optional]
#' @field versionName  character [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field noteCount  integer [optional]
#' @field owner  \link{Account} [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field likes  list(\link{YayOrNay}) [optional]
#' @field attachedAssetId  integer [optional]
#' @field flags  list(\link{Flag}) [optional]
#' @field flagCount  integer [optional]
#' @field flagThreshold  \link{FlagThreshold} [optional]
#' @field defaultAlbumType  character [optional]
#' @field album  \link{Album} [optional]
#' @field assignment  \link{Assignment} [optional]
#' @field application  \link{Application} [optional]
#' @field display  character [optional]
#' @field appKey  character [optional]
#' @field billableId  integer [optional]
#' @field subType  character [optional]
#' @field contentName  character [optional]
#' @field urifolder  character [optional]
#' @field defaultThreshold  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Asset <- R6::R6Class(
  "Asset",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `premigrationId` = NULL,
    `newOwnerId` = NULL,
    `folderUri` = NULL,
    `fileName` = NULL,
    `mediaType` = NULL,
    `mimeType` = NULL,
    `metaData` = NULL,
    `caption` = NULL,
    `versionCode` = NULL,
    `versionName` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `noteCount` = NULL,
    `owner` = NULL,
    `notes` = NULL,
    `likes` = NULL,
    `attachedAssetId` = NULL,
    `flags` = NULL,
    `flagCount` = NULL,
    `flagThreshold` = NULL,
    `defaultAlbumType` = NULL,
    `album` = NULL,
    `assignment` = NULL,
    `application` = NULL,
    `display` = NULL,
    `appKey` = NULL,
    `billableId` = NULL,
    `subType` = NULL,
    `contentName` = NULL,
    `urifolder` = NULL,
    `defaultThreshold` = NULL,

    #' @description
    #' Initialize a new Asset class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param premigrationId premigrationId
    #' @param newOwnerId newOwnerId
    #' @param folderUri folderUri
    #' @param fileName fileName
    #' @param mediaType mediaType
    #' @param mimeType mimeType
    #' @param metaData metaData
    #' @param caption caption
    #' @param versionCode versionCode
    #' @param versionName versionName
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param noteCount noteCount
    #' @param owner owner
    #' @param notes notes
    #' @param likes likes
    #' @param attachedAssetId attachedAssetId
    #' @param flags flags
    #' @param flagCount flagCount
    #' @param flagThreshold flagThreshold
    #' @param defaultAlbumType defaultAlbumType
    #' @param album album
    #' @param assignment assignment
    #' @param application application
    #' @param display display
    #' @param appKey appKey
    #' @param billableId billableId
    #' @param subType subType
    #' @param contentName contentName
    #' @param urifolder urifolder
    #' @param defaultThreshold defaultThreshold
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `premigrationId` = NULL, `newOwnerId` = NULL, `folderUri` = NULL, `fileName` = NULL, `mediaType` = NULL, `mimeType` = NULL, `metaData` = NULL, `caption` = NULL, `versionCode` = NULL, `versionName` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `noteCount` = NULL, `owner` = NULL, `notes` = NULL, `likes` = NULL, `attachedAssetId` = NULL, `flags` = NULL, `flagCount` = NULL, `flagThreshold` = NULL, `defaultAlbumType` = NULL, `album` = NULL, `assignment` = NULL, `application` = NULL, `display` = NULL, `appKey` = NULL, `billableId` = NULL, `subType` = NULL, `contentName` = NULL, `urifolder` = NULL, `defaultThreshold` = NULL, ...) {
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
      if (!is.null(`premigrationId`)) {
        if (!(is.numeric(`premigrationId`) && length(`premigrationId`) == 1)) {
          stop(paste("Error! Invalid data for `premigrationId`. Must be an integer:", `premigrationId`))
        }
        self$`premigrationId` <- `premigrationId`
      }
      if (!is.null(`newOwnerId`)) {
        if (!(is.numeric(`newOwnerId`) && length(`newOwnerId`) == 1)) {
          stop(paste("Error! Invalid data for `newOwnerId`. Must be an integer:", `newOwnerId`))
        }
        self$`newOwnerId` <- `newOwnerId`
      }
      if (!is.null(`folderUri`)) {
        if (!(is.character(`folderUri`) && length(`folderUri`) == 1)) {
          stop(paste("Error! Invalid data for `folderUri`. Must be a string:", `folderUri`))
        }
        self$`folderUri` <- `folderUri`
      }
      if (!is.null(`fileName`)) {
        if (!(is.character(`fileName`) && length(`fileName`) == 1)) {
          stop(paste("Error! Invalid data for `fileName`. Must be a string:", `fileName`))
        }
        self$`fileName` <- `fileName`
      }
      if (!is.null(`mediaType`)) {
        if (!(is.character(`mediaType`) && length(`mediaType`) == 1)) {
          stop(paste("Error! Invalid data for `mediaType`. Must be a string:", `mediaType`))
        }
        self$`mediaType` <- `mediaType`
      }
      if (!is.null(`mimeType`)) {
        if (!(is.character(`mimeType`) && length(`mimeType`) == 1)) {
          stop(paste("Error! Invalid data for `mimeType`. Must be a string:", `mimeType`))
        }
        self$`mimeType` <- `mimeType`
      }
      if (!is.null(`metaData`)) {
        if (!(is.character(`metaData`) && length(`metaData`) == 1)) {
          stop(paste("Error! Invalid data for `metaData`. Must be a string:", `metaData`))
        }
        self$`metaData` <- `metaData`
      }
      if (!is.null(`caption`)) {
        if (!(is.character(`caption`) && length(`caption`) == 1)) {
          stop(paste("Error! Invalid data for `caption`. Must be a string:", `caption`))
        }
        self$`caption` <- `caption`
      }
      if (!is.null(`versionCode`)) {
        if (!(is.numeric(`versionCode`) && length(`versionCode`) == 1)) {
          stop(paste("Error! Invalid data for `versionCode`. Must be an integer:", `versionCode`))
        }
        self$`versionCode` <- `versionCode`
      }
      if (!is.null(`versionName`)) {
        if (!(is.character(`versionName`) && length(`versionName`) == 1)) {
          stop(paste("Error! Invalid data for `versionName`. Must be a string:", `versionName`))
        }
        self$`versionName` <- `versionName`
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
      if (!is.null(`noteCount`)) {
        if (!(is.numeric(`noteCount`) && length(`noteCount`) == 1)) {
          stop(paste("Error! Invalid data for `noteCount`. Must be an integer:", `noteCount`))
        }
        self$`noteCount` <- `noteCount`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`notes`)) {
        stopifnot(is.vector(`notes`), length(`notes`) != 0)
        sapply(`notes`, function(x) stopifnot(R6::is.R6(x)))
        self$`notes` <- `notes`
      }
      if (!is.null(`likes`)) {
        stopifnot(is.vector(`likes`), length(`likes`) != 0)
        sapply(`likes`, function(x) stopifnot(R6::is.R6(x)))
        self$`likes` <- `likes`
      }
      if (!is.null(`attachedAssetId`)) {
        if (!(is.numeric(`attachedAssetId`) && length(`attachedAssetId`) == 1)) {
          stop(paste("Error! Invalid data for `attachedAssetId`. Must be an integer:", `attachedAssetId`))
        }
        self$`attachedAssetId` <- `attachedAssetId`
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
      if (!is.null(`defaultAlbumType`)) {
        if (!(`defaultAlbumType` %in% c("PROFILE", "DEFAULT_PROFILE_AVATAR", "DEFAULT_APP_ICON", "DEFAULT_APP_LOGO"))) {
          stop(paste("Error! \"", `defaultAlbumType`, "\" cannot be assigned to `defaultAlbumType`. Must be \"PROFILE\", \"DEFAULT_PROFILE_AVATAR\", \"DEFAULT_APP_ICON\", \"DEFAULT_APP_LOGO\".", sep = ""))
        }
        if (!(is.character(`defaultAlbumType`) && length(`defaultAlbumType`) == 1)) {
          stop(paste("Error! Invalid data for `defaultAlbumType`. Must be a string:", `defaultAlbumType`))
        }
        self$`defaultAlbumType` <- `defaultAlbumType`
      }
      if (!is.null(`album`)) {
        stopifnot(R6::is.R6(`album`))
        self$`album` <- `album`
      }
      if (!is.null(`assignment`)) {
        stopifnot(R6::is.R6(`assignment`))
        self$`assignment` <- `assignment`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
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
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`urifolder`)) {
        if (!(is.character(`urifolder`) && length(`urifolder`) == 1)) {
          stop(paste("Error! Invalid data for `urifolder`. Must be a string:", `urifolder`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`urifolder`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `urifolder`. Must be a URL:", `urifolder`))
        }
        self$`urifolder` <- `urifolder`
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
    #' @return Asset as a base R list.
    #' @examples
    #' # convert array of Asset (x) to a data frame
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
    #' Convert Asset to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssetObject <- list()
      if (!is.null(self$`id`)) {
        AssetObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        AssetObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        AssetObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        AssetObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        AssetObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        AssetObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`premigrationId`)) {
        AssetObject[["premigrationId"]] <-
          self$`premigrationId`
      }
      if (!is.null(self$`newOwnerId`)) {
        AssetObject[["newOwnerId"]] <-
          self$`newOwnerId`
      }
      if (!is.null(self$`folderUri`)) {
        AssetObject[["folderUri"]] <-
          self$`folderUri`
      }
      if (!is.null(self$`fileName`)) {
        AssetObject[["fileName"]] <-
          self$`fileName`
      }
      if (!is.null(self$`mediaType`)) {
        AssetObject[["mediaType"]] <-
          self$`mediaType`
      }
      if (!is.null(self$`mimeType`)) {
        AssetObject[["mimeType"]] <-
          self$`mimeType`
      }
      if (!is.null(self$`metaData`)) {
        AssetObject[["metaData"]] <-
          self$`metaData`
      }
      if (!is.null(self$`caption`)) {
        AssetObject[["caption"]] <-
          self$`caption`
      }
      if (!is.null(self$`versionCode`)) {
        AssetObject[["versionCode"]] <-
          self$`versionCode`
      }
      if (!is.null(self$`versionName`)) {
        AssetObject[["versionName"]] <-
          self$`versionName`
      }
      if (!is.null(self$`likeCount`)) {
        AssetObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        AssetObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`noteCount`)) {
        AssetObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`owner`)) {
        AssetObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`notes`)) {
        AssetObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`likes`)) {
        AssetObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`attachedAssetId`)) {
        AssetObject[["attachedAssetId"]] <-
          self$`attachedAssetId`
      }
      if (!is.null(self$`flags`)) {
        AssetObject[["flags"]] <-
          self$extractSimpleType(self$`flags`)
      }
      if (!is.null(self$`flagCount`)) {
        AssetObject[["flagCount"]] <-
          self$`flagCount`
      }
      if (!is.null(self$`flagThreshold`)) {
        AssetObject[["flagThreshold"]] <-
          self$extractSimpleType(self$`flagThreshold`)
      }
      if (!is.null(self$`defaultAlbumType`)) {
        AssetObject[["defaultAlbumType"]] <-
          self$`defaultAlbumType`
      }
      if (!is.null(self$`album`)) {
        AssetObject[["album"]] <-
          self$extractSimpleType(self$`album`)
      }
      if (!is.null(self$`assignment`)) {
        AssetObject[["assignment"]] <-
          self$extractSimpleType(self$`assignment`)
      }
      if (!is.null(self$`application`)) {
        AssetObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`display`)) {
        AssetObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`appKey`)) {
        AssetObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`billableId`)) {
        AssetObject[["billableId"]] <-
          self$`billableId`
      }
      if (!is.null(self$`subType`)) {
        AssetObject[["subType"]] <-
          self$`subType`
      }
      if (!is.null(self$`contentName`)) {
        AssetObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`urifolder`)) {
        AssetObject[["urifolder"]] <-
          self$`urifolder`
      }
      if (!is.null(self$`defaultThreshold`)) {
        AssetObject[["defaultThreshold"]] <-
          self$`defaultThreshold`
      }
      return(AssetObject)
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
    #' Deserialize JSON string into an instance of Asset
    #'
    #' @param input_json the JSON input
    #' @return the instance of Asset
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
      if (!is.null(this_object$`premigrationId`)) {
        self$`premigrationId` <- this_object$`premigrationId`
      }
      if (!is.null(this_object$`newOwnerId`)) {
        self$`newOwnerId` <- this_object$`newOwnerId`
      }
      if (!is.null(this_object$`folderUri`)) {
        self$`folderUri` <- this_object$`folderUri`
      }
      if (!is.null(this_object$`fileName`)) {
        self$`fileName` <- this_object$`fileName`
      }
      if (!is.null(this_object$`mediaType`)) {
        self$`mediaType` <- this_object$`mediaType`
      }
      if (!is.null(this_object$`mimeType`)) {
        self$`mimeType` <- this_object$`mimeType`
      }
      if (!is.null(this_object$`metaData`)) {
        self$`metaData` <- this_object$`metaData`
      }
      if (!is.null(this_object$`caption`)) {
        self$`caption` <- this_object$`caption`
      }
      if (!is.null(this_object$`versionCode`)) {
        self$`versionCode` <- this_object$`versionCode`
      }
      if (!is.null(this_object$`versionName`)) {
        self$`versionName` <- this_object$`versionName`
      }
      if (!is.null(this_object$`likeCount`)) {
        self$`likeCount` <- this_object$`likeCount`
      }
      if (!is.null(this_object$`dislikeCount`)) {
        self$`dislikeCount` <- this_object$`dislikeCount`
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`likes`)) {
        self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[YayOrNay]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`attachedAssetId`)) {
        self$`attachedAssetId` <- this_object$`attachedAssetId`
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
      if (!is.null(this_object$`defaultAlbumType`)) {
        if (!is.null(this_object$`defaultAlbumType`) && !(this_object$`defaultAlbumType` %in% c("PROFILE", "DEFAULT_PROFILE_AVATAR", "DEFAULT_APP_ICON", "DEFAULT_APP_LOGO"))) {
          stop(paste("Error! \"", this_object$`defaultAlbumType`, "\" cannot be assigned to `defaultAlbumType`. Must be \"PROFILE\", \"DEFAULT_PROFILE_AVATAR\", \"DEFAULT_APP_ICON\", \"DEFAULT_APP_LOGO\".", sep = ""))
        }
        self$`defaultAlbumType` <- this_object$`defaultAlbumType`
      }
      if (!is.null(this_object$`album`)) {
        `album_object` <- Album$new()
        `album_object`$fromJSON(jsonlite::toJSON(this_object$`album`, auto_unbox = TRUE, digits = NA))
        self$`album` <- `album_object`
      }
      if (!is.null(this_object$`assignment`)) {
        `assignment_object` <- Assignment$new()
        `assignment_object`$fromJSON(jsonlite::toJSON(this_object$`assignment`, auto_unbox = TRUE, digits = NA))
        self$`assignment` <- `assignment_object`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- Application$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
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
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`urifolder`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`urifolder`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `urifolder`. Must be a URL:", this_object$`urifolder`))
        }
        self$`urifolder` <- this_object$`urifolder`
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
    #' @return Asset in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Asset
    #'
    #' @param input_json the JSON input
    #' @return the instance of Asset
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`premigrationId` <- this_object$`premigrationId`
      self$`newOwnerId` <- this_object$`newOwnerId`
      self$`folderUri` <- this_object$`folderUri`
      self$`fileName` <- this_object$`fileName`
      self$`mediaType` <- this_object$`mediaType`
      self$`mimeType` <- this_object$`mimeType`
      self$`metaData` <- this_object$`metaData`
      self$`caption` <- this_object$`caption`
      self$`versionCode` <- this_object$`versionCode`
      self$`versionName` <- this_object$`versionName`
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`noteCount` <- this_object$`noteCount`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[YayOrNay]", loadNamespace("openapi"))
      self$`attachedAssetId` <- this_object$`attachedAssetId`
      self$`flags` <- ApiClient$new()$deserializeObj(this_object$`flags`, "array[Flag]", loadNamespace("openapi"))
      self$`flagCount` <- this_object$`flagCount`
      self$`flagThreshold` <- FlagThreshold$new()$fromJSON(jsonlite::toJSON(this_object$`flagThreshold`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`defaultAlbumType`) && !(this_object$`defaultAlbumType` %in% c("PROFILE", "DEFAULT_PROFILE_AVATAR", "DEFAULT_APP_ICON", "DEFAULT_APP_LOGO"))) {
        stop(paste("Error! \"", this_object$`defaultAlbumType`, "\" cannot be assigned to `defaultAlbumType`. Must be \"PROFILE\", \"DEFAULT_PROFILE_AVATAR\", \"DEFAULT_APP_ICON\", \"DEFAULT_APP_LOGO\".", sep = ""))
      }
      self$`defaultAlbumType` <- this_object$`defaultAlbumType`
      self$`album` <- Album$new()$fromJSON(jsonlite::toJSON(this_object$`album`, auto_unbox = TRUE, digits = NA))
      self$`assignment` <- Assignment$new()$fromJSON(jsonlite::toJSON(this_object$`assignment`, auto_unbox = TRUE, digits = NA))
      self$`application` <- Application$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`display` <- this_object$`display`
      self$`appKey` <- this_object$`appKey`
      self$`billableId` <- this_object$`billableId`
      self$`subType` <- this_object$`subType`
      self$`contentName` <- this_object$`contentName`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`urifolder`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `urifolder`. Must be a URL:", this_object$`urifolder`))
      }
      self$`urifolder` <- this_object$`urifolder`
      self$`defaultThreshold` <- this_object$`defaultThreshold`
      self
    },

    #' @description
    #' Validate JSON input with respect to Asset and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Asset
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
# Asset$unlock()
#
## Below is an example to define the print function
# Asset$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Asset$lock()

