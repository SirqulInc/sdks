#' Create a new ApplicationResponse
#'
#' @description
#' ApplicationResponse Class
#'
#' @docType class
#' @title ApplicationResponse
#' @description ApplicationResponse Class
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
#' @field appType  character [optional]
#' @field appName  character [optional]
#' @field bundleId  character [optional]
#' @field scoringType  character [optional]
#' @field hintCost  integer [optional]
#' @field maxScore  integer [optional]
#' @field ticketsPerPoint  numeric [optional]
#' @field hasGameData  character [optional]
#' @field globalTickets  character [optional]
#' @field eulaVersion  character [optional]
#' @field eulaDateUpdated  integer [optional]
#' @field modules  character [optional]
#' @field billableEntityName  character [optional]
#' @field showInActivities  character [optional]
#' @field cssClass  character [optional]
#' @field inviteWelcomeText  character [optional]
#' @field invitePageUrl  character [optional]
#' @field apnsCertificateFileName  character [optional]
#' @field facebookAppId  character [optional]
#' @field facebookAppSecret  character [optional]
#' @field appToken  character [optional]
#' @field googleApiKey  character [optional]
#' @field appRestKey  character [optional]
#' @field publicContentApproval  character [optional]
#' @field productionMode  character [optional]
#' @field minimumSessionLength  integer [optional]
#' @field sessionGapLength  integer [optional]
#' @field sqootApiKey  character [optional]
#' @field amqpEnabled  character [optional]
#' @field authorizedCount  integer [optional]
#' @field authorizedServers  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationResponse <- R6::R6Class(
  "ApplicationResponse",
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
    `appType` = NULL,
    `appName` = NULL,
    `bundleId` = NULL,
    `scoringType` = NULL,
    `hintCost` = NULL,
    `maxScore` = NULL,
    `ticketsPerPoint` = NULL,
    `hasGameData` = NULL,
    `globalTickets` = NULL,
    `eulaVersion` = NULL,
    `eulaDateUpdated` = NULL,
    `modules` = NULL,
    `billableEntityName` = NULL,
    `showInActivities` = NULL,
    `cssClass` = NULL,
    `inviteWelcomeText` = NULL,
    `invitePageUrl` = NULL,
    `apnsCertificateFileName` = NULL,
    `facebookAppId` = NULL,
    `facebookAppSecret` = NULL,
    `appToken` = NULL,
    `googleApiKey` = NULL,
    `appRestKey` = NULL,
    `publicContentApproval` = NULL,
    `productionMode` = NULL,
    `minimumSessionLength` = NULL,
    `sessionGapLength` = NULL,
    `sqootApiKey` = NULL,
    `amqpEnabled` = NULL,
    `authorizedCount` = NULL,
    `authorizedServers` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ApplicationResponse class.
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
    #' @param appType appType
    #' @param appName appName
    #' @param bundleId bundleId
    #' @param scoringType scoringType
    #' @param hintCost hintCost
    #' @param maxScore maxScore
    #' @param ticketsPerPoint ticketsPerPoint
    #' @param hasGameData hasGameData
    #' @param globalTickets globalTickets
    #' @param eulaVersion eulaVersion
    #' @param eulaDateUpdated eulaDateUpdated
    #' @param modules modules
    #' @param billableEntityName billableEntityName
    #' @param showInActivities showInActivities
    #' @param cssClass cssClass
    #' @param inviteWelcomeText inviteWelcomeText
    #' @param invitePageUrl invitePageUrl
    #' @param apnsCertificateFileName apnsCertificateFileName
    #' @param facebookAppId facebookAppId
    #' @param facebookAppSecret facebookAppSecret
    #' @param appToken appToken
    #' @param googleApiKey googleApiKey
    #' @param appRestKey appRestKey
    #' @param publicContentApproval publicContentApproval
    #' @param productionMode productionMode
    #' @param minimumSessionLength minimumSessionLength
    #' @param sessionGapLength sessionGapLength
    #' @param sqootApiKey sqootApiKey
    #' @param amqpEnabled amqpEnabled
    #' @param authorizedCount authorizedCount
    #' @param authorizedServers authorizedServers
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `applicationId` = NULL, `appKey` = NULL, `title` = NULL, `currentBuildVersion` = NULL, `currentApiVersion` = NULL, `appIcon` = NULL, `appLogo` = NULL, `active` = NULL, `about` = NULL, `landingPageUrl` = NULL, `landingPageFullUrl` = NULL, `defaultImageFullUrl` = NULL, `activityDescription` = NULL, `platforms` = NULL, `categories` = NULL, `placementCount` = NULL, `billable` = NULL, `hasAds` = NULL, `publicNotifications` = NULL, `urlScheme` = NULL, `global` = NULL, `downloadUrls` = NULL, `localAdsEnabled` = NULL, `trilatSettings` = NULL, `appType` = NULL, `appName` = NULL, `bundleId` = NULL, `scoringType` = NULL, `hintCost` = NULL, `maxScore` = NULL, `ticketsPerPoint` = NULL, `hasGameData` = NULL, `globalTickets` = NULL, `eulaVersion` = NULL, `eulaDateUpdated` = NULL, `modules` = NULL, `billableEntityName` = NULL, `showInActivities` = NULL, `cssClass` = NULL, `inviteWelcomeText` = NULL, `invitePageUrl` = NULL, `apnsCertificateFileName` = NULL, `facebookAppId` = NULL, `facebookAppSecret` = NULL, `appToken` = NULL, `googleApiKey` = NULL, `appRestKey` = NULL, `publicContentApproval` = NULL, `productionMode` = NULL, `minimumSessionLength` = NULL, `sessionGapLength` = NULL, `sqootApiKey` = NULL, `amqpEnabled` = NULL, `authorizedCount` = NULL, `authorizedServers` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`appType`)) {
        if (!(is.character(`appType`) && length(`appType`) == 1)) {
          stop(paste("Error! Invalid data for `appType`. Must be a string:", `appType`))
        }
        self$`appType` <- `appType`
      }
      if (!is.null(`appName`)) {
        if (!(is.character(`appName`) && length(`appName`) == 1)) {
          stop(paste("Error! Invalid data for `appName`. Must be a string:", `appName`))
        }
        self$`appName` <- `appName`
      }
      if (!is.null(`bundleId`)) {
        if (!(is.character(`bundleId`) && length(`bundleId`) == 1)) {
          stop(paste("Error! Invalid data for `bundleId`. Must be a string:", `bundleId`))
        }
        self$`bundleId` <- `bundleId`
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
      if (!is.null(`hintCost`)) {
        if (!(is.numeric(`hintCost`) && length(`hintCost`) == 1)) {
          stop(paste("Error! Invalid data for `hintCost`. Must be an integer:", `hintCost`))
        }
        self$`hintCost` <- `hintCost`
      }
      if (!is.null(`maxScore`)) {
        if (!(is.numeric(`maxScore`) && length(`maxScore`) == 1)) {
          stop(paste("Error! Invalid data for `maxScore`. Must be an integer:", `maxScore`))
        }
        self$`maxScore` <- `maxScore`
      }
      if (!is.null(`ticketsPerPoint`)) {
        if (!(is.numeric(`ticketsPerPoint`) && length(`ticketsPerPoint`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsPerPoint`. Must be a number:", `ticketsPerPoint`))
        }
        self$`ticketsPerPoint` <- `ticketsPerPoint`
      }
      if (!is.null(`hasGameData`)) {
        if (!(is.logical(`hasGameData`) && length(`hasGameData`) == 1)) {
          stop(paste("Error! Invalid data for `hasGameData`. Must be a boolean:", `hasGameData`))
        }
        self$`hasGameData` <- `hasGameData`
      }
      if (!is.null(`globalTickets`)) {
        if (!(is.logical(`globalTickets`) && length(`globalTickets`) == 1)) {
          stop(paste("Error! Invalid data for `globalTickets`. Must be a boolean:", `globalTickets`))
        }
        self$`globalTickets` <- `globalTickets`
      }
      if (!is.null(`eulaVersion`)) {
        if (!(is.character(`eulaVersion`) && length(`eulaVersion`) == 1)) {
          stop(paste("Error! Invalid data for `eulaVersion`. Must be a string:", `eulaVersion`))
        }
        self$`eulaVersion` <- `eulaVersion`
      }
      if (!is.null(`eulaDateUpdated`)) {
        if (!(is.numeric(`eulaDateUpdated`) && length(`eulaDateUpdated`) == 1)) {
          stop(paste("Error! Invalid data for `eulaDateUpdated`. Must be an integer:", `eulaDateUpdated`))
        }
        self$`eulaDateUpdated` <- `eulaDateUpdated`
      }
      if (!is.null(`modules`)) {
        if (!(is.character(`modules`) && length(`modules`) == 1)) {
          stop(paste("Error! Invalid data for `modules`. Must be a string:", `modules`))
        }
        self$`modules` <- `modules`
      }
      if (!is.null(`billableEntityName`)) {
        if (!(is.character(`billableEntityName`) && length(`billableEntityName`) == 1)) {
          stop(paste("Error! Invalid data for `billableEntityName`. Must be a string:", `billableEntityName`))
        }
        self$`billableEntityName` <- `billableEntityName`
      }
      if (!is.null(`showInActivities`)) {
        if (!(is.logical(`showInActivities`) && length(`showInActivities`) == 1)) {
          stop(paste("Error! Invalid data for `showInActivities`. Must be a boolean:", `showInActivities`))
        }
        self$`showInActivities` <- `showInActivities`
      }
      if (!is.null(`cssClass`)) {
        if (!(is.character(`cssClass`) && length(`cssClass`) == 1)) {
          stop(paste("Error! Invalid data for `cssClass`. Must be a string:", `cssClass`))
        }
        self$`cssClass` <- `cssClass`
      }
      if (!is.null(`inviteWelcomeText`)) {
        if (!(is.character(`inviteWelcomeText`) && length(`inviteWelcomeText`) == 1)) {
          stop(paste("Error! Invalid data for `inviteWelcomeText`. Must be a string:", `inviteWelcomeText`))
        }
        self$`inviteWelcomeText` <- `inviteWelcomeText`
      }
      if (!is.null(`invitePageUrl`)) {
        if (!(is.character(`invitePageUrl`) && length(`invitePageUrl`) == 1)) {
          stop(paste("Error! Invalid data for `invitePageUrl`. Must be a string:", `invitePageUrl`))
        }
        self$`invitePageUrl` <- `invitePageUrl`
      }
      if (!is.null(`apnsCertificateFileName`)) {
        if (!(is.character(`apnsCertificateFileName`) && length(`apnsCertificateFileName`) == 1)) {
          stop(paste("Error! Invalid data for `apnsCertificateFileName`. Must be a string:", `apnsCertificateFileName`))
        }
        self$`apnsCertificateFileName` <- `apnsCertificateFileName`
      }
      if (!is.null(`facebookAppId`)) {
        if (!(is.character(`facebookAppId`) && length(`facebookAppId`) == 1)) {
          stop(paste("Error! Invalid data for `facebookAppId`. Must be a string:", `facebookAppId`))
        }
        self$`facebookAppId` <- `facebookAppId`
      }
      if (!is.null(`facebookAppSecret`)) {
        if (!(is.character(`facebookAppSecret`) && length(`facebookAppSecret`) == 1)) {
          stop(paste("Error! Invalid data for `facebookAppSecret`. Must be a string:", `facebookAppSecret`))
        }
        self$`facebookAppSecret` <- `facebookAppSecret`
      }
      if (!is.null(`appToken`)) {
        if (!(is.character(`appToken`) && length(`appToken`) == 1)) {
          stop(paste("Error! Invalid data for `appToken`. Must be a string:", `appToken`))
        }
        self$`appToken` <- `appToken`
      }
      if (!is.null(`googleApiKey`)) {
        if (!(is.character(`googleApiKey`) && length(`googleApiKey`) == 1)) {
          stop(paste("Error! Invalid data for `googleApiKey`. Must be a string:", `googleApiKey`))
        }
        self$`googleApiKey` <- `googleApiKey`
      }
      if (!is.null(`appRestKey`)) {
        if (!(is.character(`appRestKey`) && length(`appRestKey`) == 1)) {
          stop(paste("Error! Invalid data for `appRestKey`. Must be a string:", `appRestKey`))
        }
        self$`appRestKey` <- `appRestKey`
      }
      if (!is.null(`publicContentApproval`)) {
        if (!(is.logical(`publicContentApproval`) && length(`publicContentApproval`) == 1)) {
          stop(paste("Error! Invalid data for `publicContentApproval`. Must be a boolean:", `publicContentApproval`))
        }
        self$`publicContentApproval` <- `publicContentApproval`
      }
      if (!is.null(`productionMode`)) {
        if (!(is.logical(`productionMode`) && length(`productionMode`) == 1)) {
          stop(paste("Error! Invalid data for `productionMode`. Must be a boolean:", `productionMode`))
        }
        self$`productionMode` <- `productionMode`
      }
      if (!is.null(`minimumSessionLength`)) {
        if (!(is.numeric(`minimumSessionLength`) && length(`minimumSessionLength`) == 1)) {
          stop(paste("Error! Invalid data for `minimumSessionLength`. Must be an integer:", `minimumSessionLength`))
        }
        self$`minimumSessionLength` <- `minimumSessionLength`
      }
      if (!is.null(`sessionGapLength`)) {
        if (!(is.numeric(`sessionGapLength`) && length(`sessionGapLength`) == 1)) {
          stop(paste("Error! Invalid data for `sessionGapLength`. Must be an integer:", `sessionGapLength`))
        }
        self$`sessionGapLength` <- `sessionGapLength`
      }
      if (!is.null(`sqootApiKey`)) {
        if (!(is.character(`sqootApiKey`) && length(`sqootApiKey`) == 1)) {
          stop(paste("Error! Invalid data for `sqootApiKey`. Must be a string:", `sqootApiKey`))
        }
        self$`sqootApiKey` <- `sqootApiKey`
      }
      if (!is.null(`amqpEnabled`)) {
        if (!(is.logical(`amqpEnabled`) && length(`amqpEnabled`) == 1)) {
          stop(paste("Error! Invalid data for `amqpEnabled`. Must be a boolean:", `amqpEnabled`))
        }
        self$`amqpEnabled` <- `amqpEnabled`
      }
      if (!is.null(`authorizedCount`)) {
        if (!(is.numeric(`authorizedCount`) && length(`authorizedCount`) == 1)) {
          stop(paste("Error! Invalid data for `authorizedCount`. Must be an integer:", `authorizedCount`))
        }
        self$`authorizedCount` <- `authorizedCount`
      }
      if (!is.null(`authorizedServers`)) {
        if (!(is.character(`authorizedServers`) && length(`authorizedServers`) == 1)) {
          stop(paste("Error! Invalid data for `authorizedServers`. Must be a string:", `authorizedServers`))
        }
        self$`authorizedServers` <- `authorizedServers`
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
    #' @return ApplicationResponse as a base R list.
    #' @examples
    #' # convert array of ApplicationResponse (x) to a data frame
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
    #' Convert ApplicationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApplicationResponseObject <- list()
      if (!is.null(self$`valid`)) {
        ApplicationResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ApplicationResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ApplicationResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ApplicationResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ApplicationResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ApplicationResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ApplicationResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`applicationId`)) {
        ApplicationResponseObject[["applicationId"]] <-
          self$`applicationId`
      }
      if (!is.null(self$`appKey`)) {
        ApplicationResponseObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`title`)) {
        ApplicationResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`currentBuildVersion`)) {
        ApplicationResponseObject[["currentBuildVersion"]] <-
          self$`currentBuildVersion`
      }
      if (!is.null(self$`currentApiVersion`)) {
        ApplicationResponseObject[["currentApiVersion"]] <-
          self$`currentApiVersion`
      }
      if (!is.null(self$`appIcon`)) {
        ApplicationResponseObject[["appIcon"]] <-
          self$extractSimpleType(self$`appIcon`)
      }
      if (!is.null(self$`appLogo`)) {
        ApplicationResponseObject[["appLogo"]] <-
          self$extractSimpleType(self$`appLogo`)
      }
      if (!is.null(self$`active`)) {
        ApplicationResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`about`)) {
        ApplicationResponseObject[["about"]] <-
          self$`about`
      }
      if (!is.null(self$`landingPageUrl`)) {
        ApplicationResponseObject[["landingPageUrl"]] <-
          self$`landingPageUrl`
      }
      if (!is.null(self$`landingPageFullUrl`)) {
        ApplicationResponseObject[["landingPageFullUrl"]] <-
          self$`landingPageFullUrl`
      }
      if (!is.null(self$`defaultImageFullUrl`)) {
        ApplicationResponseObject[["defaultImageFullUrl"]] <-
          self$`defaultImageFullUrl`
      }
      if (!is.null(self$`activityDescription`)) {
        ApplicationResponseObject[["activityDescription"]] <-
          self$`activityDescription`
      }
      if (!is.null(self$`platforms`)) {
        ApplicationResponseObject[["platforms"]] <-
          self$extractSimpleType(self$`platforms`)
      }
      if (!is.null(self$`categories`)) {
        ApplicationResponseObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`placementCount`)) {
        ApplicationResponseObject[["placementCount"]] <-
          self$`placementCount`
      }
      if (!is.null(self$`billable`)) {
        ApplicationResponseObject[["billable"]] <-
          self$extractSimpleType(self$`billable`)
      }
      if (!is.null(self$`hasAds`)) {
        ApplicationResponseObject[["hasAds"]] <-
          self$`hasAds`
      }
      if (!is.null(self$`publicNotifications`)) {
        ApplicationResponseObject[["publicNotifications"]] <-
          self$`publicNotifications`
      }
      if (!is.null(self$`urlScheme`)) {
        ApplicationResponseObject[["urlScheme"]] <-
          self$`urlScheme`
      }
      if (!is.null(self$`global`)) {
        ApplicationResponseObject[["global"]] <-
          self$`global`
      }
      if (!is.null(self$`downloadUrls`)) {
        ApplicationResponseObject[["downloadUrls"]] <-
          self$`downloadUrls`
      }
      if (!is.null(self$`localAdsEnabled`)) {
        ApplicationResponseObject[["localAdsEnabled"]] <-
          self$`localAdsEnabled`
      }
      if (!is.null(self$`trilatSettings`)) {
        ApplicationResponseObject[["trilatSettings"]] <-
          self$extractSimpleType(self$`trilatSettings`)
      }
      if (!is.null(self$`appType`)) {
        ApplicationResponseObject[["appType"]] <-
          self$`appType`
      }
      if (!is.null(self$`appName`)) {
        ApplicationResponseObject[["appName"]] <-
          self$`appName`
      }
      if (!is.null(self$`bundleId`)) {
        ApplicationResponseObject[["bundleId"]] <-
          self$`bundleId`
      }
      if (!is.null(self$`scoringType`)) {
        ApplicationResponseObject[["scoringType"]] <-
          self$`scoringType`
      }
      if (!is.null(self$`hintCost`)) {
        ApplicationResponseObject[["hintCost"]] <-
          self$`hintCost`
      }
      if (!is.null(self$`maxScore`)) {
        ApplicationResponseObject[["maxScore"]] <-
          self$`maxScore`
      }
      if (!is.null(self$`ticketsPerPoint`)) {
        ApplicationResponseObject[["ticketsPerPoint"]] <-
          self$`ticketsPerPoint`
      }
      if (!is.null(self$`hasGameData`)) {
        ApplicationResponseObject[["hasGameData"]] <-
          self$`hasGameData`
      }
      if (!is.null(self$`globalTickets`)) {
        ApplicationResponseObject[["globalTickets"]] <-
          self$`globalTickets`
      }
      if (!is.null(self$`eulaVersion`)) {
        ApplicationResponseObject[["eulaVersion"]] <-
          self$`eulaVersion`
      }
      if (!is.null(self$`eulaDateUpdated`)) {
        ApplicationResponseObject[["eulaDateUpdated"]] <-
          self$`eulaDateUpdated`
      }
      if (!is.null(self$`modules`)) {
        ApplicationResponseObject[["modules"]] <-
          self$`modules`
      }
      if (!is.null(self$`billableEntityName`)) {
        ApplicationResponseObject[["billableEntityName"]] <-
          self$`billableEntityName`
      }
      if (!is.null(self$`showInActivities`)) {
        ApplicationResponseObject[["showInActivities"]] <-
          self$`showInActivities`
      }
      if (!is.null(self$`cssClass`)) {
        ApplicationResponseObject[["cssClass"]] <-
          self$`cssClass`
      }
      if (!is.null(self$`inviteWelcomeText`)) {
        ApplicationResponseObject[["inviteWelcomeText"]] <-
          self$`inviteWelcomeText`
      }
      if (!is.null(self$`invitePageUrl`)) {
        ApplicationResponseObject[["invitePageUrl"]] <-
          self$`invitePageUrl`
      }
      if (!is.null(self$`apnsCertificateFileName`)) {
        ApplicationResponseObject[["apnsCertificateFileName"]] <-
          self$`apnsCertificateFileName`
      }
      if (!is.null(self$`facebookAppId`)) {
        ApplicationResponseObject[["facebookAppId"]] <-
          self$`facebookAppId`
      }
      if (!is.null(self$`facebookAppSecret`)) {
        ApplicationResponseObject[["facebookAppSecret"]] <-
          self$`facebookAppSecret`
      }
      if (!is.null(self$`appToken`)) {
        ApplicationResponseObject[["appToken"]] <-
          self$`appToken`
      }
      if (!is.null(self$`googleApiKey`)) {
        ApplicationResponseObject[["googleApiKey"]] <-
          self$`googleApiKey`
      }
      if (!is.null(self$`appRestKey`)) {
        ApplicationResponseObject[["appRestKey"]] <-
          self$`appRestKey`
      }
      if (!is.null(self$`publicContentApproval`)) {
        ApplicationResponseObject[["publicContentApproval"]] <-
          self$`publicContentApproval`
      }
      if (!is.null(self$`productionMode`)) {
        ApplicationResponseObject[["productionMode"]] <-
          self$`productionMode`
      }
      if (!is.null(self$`minimumSessionLength`)) {
        ApplicationResponseObject[["minimumSessionLength"]] <-
          self$`minimumSessionLength`
      }
      if (!is.null(self$`sessionGapLength`)) {
        ApplicationResponseObject[["sessionGapLength"]] <-
          self$`sessionGapLength`
      }
      if (!is.null(self$`sqootApiKey`)) {
        ApplicationResponseObject[["sqootApiKey"]] <-
          self$`sqootApiKey`
      }
      if (!is.null(self$`amqpEnabled`)) {
        ApplicationResponseObject[["amqpEnabled"]] <-
          self$`amqpEnabled`
      }
      if (!is.null(self$`authorizedCount`)) {
        ApplicationResponseObject[["authorizedCount"]] <-
          self$`authorizedCount`
      }
      if (!is.null(self$`authorizedServers`)) {
        ApplicationResponseObject[["authorizedServers"]] <-
          self$`authorizedServers`
      }
      if (!is.null(self$`returning`)) {
        ApplicationResponseObject[["returning"]] <-
          self$`returning`
      }
      return(ApplicationResponseObject)
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
    #' Deserialize JSON string into an instance of ApplicationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationResponse
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
      if (!is.null(this_object$`appType`)) {
        self$`appType` <- this_object$`appType`
      }
      if (!is.null(this_object$`appName`)) {
        self$`appName` <- this_object$`appName`
      }
      if (!is.null(this_object$`bundleId`)) {
        self$`bundleId` <- this_object$`bundleId`
      }
      if (!is.null(this_object$`scoringType`)) {
        if (!is.null(this_object$`scoringType`) && !(this_object$`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
          stop(paste("Error! \"", this_object$`scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
        }
        self$`scoringType` <- this_object$`scoringType`
      }
      if (!is.null(this_object$`hintCost`)) {
        self$`hintCost` <- this_object$`hintCost`
      }
      if (!is.null(this_object$`maxScore`)) {
        self$`maxScore` <- this_object$`maxScore`
      }
      if (!is.null(this_object$`ticketsPerPoint`)) {
        self$`ticketsPerPoint` <- this_object$`ticketsPerPoint`
      }
      if (!is.null(this_object$`hasGameData`)) {
        self$`hasGameData` <- this_object$`hasGameData`
      }
      if (!is.null(this_object$`globalTickets`)) {
        self$`globalTickets` <- this_object$`globalTickets`
      }
      if (!is.null(this_object$`eulaVersion`)) {
        self$`eulaVersion` <- this_object$`eulaVersion`
      }
      if (!is.null(this_object$`eulaDateUpdated`)) {
        self$`eulaDateUpdated` <- this_object$`eulaDateUpdated`
      }
      if (!is.null(this_object$`modules`)) {
        self$`modules` <- this_object$`modules`
      }
      if (!is.null(this_object$`billableEntityName`)) {
        self$`billableEntityName` <- this_object$`billableEntityName`
      }
      if (!is.null(this_object$`showInActivities`)) {
        self$`showInActivities` <- this_object$`showInActivities`
      }
      if (!is.null(this_object$`cssClass`)) {
        self$`cssClass` <- this_object$`cssClass`
      }
      if (!is.null(this_object$`inviteWelcomeText`)) {
        self$`inviteWelcomeText` <- this_object$`inviteWelcomeText`
      }
      if (!is.null(this_object$`invitePageUrl`)) {
        self$`invitePageUrl` <- this_object$`invitePageUrl`
      }
      if (!is.null(this_object$`apnsCertificateFileName`)) {
        self$`apnsCertificateFileName` <- this_object$`apnsCertificateFileName`
      }
      if (!is.null(this_object$`facebookAppId`)) {
        self$`facebookAppId` <- this_object$`facebookAppId`
      }
      if (!is.null(this_object$`facebookAppSecret`)) {
        self$`facebookAppSecret` <- this_object$`facebookAppSecret`
      }
      if (!is.null(this_object$`appToken`)) {
        self$`appToken` <- this_object$`appToken`
      }
      if (!is.null(this_object$`googleApiKey`)) {
        self$`googleApiKey` <- this_object$`googleApiKey`
      }
      if (!is.null(this_object$`appRestKey`)) {
        self$`appRestKey` <- this_object$`appRestKey`
      }
      if (!is.null(this_object$`publicContentApproval`)) {
        self$`publicContentApproval` <- this_object$`publicContentApproval`
      }
      if (!is.null(this_object$`productionMode`)) {
        self$`productionMode` <- this_object$`productionMode`
      }
      if (!is.null(this_object$`minimumSessionLength`)) {
        self$`minimumSessionLength` <- this_object$`minimumSessionLength`
      }
      if (!is.null(this_object$`sessionGapLength`)) {
        self$`sessionGapLength` <- this_object$`sessionGapLength`
      }
      if (!is.null(this_object$`sqootApiKey`)) {
        self$`sqootApiKey` <- this_object$`sqootApiKey`
      }
      if (!is.null(this_object$`amqpEnabled`)) {
        self$`amqpEnabled` <- this_object$`amqpEnabled`
      }
      if (!is.null(this_object$`authorizedCount`)) {
        self$`authorizedCount` <- this_object$`authorizedCount`
      }
      if (!is.null(this_object$`authorizedServers`)) {
        self$`authorizedServers` <- this_object$`authorizedServers`
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
    #' @return ApplicationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationResponse
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
      self$`appType` <- this_object$`appType`
      self$`appName` <- this_object$`appName`
      self$`bundleId` <- this_object$`bundleId`
      if (!is.null(this_object$`scoringType`) && !(this_object$`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
        stop(paste("Error! \"", this_object$`scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
      }
      self$`scoringType` <- this_object$`scoringType`
      self$`hintCost` <- this_object$`hintCost`
      self$`maxScore` <- this_object$`maxScore`
      self$`ticketsPerPoint` <- this_object$`ticketsPerPoint`
      self$`hasGameData` <- this_object$`hasGameData`
      self$`globalTickets` <- this_object$`globalTickets`
      self$`eulaVersion` <- this_object$`eulaVersion`
      self$`eulaDateUpdated` <- this_object$`eulaDateUpdated`
      self$`modules` <- this_object$`modules`
      self$`billableEntityName` <- this_object$`billableEntityName`
      self$`showInActivities` <- this_object$`showInActivities`
      self$`cssClass` <- this_object$`cssClass`
      self$`inviteWelcomeText` <- this_object$`inviteWelcomeText`
      self$`invitePageUrl` <- this_object$`invitePageUrl`
      self$`apnsCertificateFileName` <- this_object$`apnsCertificateFileName`
      self$`facebookAppId` <- this_object$`facebookAppId`
      self$`facebookAppSecret` <- this_object$`facebookAppSecret`
      self$`appToken` <- this_object$`appToken`
      self$`googleApiKey` <- this_object$`googleApiKey`
      self$`appRestKey` <- this_object$`appRestKey`
      self$`publicContentApproval` <- this_object$`publicContentApproval`
      self$`productionMode` <- this_object$`productionMode`
      self$`minimumSessionLength` <- this_object$`minimumSessionLength`
      self$`sessionGapLength` <- this_object$`sessionGapLength`
      self$`sqootApiKey` <- this_object$`sqootApiKey`
      self$`amqpEnabled` <- this_object$`amqpEnabled`
      self$`authorizedCount` <- this_object$`authorizedCount`
      self$`authorizedServers` <- this_object$`authorizedServers`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApplicationResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApplicationResponse
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
# ApplicationResponse$unlock()
#
## Below is an example to define the print function
# ApplicationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApplicationResponse$lock()

