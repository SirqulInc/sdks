#' Create a new ApplicationShortResponse
#'
#' @description
#' ApplicationShortResponse Class
#'
#' @docType class
#' @title ApplicationShortResponse
#' @description ApplicationShortResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field applicationId  integer [optional]
#' @field appKey  character [optional]
#' @field title  character [optional]
#' @field currentBuildVersion  character [optional]
#' @field currentApiVersion  character [optional]
#' @field appIcon  \link{AssetShortResponse} [optional]
#' @field appLogo  \link{AssetShortResponse} [optional]
#' @field active  character [optional]
#' @field about  character [optional]
#' @field landingPageUrl  character [optional]
#' @field landingPageFullUrl  character [optional]
#' @field defaultImageFullUrl  character [optional]
#' @field activityDescription  character [optional]
#' @field platforms  list(\link{PlatformResponse}) [optional]
#' @field categories  list(\link{CategoryResponse}) [optional]
#' @field placementCount  integer [optional]
#' @field billable  \link{BillableEntityShortResponse} [optional]
#' @field hasAds  character [optional]
#' @field publicNotifications  character [optional]
#' @field urlScheme  character [optional]
#' @field global  character [optional]
#' @field downloadUrls  character [optional]
#' @field localAdsEnabled  character [optional]
#' @field trilatSettings  \link{TrilatAppSettings} [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationShortResponse <- R6::R6Class(
  "ApplicationShortResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `applicationId` = NULL,
    `appKey` = NULL,
    `title` = NULL,
    `currentBuildVersion` = NULL,
    `currentApiVersion` = NULL,
    `appIcon` = NULL,
    `appLogo` = NULL,
    `active` = NULL,
    `about` = NULL,
    `landingPageUrl` = NULL,
    `landingPageFullUrl` = NULL,
    `defaultImageFullUrl` = NULL,
    `activityDescription` = NULL,
    `platforms` = NULL,
    `categories` = NULL,
    `placementCount` = NULL,
    `billable` = NULL,
    `hasAds` = NULL,
    `publicNotifications` = NULL,
    `urlScheme` = NULL,
    `global` = NULL,
    `downloadUrls` = NULL,
    `localAdsEnabled` = NULL,
    `trilatSettings` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ApplicationShortResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param applicationId applicationId
    #' @param appKey appKey
    #' @param title title
    #' @param currentBuildVersion currentBuildVersion
    #' @param currentApiVersion currentApiVersion
    #' @param appIcon appIcon
    #' @param appLogo appLogo
    #' @param active active
    #' @param about about
    #' @param landingPageUrl landingPageUrl
    #' @param landingPageFullUrl landingPageFullUrl
    #' @param defaultImageFullUrl defaultImageFullUrl
    #' @param activityDescription activityDescription
    #' @param platforms platforms
    #' @param categories categories
    #' @param placementCount placementCount
    #' @param billable billable
    #' @param hasAds hasAds
    #' @param publicNotifications publicNotifications
    #' @param urlScheme urlScheme
    #' @param global global
    #' @param downloadUrls downloadUrls
    #' @param localAdsEnabled localAdsEnabled
    #' @param trilatSettings trilatSettings
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `applicationId` = NULL, `appKey` = NULL, `title` = NULL, `currentBuildVersion` = NULL, `currentApiVersion` = NULL, `appIcon` = NULL, `appLogo` = NULL, `active` = NULL, `about` = NULL, `landingPageUrl` = NULL, `landingPageFullUrl` = NULL, `defaultImageFullUrl` = NULL, `activityDescription` = NULL, `platforms` = NULL, `categories` = NULL, `placementCount` = NULL, `billable` = NULL, `hasAds` = NULL, `publicNotifications` = NULL, `urlScheme` = NULL, `global` = NULL, `downloadUrls` = NULL, `localAdsEnabled` = NULL, `trilatSettings` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`applicationId`)) {
        if (!(is.numeric(`applicationId`) && length(`applicationId`) == 1)) {
          stop(paste("Error! Invalid data for `applicationId`. Must be an integer:", `applicationId`))
        }
        self$`applicationId` <- `applicationId`
      }
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`currentBuildVersion`)) {
        if (!(is.character(`currentBuildVersion`) && length(`currentBuildVersion`) == 1)) {
          stop(paste("Error! Invalid data for `currentBuildVersion`. Must be a string:", `currentBuildVersion`))
        }
        self$`currentBuildVersion` <- `currentBuildVersion`
      }
      if (!is.null(`currentApiVersion`)) {
        if (!(is.character(`currentApiVersion`) && length(`currentApiVersion`) == 1)) {
          stop(paste("Error! Invalid data for `currentApiVersion`. Must be a string:", `currentApiVersion`))
        }
        self$`currentApiVersion` <- `currentApiVersion`
      }
      if (!is.null(`appIcon`)) {
        stopifnot(R6::is.R6(`appIcon`))
        self$`appIcon` <- `appIcon`
      }
      if (!is.null(`appLogo`)) {
        stopifnot(R6::is.R6(`appLogo`))
        self$`appLogo` <- `appLogo`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`about`)) {
        if (!(is.character(`about`) && length(`about`) == 1)) {
          stop(paste("Error! Invalid data for `about`. Must be a string:", `about`))
        }
        self$`about` <- `about`
      }
      if (!is.null(`landingPageUrl`)) {
        if (!(is.character(`landingPageUrl`) && length(`landingPageUrl`) == 1)) {
          stop(paste("Error! Invalid data for `landingPageUrl`. Must be a string:", `landingPageUrl`))
        }
        self$`landingPageUrl` <- `landingPageUrl`
      }
      if (!is.null(`landingPageFullUrl`)) {
        if (!(is.character(`landingPageFullUrl`) && length(`landingPageFullUrl`) == 1)) {
          stop(paste("Error! Invalid data for `landingPageFullUrl`. Must be a string:", `landingPageFullUrl`))
        }
        self$`landingPageFullUrl` <- `landingPageFullUrl`
      }
      if (!is.null(`defaultImageFullUrl`)) {
        if (!(is.character(`defaultImageFullUrl`) && length(`defaultImageFullUrl`) == 1)) {
          stop(paste("Error! Invalid data for `defaultImageFullUrl`. Must be a string:", `defaultImageFullUrl`))
        }
        self$`defaultImageFullUrl` <- `defaultImageFullUrl`
      }
      if (!is.null(`activityDescription`)) {
        if (!(is.character(`activityDescription`) && length(`activityDescription`) == 1)) {
          stop(paste("Error! Invalid data for `activityDescription`. Must be a string:", `activityDescription`))
        }
        self$`activityDescription` <- `activityDescription`
      }
      if (!is.null(`platforms`)) {
        stopifnot(is.vector(`platforms`), length(`platforms`) != 0)
        sapply(`platforms`, function(x) stopifnot(R6::is.R6(x)))
        self$`platforms` <- `platforms`
      }
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(R6::is.R6(x)))
        self$`categories` <- `categories`
      }
      if (!is.null(`placementCount`)) {
        if (!(is.numeric(`placementCount`) && length(`placementCount`) == 1)) {
          stop(paste("Error! Invalid data for `placementCount`. Must be an integer:", `placementCount`))
        }
        self$`placementCount` <- `placementCount`
      }
      if (!is.null(`billable`)) {
        stopifnot(R6::is.R6(`billable`))
        self$`billable` <- `billable`
      }
      if (!is.null(`hasAds`)) {
        if (!(is.logical(`hasAds`) && length(`hasAds`) == 1)) {
          stop(paste("Error! Invalid data for `hasAds`. Must be a boolean:", `hasAds`))
        }
        self$`hasAds` <- `hasAds`
      }
      if (!is.null(`publicNotifications`)) {
        if (!(is.logical(`publicNotifications`) && length(`publicNotifications`) == 1)) {
          stop(paste("Error! Invalid data for `publicNotifications`. Must be a boolean:", `publicNotifications`))
        }
        self$`publicNotifications` <- `publicNotifications`
      }
      if (!is.null(`urlScheme`)) {
        if (!(is.character(`urlScheme`) && length(`urlScheme`) == 1)) {
          stop(paste("Error! Invalid data for `urlScheme`. Must be a string:", `urlScheme`))
        }
        self$`urlScheme` <- `urlScheme`
      }
      if (!is.null(`global`)) {
        if (!(is.logical(`global`) && length(`global`) == 1)) {
          stop(paste("Error! Invalid data for `global`. Must be a boolean:", `global`))
        }
        self$`global` <- `global`
      }
      if (!is.null(`downloadUrls`)) {
        if (!(is.character(`downloadUrls`) && length(`downloadUrls`) == 1)) {
          stop(paste("Error! Invalid data for `downloadUrls`. Must be a string:", `downloadUrls`))
        }
        self$`downloadUrls` <- `downloadUrls`
      }
      if (!is.null(`localAdsEnabled`)) {
        if (!(is.logical(`localAdsEnabled`) && length(`localAdsEnabled`) == 1)) {
          stop(paste("Error! Invalid data for `localAdsEnabled`. Must be a boolean:", `localAdsEnabled`))
        }
        self$`localAdsEnabled` <- `localAdsEnabled`
      }
      if (!is.null(`trilatSettings`)) {
        stopifnot(R6::is.R6(`trilatSettings`))
        self$`trilatSettings` <- `trilatSettings`
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
    #' @return ApplicationShortResponse as a base R list.
    #' @examples
    #' # convert array of ApplicationShortResponse (x) to a data frame
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
    #' Convert ApplicationShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApplicationShortResponseObject <- list()
      if (!is.null(self$`valid`)) {
        ApplicationShortResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ApplicationShortResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ApplicationShortResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ApplicationShortResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ApplicationShortResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ApplicationShortResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ApplicationShortResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`applicationId`)) {
        ApplicationShortResponseObject[["applicationId"]] <-
          self$`applicationId`
      }
      if (!is.null(self$`appKey`)) {
        ApplicationShortResponseObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`title`)) {
        ApplicationShortResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`currentBuildVersion`)) {
        ApplicationShortResponseObject[["currentBuildVersion"]] <-
          self$`currentBuildVersion`
      }
      if (!is.null(self$`currentApiVersion`)) {
        ApplicationShortResponseObject[["currentApiVersion"]] <-
          self$`currentApiVersion`
      }
      if (!is.null(self$`appIcon`)) {
        ApplicationShortResponseObject[["appIcon"]] <-
          self$extractSimpleType(self$`appIcon`)
      }
      if (!is.null(self$`appLogo`)) {
        ApplicationShortResponseObject[["appLogo"]] <-
          self$extractSimpleType(self$`appLogo`)
      }
      if (!is.null(self$`active`)) {
        ApplicationShortResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`about`)) {
        ApplicationShortResponseObject[["about"]] <-
          self$`about`
      }
      if (!is.null(self$`landingPageUrl`)) {
        ApplicationShortResponseObject[["landingPageUrl"]] <-
          self$`landingPageUrl`
      }
      if (!is.null(self$`landingPageFullUrl`)) {
        ApplicationShortResponseObject[["landingPageFullUrl"]] <-
          self$`landingPageFullUrl`
      }
      if (!is.null(self$`defaultImageFullUrl`)) {
        ApplicationShortResponseObject[["defaultImageFullUrl"]] <-
          self$`defaultImageFullUrl`
      }
      if (!is.null(self$`activityDescription`)) {
        ApplicationShortResponseObject[["activityDescription"]] <-
          self$`activityDescription`
      }
      if (!is.null(self$`platforms`)) {
        ApplicationShortResponseObject[["platforms"]] <-
          self$extractSimpleType(self$`platforms`)
      }
      if (!is.null(self$`categories`)) {
        ApplicationShortResponseObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`placementCount`)) {
        ApplicationShortResponseObject[["placementCount"]] <-
          self$`placementCount`
      }
      if (!is.null(self$`billable`)) {
        ApplicationShortResponseObject[["billable"]] <-
          self$extractSimpleType(self$`billable`)
      }
      if (!is.null(self$`hasAds`)) {
        ApplicationShortResponseObject[["hasAds"]] <-
          self$`hasAds`
      }
      if (!is.null(self$`publicNotifications`)) {
        ApplicationShortResponseObject[["publicNotifications"]] <-
          self$`publicNotifications`
      }
      if (!is.null(self$`urlScheme`)) {
        ApplicationShortResponseObject[["urlScheme"]] <-
          self$`urlScheme`
      }
      if (!is.null(self$`global`)) {
        ApplicationShortResponseObject[["global"]] <-
          self$`global`
      }
      if (!is.null(self$`downloadUrls`)) {
        ApplicationShortResponseObject[["downloadUrls"]] <-
          self$`downloadUrls`
      }
      if (!is.null(self$`localAdsEnabled`)) {
        ApplicationShortResponseObject[["localAdsEnabled"]] <-
          self$`localAdsEnabled`
      }
      if (!is.null(self$`trilatSettings`)) {
        ApplicationShortResponseObject[["trilatSettings"]] <-
          self$extractSimpleType(self$`trilatSettings`)
      }
      if (!is.null(self$`returning`)) {
        ApplicationShortResponseObject[["returning"]] <-
          self$`returning`
      }
      return(ApplicationShortResponseObject)
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
    #' Deserialize JSON string into an instance of ApplicationShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationShortResponse
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
      if (!is.null(this_object$`applicationId`)) {
        self$`applicationId` <- this_object$`applicationId`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`currentBuildVersion`)) {
        self$`currentBuildVersion` <- this_object$`currentBuildVersion`
      }
      if (!is.null(this_object$`currentApiVersion`)) {
        self$`currentApiVersion` <- this_object$`currentApiVersion`
      }
      if (!is.null(this_object$`appIcon`)) {
        `appicon_object` <- AssetShortResponse$new()
        `appicon_object`$fromJSON(jsonlite::toJSON(this_object$`appIcon`, auto_unbox = TRUE, digits = NA))
        self$`appIcon` <- `appicon_object`
      }
      if (!is.null(this_object$`appLogo`)) {
        `applogo_object` <- AssetShortResponse$new()
        `applogo_object`$fromJSON(jsonlite::toJSON(this_object$`appLogo`, auto_unbox = TRUE, digits = NA))
        self$`appLogo` <- `applogo_object`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`about`)) {
        self$`about` <- this_object$`about`
      }
      if (!is.null(this_object$`landingPageUrl`)) {
        self$`landingPageUrl` <- this_object$`landingPageUrl`
      }
      if (!is.null(this_object$`landingPageFullUrl`)) {
        self$`landingPageFullUrl` <- this_object$`landingPageFullUrl`
      }
      if (!is.null(this_object$`defaultImageFullUrl`)) {
        self$`defaultImageFullUrl` <- this_object$`defaultImageFullUrl`
      }
      if (!is.null(this_object$`activityDescription`)) {
        self$`activityDescription` <- this_object$`activityDescription`
      }
      if (!is.null(this_object$`platforms`)) {
        self$`platforms` <- ApiClient$new()$deserializeObj(this_object$`platforms`, "array[PlatformResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`placementCount`)) {
        self$`placementCount` <- this_object$`placementCount`
      }
      if (!is.null(this_object$`billable`)) {
        `billable_object` <- BillableEntityShortResponse$new()
        `billable_object`$fromJSON(jsonlite::toJSON(this_object$`billable`, auto_unbox = TRUE, digits = NA))
        self$`billable` <- `billable_object`
      }
      if (!is.null(this_object$`hasAds`)) {
        self$`hasAds` <- this_object$`hasAds`
      }
      if (!is.null(this_object$`publicNotifications`)) {
        self$`publicNotifications` <- this_object$`publicNotifications`
      }
      if (!is.null(this_object$`urlScheme`)) {
        self$`urlScheme` <- this_object$`urlScheme`
      }
      if (!is.null(this_object$`global`)) {
        self$`global` <- this_object$`global`
      }
      if (!is.null(this_object$`downloadUrls`)) {
        self$`downloadUrls` <- this_object$`downloadUrls`
      }
      if (!is.null(this_object$`localAdsEnabled`)) {
        self$`localAdsEnabled` <- this_object$`localAdsEnabled`
      }
      if (!is.null(this_object$`trilatSettings`)) {
        `trilatsettings_object` <- TrilatAppSettings$new()
        `trilatsettings_object`$fromJSON(jsonlite::toJSON(this_object$`trilatSettings`, auto_unbox = TRUE, digits = NA))
        self$`trilatSettings` <- `trilatsettings_object`
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
    #' @return ApplicationShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`applicationId` <- this_object$`applicationId`
      self$`appKey` <- this_object$`appKey`
      self$`title` <- this_object$`title`
      self$`currentBuildVersion` <- this_object$`currentBuildVersion`
      self$`currentApiVersion` <- this_object$`currentApiVersion`
      self$`appIcon` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`appIcon`, auto_unbox = TRUE, digits = NA))
      self$`appLogo` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`appLogo`, auto_unbox = TRUE, digits = NA))
      self$`active` <- this_object$`active`
      self$`about` <- this_object$`about`
      self$`landingPageUrl` <- this_object$`landingPageUrl`
      self$`landingPageFullUrl` <- this_object$`landingPageFullUrl`
      self$`defaultImageFullUrl` <- this_object$`defaultImageFullUrl`
      self$`activityDescription` <- this_object$`activityDescription`
      self$`platforms` <- ApiClient$new()$deserializeObj(this_object$`platforms`, "array[PlatformResponse]", loadNamespace("openapi"))
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      self$`placementCount` <- this_object$`placementCount`
      self$`billable` <- BillableEntityShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`billable`, auto_unbox = TRUE, digits = NA))
      self$`hasAds` <- this_object$`hasAds`
      self$`publicNotifications` <- this_object$`publicNotifications`
      self$`urlScheme` <- this_object$`urlScheme`
      self$`global` <- this_object$`global`
      self$`downloadUrls` <- this_object$`downloadUrls`
      self$`localAdsEnabled` <- this_object$`localAdsEnabled`
      self$`trilatSettings` <- TrilatAppSettings$new()$fromJSON(jsonlite::toJSON(this_object$`trilatSettings`, auto_unbox = TRUE, digits = NA))
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApplicationShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApplicationShortResponse
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
# ApplicationShortResponse$unlock()
#
## Below is an example to define the print function
# ApplicationShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApplicationShortResponse$lock()

