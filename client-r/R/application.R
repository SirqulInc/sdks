#' Create a new Application
#'
#' @description
#' Application Class
#'
#' @docType class
#' @title Application
#' @description Application Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field title  character [optional]
#' @field about  character [optional]
#' @field certificateUrl  character [optional]
#' @field certificateName  character [optional]
#' @field certificate  \link{BlobFile} [optional]
#' @field certificateLastUpdated  character [optional]
#' @field appDescription  character [optional]
#' @field showInActivities  character [optional]
#' @field cssClass  character [optional]
#' @field inviteWelcomeText  character [optional]
#' @field bundleId  character [optional]
#' @field appType  character [optional]
#' @field scoringType  character [optional]
#' @field appKey  character [optional]
#' @field appRestKey  character [optional]
#' @field appTokenKey  character [optional]
#' @field hintCost  integer [optional]
#' @field eulaDate  character [optional]
#' @field eulaVersion  character [optional]
#' @field landingPageUrl  character [optional]
#' @field invitePageUrl  character [optional]
#' @field downloadUrls  character [optional]
#' @field appName  character [optional]
#' @field appIcon  \link{Asset} [optional]
#' @field appLogo  \link{Asset} [optional]
#' @field billableEntity  \link{BillableEntity} [optional]
#' @field facebookAppId  character [optional]
#' @field facebookAppSecret  character [optional]
#' @field twitterAppId  character [optional]
#' @field twitterAppSecret  character [optional]
#' @field twitterCallbackURL  character [optional]
#' @field defaultImage  character [optional]
#' @field modules  character [optional]
#' @field authorizedServers  character [optional]
#' @field authorizedCount  integer [optional]
#' @field activeServers  character [optional]
#' @field licensePeriod  character [optional]
#' @field hasGameData  character [optional]
#' @field currentBuildVersion  character [optional]
#' @field currentApiVersion  character [optional]
#' @field globalTickets  character [optional]
#' @field ticketsPerPoint  numeric [optional]
#' @field maxPointsPerScore  integer [optional]
#' @field useAppCache  character [optional]
#' @field uniqueUserTag  character [optional]
#' @field useMatchingAlgorithm  character [optional]
#' @field platforms  list(\link{Platform}) [optional]
#' @field categories  list(\link{Category}) [optional]
#' @field placements  list(\link{Placement}) [optional]
#' @field hasAdvertisements  character [optional]
#' @field appleAppId  character [optional]
#' @field googleAppId  character [optional]
#' @field googleApiKey  character [optional]
#' @field googleOAuthClientId  character [optional]
#' @field googleOAuthSecret  character [optional]
#' @field googleOAuthAccessToken  character [optional]
#' @field googleOAuthRefreshToken  character [optional]
#' @field baiduApiKey  character [optional]
#' @field baiduSecretKey  character [optional]
#' @field jpushAppKey  character [optional]
#' @field jpushMasterSecret  character [optional]
#' @field xgPushSecretKey  character [optional]
#' @field publicNotifications  character [optional]
#' @field urlScheme  character [optional]
#' @field retailer  \link{Retailer} [optional]
#' @field objectStoreSession  character [optional]
#' @field publicContentApproval  character [optional]
#' @field productionMode  character [optional]
#' @field griplyBaseUrl  character [optional]
#' @field minimumSessionLength  integer [optional]
#' @field sessionGapLength  integer [optional]
#' @field processSessionData  character [optional]
#' @field localAdsEnabled  character [optional]
#' @field includeInReport  character [optional]
#' @field sqootApiKey  character [optional]
#' @field amqpEnabled  character [optional]
#' @field trilatSettings  \link{TrilatAppSettings} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Application <- R6::R6Class(
  "Application",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `title` = NULL,
    `about` = NULL,
    `certificateUrl` = NULL,
    `certificateName` = NULL,
    `certificate` = NULL,
    `certificateLastUpdated` = NULL,
    `appDescription` = NULL,
    `showInActivities` = NULL,
    `cssClass` = NULL,
    `inviteWelcomeText` = NULL,
    `bundleId` = NULL,
    `appType` = NULL,
    `scoringType` = NULL,
    `appKey` = NULL,
    `appRestKey` = NULL,
    `appTokenKey` = NULL,
    `hintCost` = NULL,
    `eulaDate` = NULL,
    `eulaVersion` = NULL,
    `landingPageUrl` = NULL,
    `invitePageUrl` = NULL,
    `downloadUrls` = NULL,
    `appName` = NULL,
    `appIcon` = NULL,
    `appLogo` = NULL,
    `billableEntity` = NULL,
    `facebookAppId` = NULL,
    `facebookAppSecret` = NULL,
    `twitterAppId` = NULL,
    `twitterAppSecret` = NULL,
    `twitterCallbackURL` = NULL,
    `defaultImage` = NULL,
    `modules` = NULL,
    `authorizedServers` = NULL,
    `authorizedCount` = NULL,
    `activeServers` = NULL,
    `licensePeriod` = NULL,
    `hasGameData` = NULL,
    `currentBuildVersion` = NULL,
    `currentApiVersion` = NULL,
    `globalTickets` = NULL,
    `ticketsPerPoint` = NULL,
    `maxPointsPerScore` = NULL,
    `useAppCache` = NULL,
    `uniqueUserTag` = NULL,
    `useMatchingAlgorithm` = NULL,
    `platforms` = NULL,
    `categories` = NULL,
    `placements` = NULL,
    `hasAdvertisements` = NULL,
    `appleAppId` = NULL,
    `googleAppId` = NULL,
    `googleApiKey` = NULL,
    `googleOAuthClientId` = NULL,
    `googleOAuthSecret` = NULL,
    `googleOAuthAccessToken` = NULL,
    `googleOAuthRefreshToken` = NULL,
    `baiduApiKey` = NULL,
    `baiduSecretKey` = NULL,
    `jpushAppKey` = NULL,
    `jpushMasterSecret` = NULL,
    `xgPushSecretKey` = NULL,
    `publicNotifications` = NULL,
    `urlScheme` = NULL,
    `retailer` = NULL,
    `objectStoreSession` = NULL,
    `publicContentApproval` = NULL,
    `productionMode` = NULL,
    `griplyBaseUrl` = NULL,
    `minimumSessionLength` = NULL,
    `sessionGapLength` = NULL,
    `processSessionData` = NULL,
    `localAdsEnabled` = NULL,
    `includeInReport` = NULL,
    `sqootApiKey` = NULL,
    `amqpEnabled` = NULL,
    `trilatSettings` = NULL,

    #' @description
    #' Initialize a new Application class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param title title
    #' @param about about
    #' @param certificateUrl certificateUrl
    #' @param certificateName certificateName
    #' @param certificate certificate
    #' @param certificateLastUpdated certificateLastUpdated
    #' @param appDescription appDescription
    #' @param showInActivities showInActivities
    #' @param cssClass cssClass
    #' @param inviteWelcomeText inviteWelcomeText
    #' @param bundleId bundleId
    #' @param appType appType
    #' @param scoringType scoringType
    #' @param appKey appKey
    #' @param appRestKey appRestKey
    #' @param appTokenKey appTokenKey
    #' @param hintCost hintCost
    #' @param eulaDate eulaDate
    #' @param eulaVersion eulaVersion
    #' @param landingPageUrl landingPageUrl
    #' @param invitePageUrl invitePageUrl
    #' @param downloadUrls downloadUrls
    #' @param appName appName
    #' @param appIcon appIcon
    #' @param appLogo appLogo
    #' @param billableEntity billableEntity
    #' @param facebookAppId facebookAppId
    #' @param facebookAppSecret facebookAppSecret
    #' @param twitterAppId twitterAppId
    #' @param twitterAppSecret twitterAppSecret
    #' @param twitterCallbackURL twitterCallbackURL
    #' @param defaultImage defaultImage
    #' @param modules modules
    #' @param authorizedServers authorizedServers
    #' @param authorizedCount authorizedCount
    #' @param activeServers activeServers
    #' @param licensePeriod licensePeriod
    #' @param hasGameData hasGameData
    #' @param currentBuildVersion currentBuildVersion
    #' @param currentApiVersion currentApiVersion
    #' @param globalTickets globalTickets
    #' @param ticketsPerPoint ticketsPerPoint
    #' @param maxPointsPerScore maxPointsPerScore
    #' @param useAppCache useAppCache
    #' @param uniqueUserTag uniqueUserTag
    #' @param useMatchingAlgorithm useMatchingAlgorithm
    #' @param platforms platforms
    #' @param categories categories
    #' @param placements placements
    #' @param hasAdvertisements hasAdvertisements
    #' @param appleAppId appleAppId
    #' @param googleAppId googleAppId
    #' @param googleApiKey googleApiKey
    #' @param googleOAuthClientId googleOAuthClientId
    #' @param googleOAuthSecret googleOAuthSecret
    #' @param googleOAuthAccessToken googleOAuthAccessToken
    #' @param googleOAuthRefreshToken googleOAuthRefreshToken
    #' @param baiduApiKey baiduApiKey
    #' @param baiduSecretKey baiduSecretKey
    #' @param jpushAppKey jpushAppKey
    #' @param jpushMasterSecret jpushMasterSecret
    #' @param xgPushSecretKey xgPushSecretKey
    #' @param publicNotifications publicNotifications
    #' @param urlScheme urlScheme
    #' @param retailer retailer
    #' @param objectStoreSession objectStoreSession
    #' @param publicContentApproval publicContentApproval
    #' @param productionMode productionMode
    #' @param griplyBaseUrl griplyBaseUrl
    #' @param minimumSessionLength minimumSessionLength
    #' @param sessionGapLength sessionGapLength
    #' @param processSessionData processSessionData
    #' @param localAdsEnabled localAdsEnabled
    #' @param includeInReport includeInReport
    #' @param sqootApiKey sqootApiKey
    #' @param amqpEnabled amqpEnabled
    #' @param trilatSettings trilatSettings
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `title` = NULL, `about` = NULL, `certificateUrl` = NULL, `certificateName` = NULL, `certificate` = NULL, `certificateLastUpdated` = NULL, `appDescription` = NULL, `showInActivities` = NULL, `cssClass` = NULL, `inviteWelcomeText` = NULL, `bundleId` = NULL, `appType` = NULL, `scoringType` = NULL, `appKey` = NULL, `appRestKey` = NULL, `appTokenKey` = NULL, `hintCost` = NULL, `eulaDate` = NULL, `eulaVersion` = NULL, `landingPageUrl` = NULL, `invitePageUrl` = NULL, `downloadUrls` = NULL, `appName` = NULL, `appIcon` = NULL, `appLogo` = NULL, `billableEntity` = NULL, `facebookAppId` = NULL, `facebookAppSecret` = NULL, `twitterAppId` = NULL, `twitterAppSecret` = NULL, `twitterCallbackURL` = NULL, `defaultImage` = NULL, `modules` = NULL, `authorizedServers` = NULL, `authorizedCount` = NULL, `activeServers` = NULL, `licensePeriod` = NULL, `hasGameData` = NULL, `currentBuildVersion` = NULL, `currentApiVersion` = NULL, `globalTickets` = NULL, `ticketsPerPoint` = NULL, `maxPointsPerScore` = NULL, `useAppCache` = NULL, `uniqueUserTag` = NULL, `useMatchingAlgorithm` = NULL, `platforms` = NULL, `categories` = NULL, `placements` = NULL, `hasAdvertisements` = NULL, `appleAppId` = NULL, `googleAppId` = NULL, `googleApiKey` = NULL, `googleOAuthClientId` = NULL, `googleOAuthSecret` = NULL, `googleOAuthAccessToken` = NULL, `googleOAuthRefreshToken` = NULL, `baiduApiKey` = NULL, `baiduSecretKey` = NULL, `jpushAppKey` = NULL, `jpushMasterSecret` = NULL, `xgPushSecretKey` = NULL, `publicNotifications` = NULL, `urlScheme` = NULL, `retailer` = NULL, `objectStoreSession` = NULL, `publicContentApproval` = NULL, `productionMode` = NULL, `griplyBaseUrl` = NULL, `minimumSessionLength` = NULL, `sessionGapLength` = NULL, `processSessionData` = NULL, `localAdsEnabled` = NULL, `includeInReport` = NULL, `sqootApiKey` = NULL, `amqpEnabled` = NULL, `trilatSettings` = NULL, ...) {
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
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`about`)) {
        if (!(is.character(`about`) && length(`about`) == 1)) {
          stop(paste("Error! Invalid data for `about`. Must be a string:", `about`))
        }
        self$`about` <- `about`
      }
      if (!is.null(`certificateUrl`)) {
        if (!(is.character(`certificateUrl`) && length(`certificateUrl`) == 1)) {
          stop(paste("Error! Invalid data for `certificateUrl`. Must be a string:", `certificateUrl`))
        }
        self$`certificateUrl` <- `certificateUrl`
      }
      if (!is.null(`certificateName`)) {
        if (!(is.character(`certificateName`) && length(`certificateName`) == 1)) {
          stop(paste("Error! Invalid data for `certificateName`. Must be a string:", `certificateName`))
        }
        self$`certificateName` <- `certificateName`
      }
      if (!is.null(`certificate`)) {
        stopifnot(R6::is.R6(`certificate`))
        self$`certificate` <- `certificate`
      }
      if (!is.null(`certificateLastUpdated`)) {
        if (!is.character(`certificateLastUpdated`)) {
          stop(paste("Error! Invalid data for `certificateLastUpdated`. Must be a string:", `certificateLastUpdated`))
        }
        self$`certificateLastUpdated` <- `certificateLastUpdated`
      }
      if (!is.null(`appDescription`)) {
        if (!(is.character(`appDescription`) && length(`appDescription`) == 1)) {
          stop(paste("Error! Invalid data for `appDescription`. Must be a string:", `appDescription`))
        }
        self$`appDescription` <- `appDescription`
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
      if (!is.null(`bundleId`)) {
        if (!(is.character(`bundleId`) && length(`bundleId`) == 1)) {
          stop(paste("Error! Invalid data for `bundleId`. Must be a string:", `bundleId`))
        }
        self$`bundleId` <- `bundleId`
      }
      if (!is.null(`appType`)) {
        if (!(is.character(`appType`) && length(`appType`) == 1)) {
          stop(paste("Error! Invalid data for `appType`. Must be a string:", `appType`))
        }
        self$`appType` <- `appType`
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
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`appRestKey`)) {
        if (!(is.character(`appRestKey`) && length(`appRestKey`) == 1)) {
          stop(paste("Error! Invalid data for `appRestKey`. Must be a string:", `appRestKey`))
        }
        self$`appRestKey` <- `appRestKey`
      }
      if (!is.null(`appTokenKey`)) {
        if (!(is.character(`appTokenKey`) && length(`appTokenKey`) == 1)) {
          stop(paste("Error! Invalid data for `appTokenKey`. Must be a string:", `appTokenKey`))
        }
        self$`appTokenKey` <- `appTokenKey`
      }
      if (!is.null(`hintCost`)) {
        if (!(is.numeric(`hintCost`) && length(`hintCost`) == 1)) {
          stop(paste("Error! Invalid data for `hintCost`. Must be an integer:", `hintCost`))
        }
        self$`hintCost` <- `hintCost`
      }
      if (!is.null(`eulaDate`)) {
        if (!is.character(`eulaDate`)) {
          stop(paste("Error! Invalid data for `eulaDate`. Must be a string:", `eulaDate`))
        }
        self$`eulaDate` <- `eulaDate`
      }
      if (!is.null(`eulaVersion`)) {
        if (!(is.character(`eulaVersion`) && length(`eulaVersion`) == 1)) {
          stop(paste("Error! Invalid data for `eulaVersion`. Must be a string:", `eulaVersion`))
        }
        self$`eulaVersion` <- `eulaVersion`
      }
      if (!is.null(`landingPageUrl`)) {
        if (!(is.character(`landingPageUrl`) && length(`landingPageUrl`) == 1)) {
          stop(paste("Error! Invalid data for `landingPageUrl`. Must be a string:", `landingPageUrl`))
        }
        self$`landingPageUrl` <- `landingPageUrl`
      }
      if (!is.null(`invitePageUrl`)) {
        if (!(is.character(`invitePageUrl`) && length(`invitePageUrl`) == 1)) {
          stop(paste("Error! Invalid data for `invitePageUrl`. Must be a string:", `invitePageUrl`))
        }
        self$`invitePageUrl` <- `invitePageUrl`
      }
      if (!is.null(`downloadUrls`)) {
        if (!(is.character(`downloadUrls`) && length(`downloadUrls`) == 1)) {
          stop(paste("Error! Invalid data for `downloadUrls`. Must be a string:", `downloadUrls`))
        }
        self$`downloadUrls` <- `downloadUrls`
      }
      if (!is.null(`appName`)) {
        if (!(is.character(`appName`) && length(`appName`) == 1)) {
          stop(paste("Error! Invalid data for `appName`. Must be a string:", `appName`))
        }
        self$`appName` <- `appName`
      }
      if (!is.null(`appIcon`)) {
        stopifnot(R6::is.R6(`appIcon`))
        self$`appIcon` <- `appIcon`
      }
      if (!is.null(`appLogo`)) {
        stopifnot(R6::is.R6(`appLogo`))
        self$`appLogo` <- `appLogo`
      }
      if (!is.null(`billableEntity`)) {
        stopifnot(R6::is.R6(`billableEntity`))
        self$`billableEntity` <- `billableEntity`
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
      if (!is.null(`twitterAppId`)) {
        if (!(is.character(`twitterAppId`) && length(`twitterAppId`) == 1)) {
          stop(paste("Error! Invalid data for `twitterAppId`. Must be a string:", `twitterAppId`))
        }
        self$`twitterAppId` <- `twitterAppId`
      }
      if (!is.null(`twitterAppSecret`)) {
        if (!(is.character(`twitterAppSecret`) && length(`twitterAppSecret`) == 1)) {
          stop(paste("Error! Invalid data for `twitterAppSecret`. Must be a string:", `twitterAppSecret`))
        }
        self$`twitterAppSecret` <- `twitterAppSecret`
      }
      if (!is.null(`twitterCallbackURL`)) {
        if (!(is.character(`twitterCallbackURL`) && length(`twitterCallbackURL`) == 1)) {
          stop(paste("Error! Invalid data for `twitterCallbackURL`. Must be a string:", `twitterCallbackURL`))
        }
        self$`twitterCallbackURL` <- `twitterCallbackURL`
      }
      if (!is.null(`defaultImage`)) {
        if (!(is.character(`defaultImage`) && length(`defaultImage`) == 1)) {
          stop(paste("Error! Invalid data for `defaultImage`. Must be a string:", `defaultImage`))
        }
        self$`defaultImage` <- `defaultImage`
      }
      if (!is.null(`modules`)) {
        if (!(is.character(`modules`) && length(`modules`) == 1)) {
          stop(paste("Error! Invalid data for `modules`. Must be a string:", `modules`))
        }
        self$`modules` <- `modules`
      }
      if (!is.null(`authorizedServers`)) {
        if (!(is.character(`authorizedServers`) && length(`authorizedServers`) == 1)) {
          stop(paste("Error! Invalid data for `authorizedServers`. Must be a string:", `authorizedServers`))
        }
        self$`authorizedServers` <- `authorizedServers`
      }
      if (!is.null(`authorizedCount`)) {
        if (!(is.numeric(`authorizedCount`) && length(`authorizedCount`) == 1)) {
          stop(paste("Error! Invalid data for `authorizedCount`. Must be an integer:", `authorizedCount`))
        }
        self$`authorizedCount` <- `authorizedCount`
      }
      if (!is.null(`activeServers`)) {
        if (!(is.character(`activeServers`) && length(`activeServers`) == 1)) {
          stop(paste("Error! Invalid data for `activeServers`. Must be a string:", `activeServers`))
        }
        self$`activeServers` <- `activeServers`
      }
      if (!is.null(`licensePeriod`)) {
        if (!is.character(`licensePeriod`)) {
          stop(paste("Error! Invalid data for `licensePeriod`. Must be a string:", `licensePeriod`))
        }
        self$`licensePeriod` <- `licensePeriod`
      }
      if (!is.null(`hasGameData`)) {
        if (!(is.logical(`hasGameData`) && length(`hasGameData`) == 1)) {
          stop(paste("Error! Invalid data for `hasGameData`. Must be a boolean:", `hasGameData`))
        }
        self$`hasGameData` <- `hasGameData`
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
      if (!is.null(`globalTickets`)) {
        if (!(is.logical(`globalTickets`) && length(`globalTickets`) == 1)) {
          stop(paste("Error! Invalid data for `globalTickets`. Must be a boolean:", `globalTickets`))
        }
        self$`globalTickets` <- `globalTickets`
      }
      if (!is.null(`ticketsPerPoint`)) {
        if (!(is.numeric(`ticketsPerPoint`) && length(`ticketsPerPoint`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsPerPoint`. Must be a number:", `ticketsPerPoint`))
        }
        self$`ticketsPerPoint` <- `ticketsPerPoint`
      }
      if (!is.null(`maxPointsPerScore`)) {
        if (!(is.numeric(`maxPointsPerScore`) && length(`maxPointsPerScore`) == 1)) {
          stop(paste("Error! Invalid data for `maxPointsPerScore`. Must be an integer:", `maxPointsPerScore`))
        }
        self$`maxPointsPerScore` <- `maxPointsPerScore`
      }
      if (!is.null(`useAppCache`)) {
        if (!(is.logical(`useAppCache`) && length(`useAppCache`) == 1)) {
          stop(paste("Error! Invalid data for `useAppCache`. Must be a boolean:", `useAppCache`))
        }
        self$`useAppCache` <- `useAppCache`
      }
      if (!is.null(`uniqueUserTag`)) {
        if (!(is.character(`uniqueUserTag`) && length(`uniqueUserTag`) == 1)) {
          stop(paste("Error! Invalid data for `uniqueUserTag`. Must be a string:", `uniqueUserTag`))
        }
        self$`uniqueUserTag` <- `uniqueUserTag`
      }
      if (!is.null(`useMatchingAlgorithm`)) {
        if (!(is.logical(`useMatchingAlgorithm`) && length(`useMatchingAlgorithm`) == 1)) {
          stop(paste("Error! Invalid data for `useMatchingAlgorithm`. Must be a boolean:", `useMatchingAlgorithm`))
        }
        self$`useMatchingAlgorithm` <- `useMatchingAlgorithm`
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
      if (!is.null(`placements`)) {
        stopifnot(is.vector(`placements`), length(`placements`) != 0)
        sapply(`placements`, function(x) stopifnot(R6::is.R6(x)))
        self$`placements` <- `placements`
      }
      if (!is.null(`hasAdvertisements`)) {
        if (!(is.logical(`hasAdvertisements`) && length(`hasAdvertisements`) == 1)) {
          stop(paste("Error! Invalid data for `hasAdvertisements`. Must be a boolean:", `hasAdvertisements`))
        }
        self$`hasAdvertisements` <- `hasAdvertisements`
      }
      if (!is.null(`appleAppId`)) {
        if (!(is.character(`appleAppId`) && length(`appleAppId`) == 1)) {
          stop(paste("Error! Invalid data for `appleAppId`. Must be a string:", `appleAppId`))
        }
        self$`appleAppId` <- `appleAppId`
      }
      if (!is.null(`googleAppId`)) {
        if (!(is.character(`googleAppId`) && length(`googleAppId`) == 1)) {
          stop(paste("Error! Invalid data for `googleAppId`. Must be a string:", `googleAppId`))
        }
        self$`googleAppId` <- `googleAppId`
      }
      if (!is.null(`googleApiKey`)) {
        if (!(is.character(`googleApiKey`) && length(`googleApiKey`) == 1)) {
          stop(paste("Error! Invalid data for `googleApiKey`. Must be a string:", `googleApiKey`))
        }
        self$`googleApiKey` <- `googleApiKey`
      }
      if (!is.null(`googleOAuthClientId`)) {
        if (!(is.character(`googleOAuthClientId`) && length(`googleOAuthClientId`) == 1)) {
          stop(paste("Error! Invalid data for `googleOAuthClientId`. Must be a string:", `googleOAuthClientId`))
        }
        self$`googleOAuthClientId` <- `googleOAuthClientId`
      }
      if (!is.null(`googleOAuthSecret`)) {
        if (!(is.character(`googleOAuthSecret`) && length(`googleOAuthSecret`) == 1)) {
          stop(paste("Error! Invalid data for `googleOAuthSecret`. Must be a string:", `googleOAuthSecret`))
        }
        self$`googleOAuthSecret` <- `googleOAuthSecret`
      }
      if (!is.null(`googleOAuthAccessToken`)) {
        if (!(is.character(`googleOAuthAccessToken`) && length(`googleOAuthAccessToken`) == 1)) {
          stop(paste("Error! Invalid data for `googleOAuthAccessToken`. Must be a string:", `googleOAuthAccessToken`))
        }
        self$`googleOAuthAccessToken` <- `googleOAuthAccessToken`
      }
      if (!is.null(`googleOAuthRefreshToken`)) {
        if (!(is.character(`googleOAuthRefreshToken`) && length(`googleOAuthRefreshToken`) == 1)) {
          stop(paste("Error! Invalid data for `googleOAuthRefreshToken`. Must be a string:", `googleOAuthRefreshToken`))
        }
        self$`googleOAuthRefreshToken` <- `googleOAuthRefreshToken`
      }
      if (!is.null(`baiduApiKey`)) {
        if (!(is.character(`baiduApiKey`) && length(`baiduApiKey`) == 1)) {
          stop(paste("Error! Invalid data for `baiduApiKey`. Must be a string:", `baiduApiKey`))
        }
        self$`baiduApiKey` <- `baiduApiKey`
      }
      if (!is.null(`baiduSecretKey`)) {
        if (!(is.character(`baiduSecretKey`) && length(`baiduSecretKey`) == 1)) {
          stop(paste("Error! Invalid data for `baiduSecretKey`. Must be a string:", `baiduSecretKey`))
        }
        self$`baiduSecretKey` <- `baiduSecretKey`
      }
      if (!is.null(`jpushAppKey`)) {
        if (!(is.character(`jpushAppKey`) && length(`jpushAppKey`) == 1)) {
          stop(paste("Error! Invalid data for `jpushAppKey`. Must be a string:", `jpushAppKey`))
        }
        self$`jpushAppKey` <- `jpushAppKey`
      }
      if (!is.null(`jpushMasterSecret`)) {
        if (!(is.character(`jpushMasterSecret`) && length(`jpushMasterSecret`) == 1)) {
          stop(paste("Error! Invalid data for `jpushMasterSecret`. Must be a string:", `jpushMasterSecret`))
        }
        self$`jpushMasterSecret` <- `jpushMasterSecret`
      }
      if (!is.null(`xgPushSecretKey`)) {
        if (!(is.character(`xgPushSecretKey`) && length(`xgPushSecretKey`) == 1)) {
          stop(paste("Error! Invalid data for `xgPushSecretKey`. Must be a string:", `xgPushSecretKey`))
        }
        self$`xgPushSecretKey` <- `xgPushSecretKey`
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
      if (!is.null(`retailer`)) {
        stopifnot(R6::is.R6(`retailer`))
        self$`retailer` <- `retailer`
      }
      if (!is.null(`objectStoreSession`)) {
        if (!(is.character(`objectStoreSession`) && length(`objectStoreSession`) == 1)) {
          stop(paste("Error! Invalid data for `objectStoreSession`. Must be a string:", `objectStoreSession`))
        }
        self$`objectStoreSession` <- `objectStoreSession`
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
      if (!is.null(`griplyBaseUrl`)) {
        if (!(is.character(`griplyBaseUrl`) && length(`griplyBaseUrl`) == 1)) {
          stop(paste("Error! Invalid data for `griplyBaseUrl`. Must be a string:", `griplyBaseUrl`))
        }
        self$`griplyBaseUrl` <- `griplyBaseUrl`
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
      if (!is.null(`processSessionData`)) {
        if (!(is.logical(`processSessionData`) && length(`processSessionData`) == 1)) {
          stop(paste("Error! Invalid data for `processSessionData`. Must be a boolean:", `processSessionData`))
        }
        self$`processSessionData` <- `processSessionData`
      }
      if (!is.null(`localAdsEnabled`)) {
        if (!(is.logical(`localAdsEnabled`) && length(`localAdsEnabled`) == 1)) {
          stop(paste("Error! Invalid data for `localAdsEnabled`. Must be a boolean:", `localAdsEnabled`))
        }
        self$`localAdsEnabled` <- `localAdsEnabled`
      }
      if (!is.null(`includeInReport`)) {
        if (!(is.logical(`includeInReport`) && length(`includeInReport`) == 1)) {
          stop(paste("Error! Invalid data for `includeInReport`. Must be a boolean:", `includeInReport`))
        }
        self$`includeInReport` <- `includeInReport`
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
      if (!is.null(`trilatSettings`)) {
        stopifnot(R6::is.R6(`trilatSettings`))
        self$`trilatSettings` <- `trilatSettings`
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
    #' @return Application as a base R list.
    #' @examples
    #' # convert array of Application (x) to a data frame
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
    #' Convert Application to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApplicationObject <- list()
      if (!is.null(self$`id`)) {
        ApplicationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ApplicationObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ApplicationObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`title`)) {
        ApplicationObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`about`)) {
        ApplicationObject[["about"]] <-
          self$`about`
      }
      if (!is.null(self$`certificateUrl`)) {
        ApplicationObject[["certificateUrl"]] <-
          self$`certificateUrl`
      }
      if (!is.null(self$`certificateName`)) {
        ApplicationObject[["certificateName"]] <-
          self$`certificateName`
      }
      if (!is.null(self$`certificate`)) {
        ApplicationObject[["certificate"]] <-
          self$extractSimpleType(self$`certificate`)
      }
      if (!is.null(self$`certificateLastUpdated`)) {
        ApplicationObject[["certificateLastUpdated"]] <-
          self$`certificateLastUpdated`
      }
      if (!is.null(self$`appDescription`)) {
        ApplicationObject[["appDescription"]] <-
          self$`appDescription`
      }
      if (!is.null(self$`showInActivities`)) {
        ApplicationObject[["showInActivities"]] <-
          self$`showInActivities`
      }
      if (!is.null(self$`cssClass`)) {
        ApplicationObject[["cssClass"]] <-
          self$`cssClass`
      }
      if (!is.null(self$`inviteWelcomeText`)) {
        ApplicationObject[["inviteWelcomeText"]] <-
          self$`inviteWelcomeText`
      }
      if (!is.null(self$`bundleId`)) {
        ApplicationObject[["bundleId"]] <-
          self$`bundleId`
      }
      if (!is.null(self$`appType`)) {
        ApplicationObject[["appType"]] <-
          self$`appType`
      }
      if (!is.null(self$`scoringType`)) {
        ApplicationObject[["scoringType"]] <-
          self$`scoringType`
      }
      if (!is.null(self$`appKey`)) {
        ApplicationObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`appRestKey`)) {
        ApplicationObject[["appRestKey"]] <-
          self$`appRestKey`
      }
      if (!is.null(self$`appTokenKey`)) {
        ApplicationObject[["appTokenKey"]] <-
          self$`appTokenKey`
      }
      if (!is.null(self$`hintCost`)) {
        ApplicationObject[["hintCost"]] <-
          self$`hintCost`
      }
      if (!is.null(self$`eulaDate`)) {
        ApplicationObject[["eulaDate"]] <-
          self$`eulaDate`
      }
      if (!is.null(self$`eulaVersion`)) {
        ApplicationObject[["eulaVersion"]] <-
          self$`eulaVersion`
      }
      if (!is.null(self$`landingPageUrl`)) {
        ApplicationObject[["landingPageUrl"]] <-
          self$`landingPageUrl`
      }
      if (!is.null(self$`invitePageUrl`)) {
        ApplicationObject[["invitePageUrl"]] <-
          self$`invitePageUrl`
      }
      if (!is.null(self$`downloadUrls`)) {
        ApplicationObject[["downloadUrls"]] <-
          self$`downloadUrls`
      }
      if (!is.null(self$`appName`)) {
        ApplicationObject[["appName"]] <-
          self$`appName`
      }
      if (!is.null(self$`appIcon`)) {
        ApplicationObject[["appIcon"]] <-
          self$extractSimpleType(self$`appIcon`)
      }
      if (!is.null(self$`appLogo`)) {
        ApplicationObject[["appLogo"]] <-
          self$extractSimpleType(self$`appLogo`)
      }
      if (!is.null(self$`billableEntity`)) {
        ApplicationObject[["billableEntity"]] <-
          self$extractSimpleType(self$`billableEntity`)
      }
      if (!is.null(self$`facebookAppId`)) {
        ApplicationObject[["facebookAppId"]] <-
          self$`facebookAppId`
      }
      if (!is.null(self$`facebookAppSecret`)) {
        ApplicationObject[["facebookAppSecret"]] <-
          self$`facebookAppSecret`
      }
      if (!is.null(self$`twitterAppId`)) {
        ApplicationObject[["twitterAppId"]] <-
          self$`twitterAppId`
      }
      if (!is.null(self$`twitterAppSecret`)) {
        ApplicationObject[["twitterAppSecret"]] <-
          self$`twitterAppSecret`
      }
      if (!is.null(self$`twitterCallbackURL`)) {
        ApplicationObject[["twitterCallbackURL"]] <-
          self$`twitterCallbackURL`
      }
      if (!is.null(self$`defaultImage`)) {
        ApplicationObject[["defaultImage"]] <-
          self$`defaultImage`
      }
      if (!is.null(self$`modules`)) {
        ApplicationObject[["modules"]] <-
          self$`modules`
      }
      if (!is.null(self$`authorizedServers`)) {
        ApplicationObject[["authorizedServers"]] <-
          self$`authorizedServers`
      }
      if (!is.null(self$`authorizedCount`)) {
        ApplicationObject[["authorizedCount"]] <-
          self$`authorizedCount`
      }
      if (!is.null(self$`activeServers`)) {
        ApplicationObject[["activeServers"]] <-
          self$`activeServers`
      }
      if (!is.null(self$`licensePeriod`)) {
        ApplicationObject[["licensePeriod"]] <-
          self$`licensePeriod`
      }
      if (!is.null(self$`hasGameData`)) {
        ApplicationObject[["hasGameData"]] <-
          self$`hasGameData`
      }
      if (!is.null(self$`currentBuildVersion`)) {
        ApplicationObject[["currentBuildVersion"]] <-
          self$`currentBuildVersion`
      }
      if (!is.null(self$`currentApiVersion`)) {
        ApplicationObject[["currentApiVersion"]] <-
          self$`currentApiVersion`
      }
      if (!is.null(self$`globalTickets`)) {
        ApplicationObject[["globalTickets"]] <-
          self$`globalTickets`
      }
      if (!is.null(self$`ticketsPerPoint`)) {
        ApplicationObject[["ticketsPerPoint"]] <-
          self$`ticketsPerPoint`
      }
      if (!is.null(self$`maxPointsPerScore`)) {
        ApplicationObject[["maxPointsPerScore"]] <-
          self$`maxPointsPerScore`
      }
      if (!is.null(self$`useAppCache`)) {
        ApplicationObject[["useAppCache"]] <-
          self$`useAppCache`
      }
      if (!is.null(self$`uniqueUserTag`)) {
        ApplicationObject[["uniqueUserTag"]] <-
          self$`uniqueUserTag`
      }
      if (!is.null(self$`useMatchingAlgorithm`)) {
        ApplicationObject[["useMatchingAlgorithm"]] <-
          self$`useMatchingAlgorithm`
      }
      if (!is.null(self$`platforms`)) {
        ApplicationObject[["platforms"]] <-
          self$extractSimpleType(self$`platforms`)
      }
      if (!is.null(self$`categories`)) {
        ApplicationObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`placements`)) {
        ApplicationObject[["placements"]] <-
          self$extractSimpleType(self$`placements`)
      }
      if (!is.null(self$`hasAdvertisements`)) {
        ApplicationObject[["hasAdvertisements"]] <-
          self$`hasAdvertisements`
      }
      if (!is.null(self$`appleAppId`)) {
        ApplicationObject[["appleAppId"]] <-
          self$`appleAppId`
      }
      if (!is.null(self$`googleAppId`)) {
        ApplicationObject[["googleAppId"]] <-
          self$`googleAppId`
      }
      if (!is.null(self$`googleApiKey`)) {
        ApplicationObject[["googleApiKey"]] <-
          self$`googleApiKey`
      }
      if (!is.null(self$`googleOAuthClientId`)) {
        ApplicationObject[["googleOAuthClientId"]] <-
          self$`googleOAuthClientId`
      }
      if (!is.null(self$`googleOAuthSecret`)) {
        ApplicationObject[["googleOAuthSecret"]] <-
          self$`googleOAuthSecret`
      }
      if (!is.null(self$`googleOAuthAccessToken`)) {
        ApplicationObject[["googleOAuthAccessToken"]] <-
          self$`googleOAuthAccessToken`
      }
      if (!is.null(self$`googleOAuthRefreshToken`)) {
        ApplicationObject[["googleOAuthRefreshToken"]] <-
          self$`googleOAuthRefreshToken`
      }
      if (!is.null(self$`baiduApiKey`)) {
        ApplicationObject[["baiduApiKey"]] <-
          self$`baiduApiKey`
      }
      if (!is.null(self$`baiduSecretKey`)) {
        ApplicationObject[["baiduSecretKey"]] <-
          self$`baiduSecretKey`
      }
      if (!is.null(self$`jpushAppKey`)) {
        ApplicationObject[["jpushAppKey"]] <-
          self$`jpushAppKey`
      }
      if (!is.null(self$`jpushMasterSecret`)) {
        ApplicationObject[["jpushMasterSecret"]] <-
          self$`jpushMasterSecret`
      }
      if (!is.null(self$`xgPushSecretKey`)) {
        ApplicationObject[["xgPushSecretKey"]] <-
          self$`xgPushSecretKey`
      }
      if (!is.null(self$`publicNotifications`)) {
        ApplicationObject[["publicNotifications"]] <-
          self$`publicNotifications`
      }
      if (!is.null(self$`urlScheme`)) {
        ApplicationObject[["urlScheme"]] <-
          self$`urlScheme`
      }
      if (!is.null(self$`retailer`)) {
        ApplicationObject[["retailer"]] <-
          self$extractSimpleType(self$`retailer`)
      }
      if (!is.null(self$`objectStoreSession`)) {
        ApplicationObject[["objectStoreSession"]] <-
          self$`objectStoreSession`
      }
      if (!is.null(self$`publicContentApproval`)) {
        ApplicationObject[["publicContentApproval"]] <-
          self$`publicContentApproval`
      }
      if (!is.null(self$`productionMode`)) {
        ApplicationObject[["productionMode"]] <-
          self$`productionMode`
      }
      if (!is.null(self$`griplyBaseUrl`)) {
        ApplicationObject[["griplyBaseUrl"]] <-
          self$`griplyBaseUrl`
      }
      if (!is.null(self$`minimumSessionLength`)) {
        ApplicationObject[["minimumSessionLength"]] <-
          self$`minimumSessionLength`
      }
      if (!is.null(self$`sessionGapLength`)) {
        ApplicationObject[["sessionGapLength"]] <-
          self$`sessionGapLength`
      }
      if (!is.null(self$`processSessionData`)) {
        ApplicationObject[["processSessionData"]] <-
          self$`processSessionData`
      }
      if (!is.null(self$`localAdsEnabled`)) {
        ApplicationObject[["localAdsEnabled"]] <-
          self$`localAdsEnabled`
      }
      if (!is.null(self$`includeInReport`)) {
        ApplicationObject[["includeInReport"]] <-
          self$`includeInReport`
      }
      if (!is.null(self$`sqootApiKey`)) {
        ApplicationObject[["sqootApiKey"]] <-
          self$`sqootApiKey`
      }
      if (!is.null(self$`amqpEnabled`)) {
        ApplicationObject[["amqpEnabled"]] <-
          self$`amqpEnabled`
      }
      if (!is.null(self$`trilatSettings`)) {
        ApplicationObject[["trilatSettings"]] <-
          self$extractSimpleType(self$`trilatSettings`)
      }
      return(ApplicationObject)
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
    #' Deserialize JSON string into an instance of Application
    #'
    #' @param input_json the JSON input
    #' @return the instance of Application
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
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`about`)) {
        self$`about` <- this_object$`about`
      }
      if (!is.null(this_object$`certificateUrl`)) {
        self$`certificateUrl` <- this_object$`certificateUrl`
      }
      if (!is.null(this_object$`certificateName`)) {
        self$`certificateName` <- this_object$`certificateName`
      }
      if (!is.null(this_object$`certificate`)) {
        `certificate_object` <- BlobFile$new()
        `certificate_object`$fromJSON(jsonlite::toJSON(this_object$`certificate`, auto_unbox = TRUE, digits = NA))
        self$`certificate` <- `certificate_object`
      }
      if (!is.null(this_object$`certificateLastUpdated`)) {
        self$`certificateLastUpdated` <- this_object$`certificateLastUpdated`
      }
      if (!is.null(this_object$`appDescription`)) {
        self$`appDescription` <- this_object$`appDescription`
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
      if (!is.null(this_object$`bundleId`)) {
        self$`bundleId` <- this_object$`bundleId`
      }
      if (!is.null(this_object$`appType`)) {
        self$`appType` <- this_object$`appType`
      }
      if (!is.null(this_object$`scoringType`)) {
        if (!is.null(this_object$`scoringType`) && !(this_object$`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
          stop(paste("Error! \"", this_object$`scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
        }
        self$`scoringType` <- this_object$`scoringType`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`appRestKey`)) {
        self$`appRestKey` <- this_object$`appRestKey`
      }
      if (!is.null(this_object$`appTokenKey`)) {
        self$`appTokenKey` <- this_object$`appTokenKey`
      }
      if (!is.null(this_object$`hintCost`)) {
        self$`hintCost` <- this_object$`hintCost`
      }
      if (!is.null(this_object$`eulaDate`)) {
        self$`eulaDate` <- this_object$`eulaDate`
      }
      if (!is.null(this_object$`eulaVersion`)) {
        self$`eulaVersion` <- this_object$`eulaVersion`
      }
      if (!is.null(this_object$`landingPageUrl`)) {
        self$`landingPageUrl` <- this_object$`landingPageUrl`
      }
      if (!is.null(this_object$`invitePageUrl`)) {
        self$`invitePageUrl` <- this_object$`invitePageUrl`
      }
      if (!is.null(this_object$`downloadUrls`)) {
        self$`downloadUrls` <- this_object$`downloadUrls`
      }
      if (!is.null(this_object$`appName`)) {
        self$`appName` <- this_object$`appName`
      }
      if (!is.null(this_object$`appIcon`)) {
        `appicon_object` <- Asset$new()
        `appicon_object`$fromJSON(jsonlite::toJSON(this_object$`appIcon`, auto_unbox = TRUE, digits = NA))
        self$`appIcon` <- `appicon_object`
      }
      if (!is.null(this_object$`appLogo`)) {
        `applogo_object` <- Asset$new()
        `applogo_object`$fromJSON(jsonlite::toJSON(this_object$`appLogo`, auto_unbox = TRUE, digits = NA))
        self$`appLogo` <- `applogo_object`
      }
      if (!is.null(this_object$`billableEntity`)) {
        `billableentity_object` <- BillableEntity$new()
        `billableentity_object`$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
        self$`billableEntity` <- `billableentity_object`
      }
      if (!is.null(this_object$`facebookAppId`)) {
        self$`facebookAppId` <- this_object$`facebookAppId`
      }
      if (!is.null(this_object$`facebookAppSecret`)) {
        self$`facebookAppSecret` <- this_object$`facebookAppSecret`
      }
      if (!is.null(this_object$`twitterAppId`)) {
        self$`twitterAppId` <- this_object$`twitterAppId`
      }
      if (!is.null(this_object$`twitterAppSecret`)) {
        self$`twitterAppSecret` <- this_object$`twitterAppSecret`
      }
      if (!is.null(this_object$`twitterCallbackURL`)) {
        self$`twitterCallbackURL` <- this_object$`twitterCallbackURL`
      }
      if (!is.null(this_object$`defaultImage`)) {
        self$`defaultImage` <- this_object$`defaultImage`
      }
      if (!is.null(this_object$`modules`)) {
        self$`modules` <- this_object$`modules`
      }
      if (!is.null(this_object$`authorizedServers`)) {
        self$`authorizedServers` <- this_object$`authorizedServers`
      }
      if (!is.null(this_object$`authorizedCount`)) {
        self$`authorizedCount` <- this_object$`authorizedCount`
      }
      if (!is.null(this_object$`activeServers`)) {
        self$`activeServers` <- this_object$`activeServers`
      }
      if (!is.null(this_object$`licensePeriod`)) {
        self$`licensePeriod` <- this_object$`licensePeriod`
      }
      if (!is.null(this_object$`hasGameData`)) {
        self$`hasGameData` <- this_object$`hasGameData`
      }
      if (!is.null(this_object$`currentBuildVersion`)) {
        self$`currentBuildVersion` <- this_object$`currentBuildVersion`
      }
      if (!is.null(this_object$`currentApiVersion`)) {
        self$`currentApiVersion` <- this_object$`currentApiVersion`
      }
      if (!is.null(this_object$`globalTickets`)) {
        self$`globalTickets` <- this_object$`globalTickets`
      }
      if (!is.null(this_object$`ticketsPerPoint`)) {
        self$`ticketsPerPoint` <- this_object$`ticketsPerPoint`
      }
      if (!is.null(this_object$`maxPointsPerScore`)) {
        self$`maxPointsPerScore` <- this_object$`maxPointsPerScore`
      }
      if (!is.null(this_object$`useAppCache`)) {
        self$`useAppCache` <- this_object$`useAppCache`
      }
      if (!is.null(this_object$`uniqueUserTag`)) {
        self$`uniqueUserTag` <- this_object$`uniqueUserTag`
      }
      if (!is.null(this_object$`useMatchingAlgorithm`)) {
        self$`useMatchingAlgorithm` <- this_object$`useMatchingAlgorithm`
      }
      if (!is.null(this_object$`platforms`)) {
        self$`platforms` <- ApiClient$new()$deserializeObj(this_object$`platforms`, "array[Platform]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`placements`)) {
        self$`placements` <- ApiClient$new()$deserializeObj(this_object$`placements`, "array[Placement]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`hasAdvertisements`)) {
        self$`hasAdvertisements` <- this_object$`hasAdvertisements`
      }
      if (!is.null(this_object$`appleAppId`)) {
        self$`appleAppId` <- this_object$`appleAppId`
      }
      if (!is.null(this_object$`googleAppId`)) {
        self$`googleAppId` <- this_object$`googleAppId`
      }
      if (!is.null(this_object$`googleApiKey`)) {
        self$`googleApiKey` <- this_object$`googleApiKey`
      }
      if (!is.null(this_object$`googleOAuthClientId`)) {
        self$`googleOAuthClientId` <- this_object$`googleOAuthClientId`
      }
      if (!is.null(this_object$`googleOAuthSecret`)) {
        self$`googleOAuthSecret` <- this_object$`googleOAuthSecret`
      }
      if (!is.null(this_object$`googleOAuthAccessToken`)) {
        self$`googleOAuthAccessToken` <- this_object$`googleOAuthAccessToken`
      }
      if (!is.null(this_object$`googleOAuthRefreshToken`)) {
        self$`googleOAuthRefreshToken` <- this_object$`googleOAuthRefreshToken`
      }
      if (!is.null(this_object$`baiduApiKey`)) {
        self$`baiduApiKey` <- this_object$`baiduApiKey`
      }
      if (!is.null(this_object$`baiduSecretKey`)) {
        self$`baiduSecretKey` <- this_object$`baiduSecretKey`
      }
      if (!is.null(this_object$`jpushAppKey`)) {
        self$`jpushAppKey` <- this_object$`jpushAppKey`
      }
      if (!is.null(this_object$`jpushMasterSecret`)) {
        self$`jpushMasterSecret` <- this_object$`jpushMasterSecret`
      }
      if (!is.null(this_object$`xgPushSecretKey`)) {
        self$`xgPushSecretKey` <- this_object$`xgPushSecretKey`
      }
      if (!is.null(this_object$`publicNotifications`)) {
        self$`publicNotifications` <- this_object$`publicNotifications`
      }
      if (!is.null(this_object$`urlScheme`)) {
        self$`urlScheme` <- this_object$`urlScheme`
      }
      if (!is.null(this_object$`retailer`)) {
        `retailer_object` <- Retailer$new()
        `retailer_object`$fromJSON(jsonlite::toJSON(this_object$`retailer`, auto_unbox = TRUE, digits = NA))
        self$`retailer` <- `retailer_object`
      }
      if (!is.null(this_object$`objectStoreSession`)) {
        self$`objectStoreSession` <- this_object$`objectStoreSession`
      }
      if (!is.null(this_object$`publicContentApproval`)) {
        self$`publicContentApproval` <- this_object$`publicContentApproval`
      }
      if (!is.null(this_object$`productionMode`)) {
        self$`productionMode` <- this_object$`productionMode`
      }
      if (!is.null(this_object$`griplyBaseUrl`)) {
        self$`griplyBaseUrl` <- this_object$`griplyBaseUrl`
      }
      if (!is.null(this_object$`minimumSessionLength`)) {
        self$`minimumSessionLength` <- this_object$`minimumSessionLength`
      }
      if (!is.null(this_object$`sessionGapLength`)) {
        self$`sessionGapLength` <- this_object$`sessionGapLength`
      }
      if (!is.null(this_object$`processSessionData`)) {
        self$`processSessionData` <- this_object$`processSessionData`
      }
      if (!is.null(this_object$`localAdsEnabled`)) {
        self$`localAdsEnabled` <- this_object$`localAdsEnabled`
      }
      if (!is.null(this_object$`includeInReport`)) {
        self$`includeInReport` <- this_object$`includeInReport`
      }
      if (!is.null(this_object$`sqootApiKey`)) {
        self$`sqootApiKey` <- this_object$`sqootApiKey`
      }
      if (!is.null(this_object$`amqpEnabled`)) {
        self$`amqpEnabled` <- this_object$`amqpEnabled`
      }
      if (!is.null(this_object$`trilatSettings`)) {
        `trilatsettings_object` <- TrilatAppSettings$new()
        `trilatsettings_object`$fromJSON(jsonlite::toJSON(this_object$`trilatSettings`, auto_unbox = TRUE, digits = NA))
        self$`trilatSettings` <- `trilatsettings_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Application in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Application
    #'
    #' @param input_json the JSON input
    #' @return the instance of Application
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`title` <- this_object$`title`
      self$`about` <- this_object$`about`
      self$`certificateUrl` <- this_object$`certificateUrl`
      self$`certificateName` <- this_object$`certificateName`
      self$`certificate` <- BlobFile$new()$fromJSON(jsonlite::toJSON(this_object$`certificate`, auto_unbox = TRUE, digits = NA))
      self$`certificateLastUpdated` <- this_object$`certificateLastUpdated`
      self$`appDescription` <- this_object$`appDescription`
      self$`showInActivities` <- this_object$`showInActivities`
      self$`cssClass` <- this_object$`cssClass`
      self$`inviteWelcomeText` <- this_object$`inviteWelcomeText`
      self$`bundleId` <- this_object$`bundleId`
      self$`appType` <- this_object$`appType`
      if (!is.null(this_object$`scoringType`) && !(this_object$`scoringType` %in% c("GAME_LEVEL", "GAME_OBJECT"))) {
        stop(paste("Error! \"", this_object$`scoringType`, "\" cannot be assigned to `scoringType`. Must be \"GAME_LEVEL\", \"GAME_OBJECT\".", sep = ""))
      }
      self$`scoringType` <- this_object$`scoringType`
      self$`appKey` <- this_object$`appKey`
      self$`appRestKey` <- this_object$`appRestKey`
      self$`appTokenKey` <- this_object$`appTokenKey`
      self$`hintCost` <- this_object$`hintCost`
      self$`eulaDate` <- this_object$`eulaDate`
      self$`eulaVersion` <- this_object$`eulaVersion`
      self$`landingPageUrl` <- this_object$`landingPageUrl`
      self$`invitePageUrl` <- this_object$`invitePageUrl`
      self$`downloadUrls` <- this_object$`downloadUrls`
      self$`appName` <- this_object$`appName`
      self$`appIcon` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`appIcon`, auto_unbox = TRUE, digits = NA))
      self$`appLogo` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`appLogo`, auto_unbox = TRUE, digits = NA))
      self$`billableEntity` <- BillableEntity$new()$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
      self$`facebookAppId` <- this_object$`facebookAppId`
      self$`facebookAppSecret` <- this_object$`facebookAppSecret`
      self$`twitterAppId` <- this_object$`twitterAppId`
      self$`twitterAppSecret` <- this_object$`twitterAppSecret`
      self$`twitterCallbackURL` <- this_object$`twitterCallbackURL`
      self$`defaultImage` <- this_object$`defaultImage`
      self$`modules` <- this_object$`modules`
      self$`authorizedServers` <- this_object$`authorizedServers`
      self$`authorizedCount` <- this_object$`authorizedCount`
      self$`activeServers` <- this_object$`activeServers`
      self$`licensePeriod` <- this_object$`licensePeriod`
      self$`hasGameData` <- this_object$`hasGameData`
      self$`currentBuildVersion` <- this_object$`currentBuildVersion`
      self$`currentApiVersion` <- this_object$`currentApiVersion`
      self$`globalTickets` <- this_object$`globalTickets`
      self$`ticketsPerPoint` <- this_object$`ticketsPerPoint`
      self$`maxPointsPerScore` <- this_object$`maxPointsPerScore`
      self$`useAppCache` <- this_object$`useAppCache`
      self$`uniqueUserTag` <- this_object$`uniqueUserTag`
      self$`useMatchingAlgorithm` <- this_object$`useMatchingAlgorithm`
      self$`platforms` <- ApiClient$new()$deserializeObj(this_object$`platforms`, "array[Platform]", loadNamespace("openapi"))
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      self$`placements` <- ApiClient$new()$deserializeObj(this_object$`placements`, "array[Placement]", loadNamespace("openapi"))
      self$`hasAdvertisements` <- this_object$`hasAdvertisements`
      self$`appleAppId` <- this_object$`appleAppId`
      self$`googleAppId` <- this_object$`googleAppId`
      self$`googleApiKey` <- this_object$`googleApiKey`
      self$`googleOAuthClientId` <- this_object$`googleOAuthClientId`
      self$`googleOAuthSecret` <- this_object$`googleOAuthSecret`
      self$`googleOAuthAccessToken` <- this_object$`googleOAuthAccessToken`
      self$`googleOAuthRefreshToken` <- this_object$`googleOAuthRefreshToken`
      self$`baiduApiKey` <- this_object$`baiduApiKey`
      self$`baiduSecretKey` <- this_object$`baiduSecretKey`
      self$`jpushAppKey` <- this_object$`jpushAppKey`
      self$`jpushMasterSecret` <- this_object$`jpushMasterSecret`
      self$`xgPushSecretKey` <- this_object$`xgPushSecretKey`
      self$`publicNotifications` <- this_object$`publicNotifications`
      self$`urlScheme` <- this_object$`urlScheme`
      self$`retailer` <- Retailer$new()$fromJSON(jsonlite::toJSON(this_object$`retailer`, auto_unbox = TRUE, digits = NA))
      self$`objectStoreSession` <- this_object$`objectStoreSession`
      self$`publicContentApproval` <- this_object$`publicContentApproval`
      self$`productionMode` <- this_object$`productionMode`
      self$`griplyBaseUrl` <- this_object$`griplyBaseUrl`
      self$`minimumSessionLength` <- this_object$`minimumSessionLength`
      self$`sessionGapLength` <- this_object$`sessionGapLength`
      self$`processSessionData` <- this_object$`processSessionData`
      self$`localAdsEnabled` <- this_object$`localAdsEnabled`
      self$`includeInReport` <- this_object$`includeInReport`
      self$`sqootApiKey` <- this_object$`sqootApiKey`
      self$`amqpEnabled` <- this_object$`amqpEnabled`
      self$`trilatSettings` <- TrilatAppSettings$new()$fromJSON(jsonlite::toJSON(this_object$`trilatSettings`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Application and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Application
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
# Application$unlock()
#
## Below is an example to define the print function
# Application$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Application$lock()

