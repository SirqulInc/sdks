#' Create a new RetailerOfferResponse
#'
#' @description
#' RetailerOfferResponse Class
#'
#' @docType class
#' @title RetailerOfferResponse
#' @description RetailerOfferResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field offerLocationId  integer [optional]
#' @field offerId  integer [optional]
#' @field retailerId  integer [optional]
#' @field transactionId  integer [optional]
#' @field favoriteId  integer [optional]
#' @field offerName  character [optional]
#' @field subTitle  character [optional]
#' @field locationName  character [optional]
#' @field starts  character [optional]
#' @field expires  character [optional]
#' @field activated  integer [optional]
#' @field expiration  integer [optional]
#' @field redeemableStart  integer [optional]
#' @field redeemableEnd  integer [optional]
#' @field distance  numeric [optional]
#' @field offerType  character [optional]
#' @field longitude  numeric [optional]
#' @field latitude  numeric [optional]
#' @field favorite  character [optional]
#' @field fullPrice  numeric [optional]
#' @field discountPrice  numeric [optional]
#' @field estimatedValue  numeric [optional]
#' @field voucherDiscountPrice  numeric [optional]
#' @field missionListResponse  \link{MissionListResponse} [optional]
#' @field image  character [optional]
#' @field image1  character [optional]
#' @field image2  character [optional]
#' @field image3  character [optional]
#' @field image4  character [optional]
#' @field image5  character [optional]
#' @field images  list(\link{AssetResponse}) [optional]
#' @field barcode  character [optional]
#' @field externalUrl  character [optional]
#' @field sqootUrl  character [optional]
#' @field active  character [optional]
#' @field location  \link{RetailerLocationResponse} [optional]
#' @field subDetails  character [optional]
#' @field externalRedeemAuth  integer [optional]
#' @field externalRedeemOptions  character [optional]
#' @field publisher  character [optional]
#' @field product  \link{ProductResponse} [optional]
#' @field event  \link{EventResponse} [optional]
#' @field media  \link{MediaResponse} [optional]
#' @field viewedCount  integer [optional]
#' @field clickedCount  integer [optional]
#' @field addedLimit  integer [optional]
#' @field addedCount  integer [optional]
#' @field usedCount  integer [optional]
#' @field removedCount  integer [optional]
#' @field locationAddedCount  integer [optional]
#' @field barcodeEntry  character [optional]
#' @field barcodeType  character [optional]
#' @field ticketsReward  integer [optional]
#' @field ticketsRewardType  character [optional]
#' @field specialOfferType  character [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field favoriteCount  integer [optional]
#' @field noteCount  integer [optional]
#' @field logId  integer [optional]
#' @field billableEntityId  integer [optional]
#' @field responsibleAccountId  integer [optional]
#' @field availabilitySummary  character [optional]
#' @field externalId  character [optional]
#' @field parentOffer  \link{OfferShortResponse} [optional]
#' @field address  character [optional]
#' @field details  character [optional]
#' @field finePrint  character [optional]
#' @field retailerPhoneNumber  character [optional]
#' @field ticketPriceType  character [optional]
#' @field ticketPrice  integer [optional]
#' @field discountPercentage  numeric [optional]
#' @field paymentFees  numeric [optional]
#' @field voucherPrice  numeric [optional]
#' @field purchasesRemaining  integer [optional]
#' @field redemptionsRemaining  integer [optional]
#' @field redemptionStatus  integer [optional]
#' @field redemptionCode  character [optional]
#' @field audiences  list(\link{AudienceResponse}) [optional]
#' @field audienceCount  integer [optional]
#' @field walletCount  integer [optional]
#' @field qrCodeUrl  character [optional]
#' @field showRemaining  character [optional]
#' @field showRedeemed  character [optional]
#' @field purchaseLimit  integer [optional]
#' @field purchaseLimitPerUser  integer [optional]
#' @field redemptionLimit  integer [optional]
#' @field userRedemptionLimit  integer [optional]
#' @field categories  list(\link{CategoryResponse}) [optional]
#' @field filters  list(\link{FilterResponse}) [optional]
#' @field locations  list(named list(object)) [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RetailerOfferResponse <- R6::R6Class(
  "RetailerOfferResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `offerLocationId` = NULL,
    `offerId` = NULL,
    `retailerId` = NULL,
    `transactionId` = NULL,
    `favoriteId` = NULL,
    `offerName` = NULL,
    `subTitle` = NULL,
    `locationName` = NULL,
    `starts` = NULL,
    `expires` = NULL,
    `activated` = NULL,
    `expiration` = NULL,
    `redeemableStart` = NULL,
    `redeemableEnd` = NULL,
    `distance` = NULL,
    `offerType` = NULL,
    `longitude` = NULL,
    `latitude` = NULL,
    `favorite` = NULL,
    `fullPrice` = NULL,
    `discountPrice` = NULL,
    `estimatedValue` = NULL,
    `voucherDiscountPrice` = NULL,
    `missionListResponse` = NULL,
    `image` = NULL,
    `image1` = NULL,
    `image2` = NULL,
    `image3` = NULL,
    `image4` = NULL,
    `image5` = NULL,
    `images` = NULL,
    `barcode` = NULL,
    `externalUrl` = NULL,
    `sqootUrl` = NULL,
    `active` = NULL,
    `location` = NULL,
    `subDetails` = NULL,
    `externalRedeemAuth` = NULL,
    `externalRedeemOptions` = NULL,
    `publisher` = NULL,
    `product` = NULL,
    `event` = NULL,
    `media` = NULL,
    `viewedCount` = NULL,
    `clickedCount` = NULL,
    `addedLimit` = NULL,
    `addedCount` = NULL,
    `usedCount` = NULL,
    `removedCount` = NULL,
    `locationAddedCount` = NULL,
    `barcodeEntry` = NULL,
    `barcodeType` = NULL,
    `ticketsReward` = NULL,
    `ticketsRewardType` = NULL,
    `specialOfferType` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `favoriteCount` = NULL,
    `noteCount` = NULL,
    `logId` = NULL,
    `billableEntityId` = NULL,
    `responsibleAccountId` = NULL,
    `availabilitySummary` = NULL,
    `externalId` = NULL,
    `parentOffer` = NULL,
    `address` = NULL,
    `details` = NULL,
    `finePrint` = NULL,
    `retailerPhoneNumber` = NULL,
    `ticketPriceType` = NULL,
    `ticketPrice` = NULL,
    `discountPercentage` = NULL,
    `paymentFees` = NULL,
    `voucherPrice` = NULL,
    `purchasesRemaining` = NULL,
    `redemptionsRemaining` = NULL,
    `redemptionStatus` = NULL,
    `redemptionCode` = NULL,
    `audiences` = NULL,
    `audienceCount` = NULL,
    `walletCount` = NULL,
    `qrCodeUrl` = NULL,
    `showRemaining` = NULL,
    `showRedeemed` = NULL,
    `purchaseLimit` = NULL,
    `purchaseLimitPerUser` = NULL,
    `redemptionLimit` = NULL,
    `userRedemptionLimit` = NULL,
    `categories` = NULL,
    `filters` = NULL,
    `locations` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new RetailerOfferResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param offerLocationId offerLocationId
    #' @param offerId offerId
    #' @param retailerId retailerId
    #' @param transactionId transactionId
    #' @param favoriteId favoriteId
    #' @param offerName offerName
    #' @param subTitle subTitle
    #' @param locationName locationName
    #' @param starts starts
    #' @param expires expires
    #' @param activated activated
    #' @param expiration expiration
    #' @param redeemableStart redeemableStart
    #' @param redeemableEnd redeemableEnd
    #' @param distance distance
    #' @param offerType offerType
    #' @param longitude longitude
    #' @param latitude latitude
    #' @param favorite favorite
    #' @param fullPrice fullPrice
    #' @param discountPrice discountPrice
    #' @param estimatedValue estimatedValue
    #' @param voucherDiscountPrice voucherDiscountPrice
    #' @param missionListResponse missionListResponse
    #' @param image image
    #' @param image1 image1
    #' @param image2 image2
    #' @param image3 image3
    #' @param image4 image4
    #' @param image5 image5
    #' @param images images
    #' @param barcode barcode
    #' @param externalUrl externalUrl
    #' @param sqootUrl sqootUrl
    #' @param active active
    #' @param location location
    #' @param subDetails subDetails
    #' @param externalRedeemAuth externalRedeemAuth
    #' @param externalRedeemOptions externalRedeemOptions
    #' @param publisher publisher
    #' @param product product
    #' @param event event
    #' @param media media
    #' @param viewedCount viewedCount
    #' @param clickedCount clickedCount
    #' @param addedLimit addedLimit
    #' @param addedCount addedCount
    #' @param usedCount usedCount
    #' @param removedCount removedCount
    #' @param locationAddedCount locationAddedCount
    #' @param barcodeEntry barcodeEntry
    #' @param barcodeType barcodeType
    #' @param ticketsReward ticketsReward
    #' @param ticketsRewardType ticketsRewardType
    #' @param specialOfferType specialOfferType
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param favoriteCount favoriteCount
    #' @param noteCount noteCount
    #' @param logId logId
    #' @param billableEntityId billableEntityId
    #' @param responsibleAccountId responsibleAccountId
    #' @param availabilitySummary availabilitySummary
    #' @param externalId externalId
    #' @param parentOffer parentOffer
    #' @param address address
    #' @param details details
    #' @param finePrint finePrint
    #' @param retailerPhoneNumber retailerPhoneNumber
    #' @param ticketPriceType ticketPriceType
    #' @param ticketPrice ticketPrice
    #' @param discountPercentage discountPercentage
    #' @param paymentFees paymentFees
    #' @param voucherPrice voucherPrice
    #' @param purchasesRemaining purchasesRemaining
    #' @param redemptionsRemaining redemptionsRemaining
    #' @param redemptionStatus redemptionStatus
    #' @param redemptionCode redemptionCode
    #' @param audiences audiences
    #' @param audienceCount audienceCount
    #' @param walletCount walletCount
    #' @param qrCodeUrl qrCodeUrl
    #' @param showRemaining showRemaining
    #' @param showRedeemed showRedeemed
    #' @param purchaseLimit purchaseLimit
    #' @param purchaseLimitPerUser purchaseLimitPerUser
    #' @param redemptionLimit redemptionLimit
    #' @param userRedemptionLimit userRedemptionLimit
    #' @param categories categories
    #' @param filters filters
    #' @param locations locations
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `offerLocationId` = NULL, `offerId` = NULL, `retailerId` = NULL, `transactionId` = NULL, `favoriteId` = NULL, `offerName` = NULL, `subTitle` = NULL, `locationName` = NULL, `starts` = NULL, `expires` = NULL, `activated` = NULL, `expiration` = NULL, `redeemableStart` = NULL, `redeemableEnd` = NULL, `distance` = NULL, `offerType` = NULL, `longitude` = NULL, `latitude` = NULL, `favorite` = NULL, `fullPrice` = NULL, `discountPrice` = NULL, `estimatedValue` = NULL, `voucherDiscountPrice` = NULL, `missionListResponse` = NULL, `image` = NULL, `image1` = NULL, `image2` = NULL, `image3` = NULL, `image4` = NULL, `image5` = NULL, `images` = NULL, `barcode` = NULL, `externalUrl` = NULL, `sqootUrl` = NULL, `active` = NULL, `location` = NULL, `subDetails` = NULL, `externalRedeemAuth` = NULL, `externalRedeemOptions` = NULL, `publisher` = NULL, `product` = NULL, `event` = NULL, `media` = NULL, `viewedCount` = NULL, `clickedCount` = NULL, `addedLimit` = NULL, `addedCount` = NULL, `usedCount` = NULL, `removedCount` = NULL, `locationAddedCount` = NULL, `barcodeEntry` = NULL, `barcodeType` = NULL, `ticketsReward` = NULL, `ticketsRewardType` = NULL, `specialOfferType` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `favoriteCount` = NULL, `noteCount` = NULL, `logId` = NULL, `billableEntityId` = NULL, `responsibleAccountId` = NULL, `availabilitySummary` = NULL, `externalId` = NULL, `parentOffer` = NULL, `address` = NULL, `details` = NULL, `finePrint` = NULL, `retailerPhoneNumber` = NULL, `ticketPriceType` = NULL, `ticketPrice` = NULL, `discountPercentage` = NULL, `paymentFees` = NULL, `voucherPrice` = NULL, `purchasesRemaining` = NULL, `redemptionsRemaining` = NULL, `redemptionStatus` = NULL, `redemptionCode` = NULL, `audiences` = NULL, `audienceCount` = NULL, `walletCount` = NULL, `qrCodeUrl` = NULL, `showRemaining` = NULL, `showRedeemed` = NULL, `purchaseLimit` = NULL, `purchaseLimitPerUser` = NULL, `redemptionLimit` = NULL, `userRedemptionLimit` = NULL, `categories` = NULL, `filters` = NULL, `locations` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`offerLocationId`)) {
        if (!(is.numeric(`offerLocationId`) && length(`offerLocationId`) == 1)) {
          stop(paste("Error! Invalid data for `offerLocationId`. Must be an integer:", `offerLocationId`))
        }
        self$`offerLocationId` <- `offerLocationId`
      }
      if (!is.null(`offerId`)) {
        if (!(is.numeric(`offerId`) && length(`offerId`) == 1)) {
          stop(paste("Error! Invalid data for `offerId`. Must be an integer:", `offerId`))
        }
        self$`offerId` <- `offerId`
      }
      if (!is.null(`retailerId`)) {
        if (!(is.numeric(`retailerId`) && length(`retailerId`) == 1)) {
          stop(paste("Error! Invalid data for `retailerId`. Must be an integer:", `retailerId`))
        }
        self$`retailerId` <- `retailerId`
      }
      if (!is.null(`transactionId`)) {
        if (!(is.numeric(`transactionId`) && length(`transactionId`) == 1)) {
          stop(paste("Error! Invalid data for `transactionId`. Must be an integer:", `transactionId`))
        }
        self$`transactionId` <- `transactionId`
      }
      if (!is.null(`favoriteId`)) {
        if (!(is.numeric(`favoriteId`) && length(`favoriteId`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteId`. Must be an integer:", `favoriteId`))
        }
        self$`favoriteId` <- `favoriteId`
      }
      if (!is.null(`offerName`)) {
        if (!(is.character(`offerName`) && length(`offerName`) == 1)) {
          stop(paste("Error! Invalid data for `offerName`. Must be a string:", `offerName`))
        }
        self$`offerName` <- `offerName`
      }
      if (!is.null(`subTitle`)) {
        if (!(is.character(`subTitle`) && length(`subTitle`) == 1)) {
          stop(paste("Error! Invalid data for `subTitle`. Must be a string:", `subTitle`))
        }
        self$`subTitle` <- `subTitle`
      }
      if (!is.null(`locationName`)) {
        if (!(is.character(`locationName`) && length(`locationName`) == 1)) {
          stop(paste("Error! Invalid data for `locationName`. Must be a string:", `locationName`))
        }
        self$`locationName` <- `locationName`
      }
      if (!is.null(`starts`)) {
        if (!is.character(`starts`)) {
          stop(paste("Error! Invalid data for `starts`. Must be a string:", `starts`))
        }
        self$`starts` <- `starts`
      }
      if (!is.null(`expires`)) {
        if (!is.character(`expires`)) {
          stop(paste("Error! Invalid data for `expires`. Must be a string:", `expires`))
        }
        self$`expires` <- `expires`
      }
      if (!is.null(`activated`)) {
        if (!(is.numeric(`activated`) && length(`activated`) == 1)) {
          stop(paste("Error! Invalid data for `activated`. Must be an integer:", `activated`))
        }
        self$`activated` <- `activated`
      }
      if (!is.null(`expiration`)) {
        if (!(is.numeric(`expiration`) && length(`expiration`) == 1)) {
          stop(paste("Error! Invalid data for `expiration`. Must be an integer:", `expiration`))
        }
        self$`expiration` <- `expiration`
      }
      if (!is.null(`redeemableStart`)) {
        if (!(is.numeric(`redeemableStart`) && length(`redeemableStart`) == 1)) {
          stop(paste("Error! Invalid data for `redeemableStart`. Must be an integer:", `redeemableStart`))
        }
        self$`redeemableStart` <- `redeemableStart`
      }
      if (!is.null(`redeemableEnd`)) {
        if (!(is.numeric(`redeemableEnd`) && length(`redeemableEnd`) == 1)) {
          stop(paste("Error! Invalid data for `redeemableEnd`. Must be an integer:", `redeemableEnd`))
        }
        self$`redeemableEnd` <- `redeemableEnd`
      }
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
      }
      if (!is.null(`offerType`)) {
        if (!(is.character(`offerType`) && length(`offerType`) == 1)) {
          stop(paste("Error! Invalid data for `offerType`. Must be a string:", `offerType`))
        }
        self$`offerType` <- `offerType`
      }
      if (!is.null(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
      }
      if (!is.null(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!is.null(`favorite`)) {
        if (!(is.logical(`favorite`) && length(`favorite`) == 1)) {
          stop(paste("Error! Invalid data for `favorite`. Must be a boolean:", `favorite`))
        }
        self$`favorite` <- `favorite`
      }
      if (!is.null(`fullPrice`)) {
        if (!(is.numeric(`fullPrice`) && length(`fullPrice`) == 1)) {
          stop(paste("Error! Invalid data for `fullPrice`. Must be a number:", `fullPrice`))
        }
        self$`fullPrice` <- `fullPrice`
      }
      if (!is.null(`discountPrice`)) {
        if (!(is.numeric(`discountPrice`) && length(`discountPrice`) == 1)) {
          stop(paste("Error! Invalid data for `discountPrice`. Must be a number:", `discountPrice`))
        }
        self$`discountPrice` <- `discountPrice`
      }
      if (!is.null(`estimatedValue`)) {
        if (!(is.numeric(`estimatedValue`) && length(`estimatedValue`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedValue`. Must be a number:", `estimatedValue`))
        }
        self$`estimatedValue` <- `estimatedValue`
      }
      if (!is.null(`voucherDiscountPrice`)) {
        if (!(is.numeric(`voucherDiscountPrice`) && length(`voucherDiscountPrice`) == 1)) {
          stop(paste("Error! Invalid data for `voucherDiscountPrice`. Must be a number:", `voucherDiscountPrice`))
        }
        self$`voucherDiscountPrice` <- `voucherDiscountPrice`
      }
      if (!is.null(`missionListResponse`)) {
        stopifnot(R6::is.R6(`missionListResponse`))
        self$`missionListResponse` <- `missionListResponse`
      }
      if (!is.null(`image`)) {
        if (!(is.character(`image`) && length(`image`) == 1)) {
          stop(paste("Error! Invalid data for `image`. Must be a string:", `image`))
        }
        self$`image` <- `image`
      }
      if (!is.null(`image1`)) {
        if (!(is.character(`image1`) && length(`image1`) == 1)) {
          stop(paste("Error! Invalid data for `image1`. Must be a string:", `image1`))
        }
        self$`image1` <- `image1`
      }
      if (!is.null(`image2`)) {
        if (!(is.character(`image2`) && length(`image2`) == 1)) {
          stop(paste("Error! Invalid data for `image2`. Must be a string:", `image2`))
        }
        self$`image2` <- `image2`
      }
      if (!is.null(`image3`)) {
        if (!(is.character(`image3`) && length(`image3`) == 1)) {
          stop(paste("Error! Invalid data for `image3`. Must be a string:", `image3`))
        }
        self$`image3` <- `image3`
      }
      if (!is.null(`image4`)) {
        if (!(is.character(`image4`) && length(`image4`) == 1)) {
          stop(paste("Error! Invalid data for `image4`. Must be a string:", `image4`))
        }
        self$`image4` <- `image4`
      }
      if (!is.null(`image5`)) {
        if (!(is.character(`image5`) && length(`image5`) == 1)) {
          stop(paste("Error! Invalid data for `image5`. Must be a string:", `image5`))
        }
        self$`image5` <- `image5`
      }
      if (!is.null(`images`)) {
        stopifnot(is.vector(`images`), length(`images`) != 0)
        sapply(`images`, function(x) stopifnot(R6::is.R6(x)))
        self$`images` <- `images`
      }
      if (!is.null(`barcode`)) {
        if (!(is.character(`barcode`) && length(`barcode`) == 1)) {
          stop(paste("Error! Invalid data for `barcode`. Must be a string:", `barcode`))
        }
        self$`barcode` <- `barcode`
      }
      if (!is.null(`externalUrl`)) {
        if (!(is.character(`externalUrl`) && length(`externalUrl`) == 1)) {
          stop(paste("Error! Invalid data for `externalUrl`. Must be a string:", `externalUrl`))
        }
        self$`externalUrl` <- `externalUrl`
      }
      if (!is.null(`sqootUrl`)) {
        if (!(is.character(`sqootUrl`) && length(`sqootUrl`) == 1)) {
          stop(paste("Error! Invalid data for `sqootUrl`. Must be a string:", `sqootUrl`))
        }
        self$`sqootUrl` <- `sqootUrl`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!is.null(`subDetails`)) {
        if (!(is.character(`subDetails`) && length(`subDetails`) == 1)) {
          stop(paste("Error! Invalid data for `subDetails`. Must be a string:", `subDetails`))
        }
        self$`subDetails` <- `subDetails`
      }
      if (!is.null(`externalRedeemAuth`)) {
        if (!(is.numeric(`externalRedeemAuth`) && length(`externalRedeemAuth`) == 1)) {
          stop(paste("Error! Invalid data for `externalRedeemAuth`. Must be an integer:", `externalRedeemAuth`))
        }
        self$`externalRedeemAuth` <- `externalRedeemAuth`
      }
      if (!is.null(`externalRedeemOptions`)) {
        if (!(is.character(`externalRedeemOptions`) && length(`externalRedeemOptions`) == 1)) {
          stop(paste("Error! Invalid data for `externalRedeemOptions`. Must be a string:", `externalRedeemOptions`))
        }
        self$`externalRedeemOptions` <- `externalRedeemOptions`
      }
      if (!is.null(`publisher`)) {
        if (!(is.character(`publisher`) && length(`publisher`) == 1)) {
          stop(paste("Error! Invalid data for `publisher`. Must be a string:", `publisher`))
        }
        self$`publisher` <- `publisher`
      }
      if (!is.null(`product`)) {
        stopifnot(R6::is.R6(`product`))
        self$`product` <- `product`
      }
      if (!is.null(`event`)) {
        stopifnot(R6::is.R6(`event`))
        self$`event` <- `event`
      }
      if (!is.null(`media`)) {
        stopifnot(R6::is.R6(`media`))
        self$`media` <- `media`
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
      if (!is.null(`addedLimit`)) {
        if (!(is.numeric(`addedLimit`) && length(`addedLimit`) == 1)) {
          stop(paste("Error! Invalid data for `addedLimit`. Must be an integer:", `addedLimit`))
        }
        self$`addedLimit` <- `addedLimit`
      }
      if (!is.null(`addedCount`)) {
        if (!(is.numeric(`addedCount`) && length(`addedCount`) == 1)) {
          stop(paste("Error! Invalid data for `addedCount`. Must be an integer:", `addedCount`))
        }
        self$`addedCount` <- `addedCount`
      }
      if (!is.null(`usedCount`)) {
        if (!(is.numeric(`usedCount`) && length(`usedCount`) == 1)) {
          stop(paste("Error! Invalid data for `usedCount`. Must be an integer:", `usedCount`))
        }
        self$`usedCount` <- `usedCount`
      }
      if (!is.null(`removedCount`)) {
        if (!(is.numeric(`removedCount`) && length(`removedCount`) == 1)) {
          stop(paste("Error! Invalid data for `removedCount`. Must be an integer:", `removedCount`))
        }
        self$`removedCount` <- `removedCount`
      }
      if (!is.null(`locationAddedCount`)) {
        if (!(is.numeric(`locationAddedCount`) && length(`locationAddedCount`) == 1)) {
          stop(paste("Error! Invalid data for `locationAddedCount`. Must be an integer:", `locationAddedCount`))
        }
        self$`locationAddedCount` <- `locationAddedCount`
      }
      if (!is.null(`barcodeEntry`)) {
        if (!(is.character(`barcodeEntry`) && length(`barcodeEntry`) == 1)) {
          stop(paste("Error! Invalid data for `barcodeEntry`. Must be a string:", `barcodeEntry`))
        }
        self$`barcodeEntry` <- `barcodeEntry`
      }
      if (!is.null(`barcodeType`)) {
        if (!(`barcodeType` %in% c("NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA"))) {
          stop(paste("Error! \"", `barcodeType`, "\" cannot be assigned to `barcodeType`. Must be \"NONE\", \"UPC\", \"CODE_128\", \"QR\", \"CUSTOM_MEDIA\".", sep = ""))
        }
        if (!(is.character(`barcodeType`) && length(`barcodeType`) == 1)) {
          stop(paste("Error! Invalid data for `barcodeType`. Must be a string:", `barcodeType`))
        }
        self$`barcodeType` <- `barcodeType`
      }
      if (!is.null(`ticketsReward`)) {
        if (!(is.numeric(`ticketsReward`) && length(`ticketsReward`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsReward`. Must be an integer:", `ticketsReward`))
        }
        self$`ticketsReward` <- `ticketsReward`
      }
      if (!is.null(`ticketsRewardType`)) {
        if (!(is.character(`ticketsRewardType`) && length(`ticketsRewardType`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsRewardType`. Must be a string:", `ticketsRewardType`))
        }
        self$`ticketsRewardType` <- `ticketsRewardType`
      }
      if (!is.null(`specialOfferType`)) {
        if (!(`specialOfferType` %in% c("ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT"))) {
          stop(paste("Error! \"", `specialOfferType`, "\" cannot be assigned to `specialOfferType`. Must be \"ALL\", \"RESERVABLE\", \"REGULAR_OFFER\", \"ACT_NOW\", \"GET_THERE_NOW\", \"SQOOT\", \"TICKETS\", \"YIPIT\".", sep = ""))
        }
        if (!(is.character(`specialOfferType`) && length(`specialOfferType`) == 1)) {
          stop(paste("Error! Invalid data for `specialOfferType`. Must be a string:", `specialOfferType`))
        }
        self$`specialOfferType` <- `specialOfferType`
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
      if (!is.null(`favoriteCount`)) {
        if (!(is.numeric(`favoriteCount`) && length(`favoriteCount`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteCount`. Must be an integer:", `favoriteCount`))
        }
        self$`favoriteCount` <- `favoriteCount`
      }
      if (!is.null(`noteCount`)) {
        if (!(is.numeric(`noteCount`) && length(`noteCount`) == 1)) {
          stop(paste("Error! Invalid data for `noteCount`. Must be an integer:", `noteCount`))
        }
        self$`noteCount` <- `noteCount`
      }
      if (!is.null(`logId`)) {
        if (!(is.numeric(`logId`) && length(`logId`) == 1)) {
          stop(paste("Error! Invalid data for `logId`. Must be an integer:", `logId`))
        }
        self$`logId` <- `logId`
      }
      if (!is.null(`billableEntityId`)) {
        if (!(is.numeric(`billableEntityId`) && length(`billableEntityId`) == 1)) {
          stop(paste("Error! Invalid data for `billableEntityId`. Must be an integer:", `billableEntityId`))
        }
        self$`billableEntityId` <- `billableEntityId`
      }
      if (!is.null(`responsibleAccountId`)) {
        if (!(is.numeric(`responsibleAccountId`) && length(`responsibleAccountId`) == 1)) {
          stop(paste("Error! Invalid data for `responsibleAccountId`. Must be an integer:", `responsibleAccountId`))
        }
        self$`responsibleAccountId` <- `responsibleAccountId`
      }
      if (!is.null(`availabilitySummary`)) {
        if (!(is.character(`availabilitySummary`) && length(`availabilitySummary`) == 1)) {
          stop(paste("Error! Invalid data for `availabilitySummary`. Must be a string:", `availabilitySummary`))
        }
        self$`availabilitySummary` <- `availabilitySummary`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`parentOffer`)) {
        stopifnot(R6::is.R6(`parentOffer`))
        self$`parentOffer` <- `parentOffer`
      }
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`details`)) {
        if (!(is.character(`details`) && length(`details`) == 1)) {
          stop(paste("Error! Invalid data for `details`. Must be a string:", `details`))
        }
        self$`details` <- `details`
      }
      if (!is.null(`finePrint`)) {
        if (!(is.character(`finePrint`) && length(`finePrint`) == 1)) {
          stop(paste("Error! Invalid data for `finePrint`. Must be a string:", `finePrint`))
        }
        self$`finePrint` <- `finePrint`
      }
      if (!is.null(`retailerPhoneNumber`)) {
        if (!(is.character(`retailerPhoneNumber`) && length(`retailerPhoneNumber`) == 1)) {
          stop(paste("Error! Invalid data for `retailerPhoneNumber`. Must be a string:", `retailerPhoneNumber`))
        }
        self$`retailerPhoneNumber` <- `retailerPhoneNumber`
      }
      if (!is.null(`ticketPriceType`)) {
        if (!(is.character(`ticketPriceType`) && length(`ticketPriceType`) == 1)) {
          stop(paste("Error! Invalid data for `ticketPriceType`. Must be a string:", `ticketPriceType`))
        }
        self$`ticketPriceType` <- `ticketPriceType`
      }
      if (!is.null(`ticketPrice`)) {
        if (!(is.numeric(`ticketPrice`) && length(`ticketPrice`) == 1)) {
          stop(paste("Error! Invalid data for `ticketPrice`. Must be an integer:", `ticketPrice`))
        }
        self$`ticketPrice` <- `ticketPrice`
      }
      if (!is.null(`discountPercentage`)) {
        if (!(is.numeric(`discountPercentage`) && length(`discountPercentage`) == 1)) {
          stop(paste("Error! Invalid data for `discountPercentage`. Must be a number:", `discountPercentage`))
        }
        self$`discountPercentage` <- `discountPercentage`
      }
      if (!is.null(`paymentFees`)) {
        if (!(is.numeric(`paymentFees`) && length(`paymentFees`) == 1)) {
          stop(paste("Error! Invalid data for `paymentFees`. Must be a number:", `paymentFees`))
        }
        self$`paymentFees` <- `paymentFees`
      }
      if (!is.null(`voucherPrice`)) {
        if (!(is.numeric(`voucherPrice`) && length(`voucherPrice`) == 1)) {
          stop(paste("Error! Invalid data for `voucherPrice`. Must be a number:", `voucherPrice`))
        }
        self$`voucherPrice` <- `voucherPrice`
      }
      if (!is.null(`purchasesRemaining`)) {
        if (!(is.numeric(`purchasesRemaining`) && length(`purchasesRemaining`) == 1)) {
          stop(paste("Error! Invalid data for `purchasesRemaining`. Must be an integer:", `purchasesRemaining`))
        }
        self$`purchasesRemaining` <- `purchasesRemaining`
      }
      if (!is.null(`redemptionsRemaining`)) {
        if (!(is.numeric(`redemptionsRemaining`) && length(`redemptionsRemaining`) == 1)) {
          stop(paste("Error! Invalid data for `redemptionsRemaining`. Must be an integer:", `redemptionsRemaining`))
        }
        self$`redemptionsRemaining` <- `redemptionsRemaining`
      }
      if (!is.null(`redemptionStatus`)) {
        if (!(is.numeric(`redemptionStatus`) && length(`redemptionStatus`) == 1)) {
          stop(paste("Error! Invalid data for `redemptionStatus`. Must be an integer:", `redemptionStatus`))
        }
        self$`redemptionStatus` <- `redemptionStatus`
      }
      if (!is.null(`redemptionCode`)) {
        if (!(is.character(`redemptionCode`) && length(`redemptionCode`) == 1)) {
          stop(paste("Error! Invalid data for `redemptionCode`. Must be a string:", `redemptionCode`))
        }
        self$`redemptionCode` <- `redemptionCode`
      }
      if (!is.null(`audiences`)) {
        stopifnot(is.vector(`audiences`), length(`audiences`) != 0)
        sapply(`audiences`, function(x) stopifnot(R6::is.R6(x)))
        self$`audiences` <- `audiences`
      }
      if (!is.null(`audienceCount`)) {
        if (!(is.numeric(`audienceCount`) && length(`audienceCount`) == 1)) {
          stop(paste("Error! Invalid data for `audienceCount`. Must be an integer:", `audienceCount`))
        }
        self$`audienceCount` <- `audienceCount`
      }
      if (!is.null(`walletCount`)) {
        if (!(is.numeric(`walletCount`) && length(`walletCount`) == 1)) {
          stop(paste("Error! Invalid data for `walletCount`. Must be an integer:", `walletCount`))
        }
        self$`walletCount` <- `walletCount`
      }
      if (!is.null(`qrCodeUrl`)) {
        if (!(is.character(`qrCodeUrl`) && length(`qrCodeUrl`) == 1)) {
          stop(paste("Error! Invalid data for `qrCodeUrl`. Must be a string:", `qrCodeUrl`))
        }
        self$`qrCodeUrl` <- `qrCodeUrl`
      }
      if (!is.null(`showRemaining`)) {
        if (!(is.logical(`showRemaining`) && length(`showRemaining`) == 1)) {
          stop(paste("Error! Invalid data for `showRemaining`. Must be a boolean:", `showRemaining`))
        }
        self$`showRemaining` <- `showRemaining`
      }
      if (!is.null(`showRedeemed`)) {
        if (!(is.logical(`showRedeemed`) && length(`showRedeemed`) == 1)) {
          stop(paste("Error! Invalid data for `showRedeemed`. Must be a boolean:", `showRedeemed`))
        }
        self$`showRedeemed` <- `showRedeemed`
      }
      if (!is.null(`purchaseLimit`)) {
        if (!(is.numeric(`purchaseLimit`) && length(`purchaseLimit`) == 1)) {
          stop(paste("Error! Invalid data for `purchaseLimit`. Must be an integer:", `purchaseLimit`))
        }
        self$`purchaseLimit` <- `purchaseLimit`
      }
      if (!is.null(`purchaseLimitPerUser`)) {
        if (!(is.numeric(`purchaseLimitPerUser`) && length(`purchaseLimitPerUser`) == 1)) {
          stop(paste("Error! Invalid data for `purchaseLimitPerUser`. Must be an integer:", `purchaseLimitPerUser`))
        }
        self$`purchaseLimitPerUser` <- `purchaseLimitPerUser`
      }
      if (!is.null(`redemptionLimit`)) {
        if (!(is.numeric(`redemptionLimit`) && length(`redemptionLimit`) == 1)) {
          stop(paste("Error! Invalid data for `redemptionLimit`. Must be an integer:", `redemptionLimit`))
        }
        self$`redemptionLimit` <- `redemptionLimit`
      }
      if (!is.null(`userRedemptionLimit`)) {
        if (!(is.numeric(`userRedemptionLimit`) && length(`userRedemptionLimit`) == 1)) {
          stop(paste("Error! Invalid data for `userRedemptionLimit`. Must be an integer:", `userRedemptionLimit`))
        }
        self$`userRedemptionLimit` <- `userRedemptionLimit`
      }
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(R6::is.R6(x)))
        self$`categories` <- `categories`
      }
      if (!is.null(`filters`)) {
        stopifnot(is.vector(`filters`), length(`filters`) != 0)
        sapply(`filters`, function(x) stopifnot(R6::is.R6(x)))
        self$`filters` <- `filters`
      }
      if (!is.null(`locations`)) {
        stopifnot(is.vector(`locations`), length(`locations`) != 0)
        sapply(`locations`, function(x) stopifnot(R6::is.R6(x)))
        self$`locations` <- `locations`
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
    #' @return RetailerOfferResponse as a base R list.
    #' @examples
    #' # convert array of RetailerOfferResponse (x) to a data frame
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
    #' Convert RetailerOfferResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RetailerOfferResponseObject <- list()
      if (!is.null(self$`valid`)) {
        RetailerOfferResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        RetailerOfferResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        RetailerOfferResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        RetailerOfferResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        RetailerOfferResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        RetailerOfferResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        RetailerOfferResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`offerLocationId`)) {
        RetailerOfferResponseObject[["offerLocationId"]] <-
          self$`offerLocationId`
      }
      if (!is.null(self$`offerId`)) {
        RetailerOfferResponseObject[["offerId"]] <-
          self$`offerId`
      }
      if (!is.null(self$`retailerId`)) {
        RetailerOfferResponseObject[["retailerId"]] <-
          self$`retailerId`
      }
      if (!is.null(self$`transactionId`)) {
        RetailerOfferResponseObject[["transactionId"]] <-
          self$`transactionId`
      }
      if (!is.null(self$`favoriteId`)) {
        RetailerOfferResponseObject[["favoriteId"]] <-
          self$`favoriteId`
      }
      if (!is.null(self$`offerName`)) {
        RetailerOfferResponseObject[["offerName"]] <-
          self$`offerName`
      }
      if (!is.null(self$`subTitle`)) {
        RetailerOfferResponseObject[["subTitle"]] <-
          self$`subTitle`
      }
      if (!is.null(self$`locationName`)) {
        RetailerOfferResponseObject[["locationName"]] <-
          self$`locationName`
      }
      if (!is.null(self$`starts`)) {
        RetailerOfferResponseObject[["starts"]] <-
          self$`starts`
      }
      if (!is.null(self$`expires`)) {
        RetailerOfferResponseObject[["expires"]] <-
          self$`expires`
      }
      if (!is.null(self$`activated`)) {
        RetailerOfferResponseObject[["activated"]] <-
          self$`activated`
      }
      if (!is.null(self$`expiration`)) {
        RetailerOfferResponseObject[["expiration"]] <-
          self$`expiration`
      }
      if (!is.null(self$`redeemableStart`)) {
        RetailerOfferResponseObject[["redeemableStart"]] <-
          self$`redeemableStart`
      }
      if (!is.null(self$`redeemableEnd`)) {
        RetailerOfferResponseObject[["redeemableEnd"]] <-
          self$`redeemableEnd`
      }
      if (!is.null(self$`distance`)) {
        RetailerOfferResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`offerType`)) {
        RetailerOfferResponseObject[["offerType"]] <-
          self$`offerType`
      }
      if (!is.null(self$`longitude`)) {
        RetailerOfferResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`latitude`)) {
        RetailerOfferResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`favorite`)) {
        RetailerOfferResponseObject[["favorite"]] <-
          self$`favorite`
      }
      if (!is.null(self$`fullPrice`)) {
        RetailerOfferResponseObject[["fullPrice"]] <-
          self$`fullPrice`
      }
      if (!is.null(self$`discountPrice`)) {
        RetailerOfferResponseObject[["discountPrice"]] <-
          self$`discountPrice`
      }
      if (!is.null(self$`estimatedValue`)) {
        RetailerOfferResponseObject[["estimatedValue"]] <-
          self$`estimatedValue`
      }
      if (!is.null(self$`voucherDiscountPrice`)) {
        RetailerOfferResponseObject[["voucherDiscountPrice"]] <-
          self$`voucherDiscountPrice`
      }
      if (!is.null(self$`missionListResponse`)) {
        RetailerOfferResponseObject[["missionListResponse"]] <-
          self$extractSimpleType(self$`missionListResponse`)
      }
      if (!is.null(self$`image`)) {
        RetailerOfferResponseObject[["image"]] <-
          self$`image`
      }
      if (!is.null(self$`image1`)) {
        RetailerOfferResponseObject[["image1"]] <-
          self$`image1`
      }
      if (!is.null(self$`image2`)) {
        RetailerOfferResponseObject[["image2"]] <-
          self$`image2`
      }
      if (!is.null(self$`image3`)) {
        RetailerOfferResponseObject[["image3"]] <-
          self$`image3`
      }
      if (!is.null(self$`image4`)) {
        RetailerOfferResponseObject[["image4"]] <-
          self$`image4`
      }
      if (!is.null(self$`image5`)) {
        RetailerOfferResponseObject[["image5"]] <-
          self$`image5`
      }
      if (!is.null(self$`images`)) {
        RetailerOfferResponseObject[["images"]] <-
          self$extractSimpleType(self$`images`)
      }
      if (!is.null(self$`barcode`)) {
        RetailerOfferResponseObject[["barcode"]] <-
          self$`barcode`
      }
      if (!is.null(self$`externalUrl`)) {
        RetailerOfferResponseObject[["externalUrl"]] <-
          self$`externalUrl`
      }
      if (!is.null(self$`sqootUrl`)) {
        RetailerOfferResponseObject[["sqootUrl"]] <-
          self$`sqootUrl`
      }
      if (!is.null(self$`active`)) {
        RetailerOfferResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`location`)) {
        RetailerOfferResponseObject[["location"]] <-
          self$extractSimpleType(self$`location`)
      }
      if (!is.null(self$`subDetails`)) {
        RetailerOfferResponseObject[["subDetails"]] <-
          self$`subDetails`
      }
      if (!is.null(self$`externalRedeemAuth`)) {
        RetailerOfferResponseObject[["externalRedeemAuth"]] <-
          self$`externalRedeemAuth`
      }
      if (!is.null(self$`externalRedeemOptions`)) {
        RetailerOfferResponseObject[["externalRedeemOptions"]] <-
          self$`externalRedeemOptions`
      }
      if (!is.null(self$`publisher`)) {
        RetailerOfferResponseObject[["publisher"]] <-
          self$`publisher`
      }
      if (!is.null(self$`product`)) {
        RetailerOfferResponseObject[["product"]] <-
          self$extractSimpleType(self$`product`)
      }
      if (!is.null(self$`event`)) {
        RetailerOfferResponseObject[["event"]] <-
          self$extractSimpleType(self$`event`)
      }
      if (!is.null(self$`media`)) {
        RetailerOfferResponseObject[["media"]] <-
          self$extractSimpleType(self$`media`)
      }
      if (!is.null(self$`viewedCount`)) {
        RetailerOfferResponseObject[["viewedCount"]] <-
          self$`viewedCount`
      }
      if (!is.null(self$`clickedCount`)) {
        RetailerOfferResponseObject[["clickedCount"]] <-
          self$`clickedCount`
      }
      if (!is.null(self$`addedLimit`)) {
        RetailerOfferResponseObject[["addedLimit"]] <-
          self$`addedLimit`
      }
      if (!is.null(self$`addedCount`)) {
        RetailerOfferResponseObject[["addedCount"]] <-
          self$`addedCount`
      }
      if (!is.null(self$`usedCount`)) {
        RetailerOfferResponseObject[["usedCount"]] <-
          self$`usedCount`
      }
      if (!is.null(self$`removedCount`)) {
        RetailerOfferResponseObject[["removedCount"]] <-
          self$`removedCount`
      }
      if (!is.null(self$`locationAddedCount`)) {
        RetailerOfferResponseObject[["locationAddedCount"]] <-
          self$`locationAddedCount`
      }
      if (!is.null(self$`barcodeEntry`)) {
        RetailerOfferResponseObject[["barcodeEntry"]] <-
          self$`barcodeEntry`
      }
      if (!is.null(self$`barcodeType`)) {
        RetailerOfferResponseObject[["barcodeType"]] <-
          self$`barcodeType`
      }
      if (!is.null(self$`ticketsReward`)) {
        RetailerOfferResponseObject[["ticketsReward"]] <-
          self$`ticketsReward`
      }
      if (!is.null(self$`ticketsRewardType`)) {
        RetailerOfferResponseObject[["ticketsRewardType"]] <-
          self$`ticketsRewardType`
      }
      if (!is.null(self$`specialOfferType`)) {
        RetailerOfferResponseObject[["specialOfferType"]] <-
          self$`specialOfferType`
      }
      if (!is.null(self$`likeCount`)) {
        RetailerOfferResponseObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        RetailerOfferResponseObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`favoriteCount`)) {
        RetailerOfferResponseObject[["favoriteCount"]] <-
          self$`favoriteCount`
      }
      if (!is.null(self$`noteCount`)) {
        RetailerOfferResponseObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`logId`)) {
        RetailerOfferResponseObject[["logId"]] <-
          self$`logId`
      }
      if (!is.null(self$`billableEntityId`)) {
        RetailerOfferResponseObject[["billableEntityId"]] <-
          self$`billableEntityId`
      }
      if (!is.null(self$`responsibleAccountId`)) {
        RetailerOfferResponseObject[["responsibleAccountId"]] <-
          self$`responsibleAccountId`
      }
      if (!is.null(self$`availabilitySummary`)) {
        RetailerOfferResponseObject[["availabilitySummary"]] <-
          self$`availabilitySummary`
      }
      if (!is.null(self$`externalId`)) {
        RetailerOfferResponseObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`parentOffer`)) {
        RetailerOfferResponseObject[["parentOffer"]] <-
          self$extractSimpleType(self$`parentOffer`)
      }
      if (!is.null(self$`address`)) {
        RetailerOfferResponseObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`details`)) {
        RetailerOfferResponseObject[["details"]] <-
          self$`details`
      }
      if (!is.null(self$`finePrint`)) {
        RetailerOfferResponseObject[["finePrint"]] <-
          self$`finePrint`
      }
      if (!is.null(self$`retailerPhoneNumber`)) {
        RetailerOfferResponseObject[["retailerPhoneNumber"]] <-
          self$`retailerPhoneNumber`
      }
      if (!is.null(self$`ticketPriceType`)) {
        RetailerOfferResponseObject[["ticketPriceType"]] <-
          self$`ticketPriceType`
      }
      if (!is.null(self$`ticketPrice`)) {
        RetailerOfferResponseObject[["ticketPrice"]] <-
          self$`ticketPrice`
      }
      if (!is.null(self$`discountPercentage`)) {
        RetailerOfferResponseObject[["discountPercentage"]] <-
          self$`discountPercentage`
      }
      if (!is.null(self$`paymentFees`)) {
        RetailerOfferResponseObject[["paymentFees"]] <-
          self$`paymentFees`
      }
      if (!is.null(self$`voucherPrice`)) {
        RetailerOfferResponseObject[["voucherPrice"]] <-
          self$`voucherPrice`
      }
      if (!is.null(self$`purchasesRemaining`)) {
        RetailerOfferResponseObject[["purchasesRemaining"]] <-
          self$`purchasesRemaining`
      }
      if (!is.null(self$`redemptionsRemaining`)) {
        RetailerOfferResponseObject[["redemptionsRemaining"]] <-
          self$`redemptionsRemaining`
      }
      if (!is.null(self$`redemptionStatus`)) {
        RetailerOfferResponseObject[["redemptionStatus"]] <-
          self$`redemptionStatus`
      }
      if (!is.null(self$`redemptionCode`)) {
        RetailerOfferResponseObject[["redemptionCode"]] <-
          self$`redemptionCode`
      }
      if (!is.null(self$`audiences`)) {
        RetailerOfferResponseObject[["audiences"]] <-
          self$extractSimpleType(self$`audiences`)
      }
      if (!is.null(self$`audienceCount`)) {
        RetailerOfferResponseObject[["audienceCount"]] <-
          self$`audienceCount`
      }
      if (!is.null(self$`walletCount`)) {
        RetailerOfferResponseObject[["walletCount"]] <-
          self$`walletCount`
      }
      if (!is.null(self$`qrCodeUrl`)) {
        RetailerOfferResponseObject[["qrCodeUrl"]] <-
          self$`qrCodeUrl`
      }
      if (!is.null(self$`showRemaining`)) {
        RetailerOfferResponseObject[["showRemaining"]] <-
          self$`showRemaining`
      }
      if (!is.null(self$`showRedeemed`)) {
        RetailerOfferResponseObject[["showRedeemed"]] <-
          self$`showRedeemed`
      }
      if (!is.null(self$`purchaseLimit`)) {
        RetailerOfferResponseObject[["purchaseLimit"]] <-
          self$`purchaseLimit`
      }
      if (!is.null(self$`purchaseLimitPerUser`)) {
        RetailerOfferResponseObject[["purchaseLimitPerUser"]] <-
          self$`purchaseLimitPerUser`
      }
      if (!is.null(self$`redemptionLimit`)) {
        RetailerOfferResponseObject[["redemptionLimit"]] <-
          self$`redemptionLimit`
      }
      if (!is.null(self$`userRedemptionLimit`)) {
        RetailerOfferResponseObject[["userRedemptionLimit"]] <-
          self$`userRedemptionLimit`
      }
      if (!is.null(self$`categories`)) {
        RetailerOfferResponseObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`filters`)) {
        RetailerOfferResponseObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`locations`)) {
        RetailerOfferResponseObject[["locations"]] <-
          self$extractSimpleType(self$`locations`)
      }
      if (!is.null(self$`returning`)) {
        RetailerOfferResponseObject[["returning"]] <-
          self$`returning`
      }
      return(RetailerOfferResponseObject)
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
    #' Deserialize JSON string into an instance of RetailerOfferResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerOfferResponse
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
      if (!is.null(this_object$`offerLocationId`)) {
        self$`offerLocationId` <- this_object$`offerLocationId`
      }
      if (!is.null(this_object$`offerId`)) {
        self$`offerId` <- this_object$`offerId`
      }
      if (!is.null(this_object$`retailerId`)) {
        self$`retailerId` <- this_object$`retailerId`
      }
      if (!is.null(this_object$`transactionId`)) {
        self$`transactionId` <- this_object$`transactionId`
      }
      if (!is.null(this_object$`favoriteId`)) {
        self$`favoriteId` <- this_object$`favoriteId`
      }
      if (!is.null(this_object$`offerName`)) {
        self$`offerName` <- this_object$`offerName`
      }
      if (!is.null(this_object$`subTitle`)) {
        self$`subTitle` <- this_object$`subTitle`
      }
      if (!is.null(this_object$`locationName`)) {
        self$`locationName` <- this_object$`locationName`
      }
      if (!is.null(this_object$`starts`)) {
        self$`starts` <- this_object$`starts`
      }
      if (!is.null(this_object$`expires`)) {
        self$`expires` <- this_object$`expires`
      }
      if (!is.null(this_object$`activated`)) {
        self$`activated` <- this_object$`activated`
      }
      if (!is.null(this_object$`expiration`)) {
        self$`expiration` <- this_object$`expiration`
      }
      if (!is.null(this_object$`redeemableStart`)) {
        self$`redeemableStart` <- this_object$`redeemableStart`
      }
      if (!is.null(this_object$`redeemableEnd`)) {
        self$`redeemableEnd` <- this_object$`redeemableEnd`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`offerType`)) {
        self$`offerType` <- this_object$`offerType`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`favorite`)) {
        self$`favorite` <- this_object$`favorite`
      }
      if (!is.null(this_object$`fullPrice`)) {
        self$`fullPrice` <- this_object$`fullPrice`
      }
      if (!is.null(this_object$`discountPrice`)) {
        self$`discountPrice` <- this_object$`discountPrice`
      }
      if (!is.null(this_object$`estimatedValue`)) {
        self$`estimatedValue` <- this_object$`estimatedValue`
      }
      if (!is.null(this_object$`voucherDiscountPrice`)) {
        self$`voucherDiscountPrice` <- this_object$`voucherDiscountPrice`
      }
      if (!is.null(this_object$`missionListResponse`)) {
        `missionlistresponse_object` <- MissionListResponse$new()
        `missionlistresponse_object`$fromJSON(jsonlite::toJSON(this_object$`missionListResponse`, auto_unbox = TRUE, digits = NA))
        self$`missionListResponse` <- `missionlistresponse_object`
      }
      if (!is.null(this_object$`image`)) {
        self$`image` <- this_object$`image`
      }
      if (!is.null(this_object$`image1`)) {
        self$`image1` <- this_object$`image1`
      }
      if (!is.null(this_object$`image2`)) {
        self$`image2` <- this_object$`image2`
      }
      if (!is.null(this_object$`image3`)) {
        self$`image3` <- this_object$`image3`
      }
      if (!is.null(this_object$`image4`)) {
        self$`image4` <- this_object$`image4`
      }
      if (!is.null(this_object$`image5`)) {
        self$`image5` <- this_object$`image5`
      }
      if (!is.null(this_object$`images`)) {
        self$`images` <- ApiClient$new()$deserializeObj(this_object$`images`, "array[AssetResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`barcode`)) {
        self$`barcode` <- this_object$`barcode`
      }
      if (!is.null(this_object$`externalUrl`)) {
        self$`externalUrl` <- this_object$`externalUrl`
      }
      if (!is.null(this_object$`sqootUrl`)) {
        self$`sqootUrl` <- this_object$`sqootUrl`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- RetailerLocationResponse$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`subDetails`)) {
        self$`subDetails` <- this_object$`subDetails`
      }
      if (!is.null(this_object$`externalRedeemAuth`)) {
        self$`externalRedeemAuth` <- this_object$`externalRedeemAuth`
      }
      if (!is.null(this_object$`externalRedeemOptions`)) {
        self$`externalRedeemOptions` <- this_object$`externalRedeemOptions`
      }
      if (!is.null(this_object$`publisher`)) {
        self$`publisher` <- this_object$`publisher`
      }
      if (!is.null(this_object$`product`)) {
        `product_object` <- ProductResponse$new()
        `product_object`$fromJSON(jsonlite::toJSON(this_object$`product`, auto_unbox = TRUE, digits = NA))
        self$`product` <- `product_object`
      }
      if (!is.null(this_object$`event`)) {
        `event_object` <- EventResponse$new()
        `event_object`$fromJSON(jsonlite::toJSON(this_object$`event`, auto_unbox = TRUE, digits = NA))
        self$`event` <- `event_object`
      }
      if (!is.null(this_object$`media`)) {
        `media_object` <- MediaResponse$new()
        `media_object`$fromJSON(jsonlite::toJSON(this_object$`media`, auto_unbox = TRUE, digits = NA))
        self$`media` <- `media_object`
      }
      if (!is.null(this_object$`viewedCount`)) {
        self$`viewedCount` <- this_object$`viewedCount`
      }
      if (!is.null(this_object$`clickedCount`)) {
        self$`clickedCount` <- this_object$`clickedCount`
      }
      if (!is.null(this_object$`addedLimit`)) {
        self$`addedLimit` <- this_object$`addedLimit`
      }
      if (!is.null(this_object$`addedCount`)) {
        self$`addedCount` <- this_object$`addedCount`
      }
      if (!is.null(this_object$`usedCount`)) {
        self$`usedCount` <- this_object$`usedCount`
      }
      if (!is.null(this_object$`removedCount`)) {
        self$`removedCount` <- this_object$`removedCount`
      }
      if (!is.null(this_object$`locationAddedCount`)) {
        self$`locationAddedCount` <- this_object$`locationAddedCount`
      }
      if (!is.null(this_object$`barcodeEntry`)) {
        self$`barcodeEntry` <- this_object$`barcodeEntry`
      }
      if (!is.null(this_object$`barcodeType`)) {
        if (!is.null(this_object$`barcodeType`) && !(this_object$`barcodeType` %in% c("NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA"))) {
          stop(paste("Error! \"", this_object$`barcodeType`, "\" cannot be assigned to `barcodeType`. Must be \"NONE\", \"UPC\", \"CODE_128\", \"QR\", \"CUSTOM_MEDIA\".", sep = ""))
        }
        self$`barcodeType` <- this_object$`barcodeType`
      }
      if (!is.null(this_object$`ticketsReward`)) {
        self$`ticketsReward` <- this_object$`ticketsReward`
      }
      if (!is.null(this_object$`ticketsRewardType`)) {
        self$`ticketsRewardType` <- this_object$`ticketsRewardType`
      }
      if (!is.null(this_object$`specialOfferType`)) {
        if (!is.null(this_object$`specialOfferType`) && !(this_object$`specialOfferType` %in% c("ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT"))) {
          stop(paste("Error! \"", this_object$`specialOfferType`, "\" cannot be assigned to `specialOfferType`. Must be \"ALL\", \"RESERVABLE\", \"REGULAR_OFFER\", \"ACT_NOW\", \"GET_THERE_NOW\", \"SQOOT\", \"TICKETS\", \"YIPIT\".", sep = ""))
        }
        self$`specialOfferType` <- this_object$`specialOfferType`
      }
      if (!is.null(this_object$`likeCount`)) {
        self$`likeCount` <- this_object$`likeCount`
      }
      if (!is.null(this_object$`dislikeCount`)) {
        self$`dislikeCount` <- this_object$`dislikeCount`
      }
      if (!is.null(this_object$`favoriteCount`)) {
        self$`favoriteCount` <- this_object$`favoriteCount`
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`logId`)) {
        self$`logId` <- this_object$`logId`
      }
      if (!is.null(this_object$`billableEntityId`)) {
        self$`billableEntityId` <- this_object$`billableEntityId`
      }
      if (!is.null(this_object$`responsibleAccountId`)) {
        self$`responsibleAccountId` <- this_object$`responsibleAccountId`
      }
      if (!is.null(this_object$`availabilitySummary`)) {
        self$`availabilitySummary` <- this_object$`availabilitySummary`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`parentOffer`)) {
        `parentoffer_object` <- OfferShortResponse$new()
        `parentoffer_object`$fromJSON(jsonlite::toJSON(this_object$`parentOffer`, auto_unbox = TRUE, digits = NA))
        self$`parentOffer` <- `parentoffer_object`
      }
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`details`)) {
        self$`details` <- this_object$`details`
      }
      if (!is.null(this_object$`finePrint`)) {
        self$`finePrint` <- this_object$`finePrint`
      }
      if (!is.null(this_object$`retailerPhoneNumber`)) {
        self$`retailerPhoneNumber` <- this_object$`retailerPhoneNumber`
      }
      if (!is.null(this_object$`ticketPriceType`)) {
        self$`ticketPriceType` <- this_object$`ticketPriceType`
      }
      if (!is.null(this_object$`ticketPrice`)) {
        self$`ticketPrice` <- this_object$`ticketPrice`
      }
      if (!is.null(this_object$`discountPercentage`)) {
        self$`discountPercentage` <- this_object$`discountPercentage`
      }
      if (!is.null(this_object$`paymentFees`)) {
        self$`paymentFees` <- this_object$`paymentFees`
      }
      if (!is.null(this_object$`voucherPrice`)) {
        self$`voucherPrice` <- this_object$`voucherPrice`
      }
      if (!is.null(this_object$`purchasesRemaining`)) {
        self$`purchasesRemaining` <- this_object$`purchasesRemaining`
      }
      if (!is.null(this_object$`redemptionsRemaining`)) {
        self$`redemptionsRemaining` <- this_object$`redemptionsRemaining`
      }
      if (!is.null(this_object$`redemptionStatus`)) {
        self$`redemptionStatus` <- this_object$`redemptionStatus`
      }
      if (!is.null(this_object$`redemptionCode`)) {
        self$`redemptionCode` <- this_object$`redemptionCode`
      }
      if (!is.null(this_object$`audiences`)) {
        self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[AudienceResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`audienceCount`)) {
        self$`audienceCount` <- this_object$`audienceCount`
      }
      if (!is.null(this_object$`walletCount`)) {
        self$`walletCount` <- this_object$`walletCount`
      }
      if (!is.null(this_object$`qrCodeUrl`)) {
        self$`qrCodeUrl` <- this_object$`qrCodeUrl`
      }
      if (!is.null(this_object$`showRemaining`)) {
        self$`showRemaining` <- this_object$`showRemaining`
      }
      if (!is.null(this_object$`showRedeemed`)) {
        self$`showRedeemed` <- this_object$`showRedeemed`
      }
      if (!is.null(this_object$`purchaseLimit`)) {
        self$`purchaseLimit` <- this_object$`purchaseLimit`
      }
      if (!is.null(this_object$`purchaseLimitPerUser`)) {
        self$`purchaseLimitPerUser` <- this_object$`purchaseLimitPerUser`
      }
      if (!is.null(this_object$`redemptionLimit`)) {
        self$`redemptionLimit` <- this_object$`redemptionLimit`
      }
      if (!is.null(this_object$`userRedemptionLimit`)) {
        self$`userRedemptionLimit` <- this_object$`userRedemptionLimit`
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`filters`)) {
        self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[FilterResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`locations`)) {
        self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[map(object)]", loadNamespace("openapi"))
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
    #' @return RetailerOfferResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RetailerOfferResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerOfferResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`offerLocationId` <- this_object$`offerLocationId`
      self$`offerId` <- this_object$`offerId`
      self$`retailerId` <- this_object$`retailerId`
      self$`transactionId` <- this_object$`transactionId`
      self$`favoriteId` <- this_object$`favoriteId`
      self$`offerName` <- this_object$`offerName`
      self$`subTitle` <- this_object$`subTitle`
      self$`locationName` <- this_object$`locationName`
      self$`starts` <- this_object$`starts`
      self$`expires` <- this_object$`expires`
      self$`activated` <- this_object$`activated`
      self$`expiration` <- this_object$`expiration`
      self$`redeemableStart` <- this_object$`redeemableStart`
      self$`redeemableEnd` <- this_object$`redeemableEnd`
      self$`distance` <- this_object$`distance`
      self$`offerType` <- this_object$`offerType`
      self$`longitude` <- this_object$`longitude`
      self$`latitude` <- this_object$`latitude`
      self$`favorite` <- this_object$`favorite`
      self$`fullPrice` <- this_object$`fullPrice`
      self$`discountPrice` <- this_object$`discountPrice`
      self$`estimatedValue` <- this_object$`estimatedValue`
      self$`voucherDiscountPrice` <- this_object$`voucherDiscountPrice`
      self$`missionListResponse` <- MissionListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`missionListResponse`, auto_unbox = TRUE, digits = NA))
      self$`image` <- this_object$`image`
      self$`image1` <- this_object$`image1`
      self$`image2` <- this_object$`image2`
      self$`image3` <- this_object$`image3`
      self$`image4` <- this_object$`image4`
      self$`image5` <- this_object$`image5`
      self$`images` <- ApiClient$new()$deserializeObj(this_object$`images`, "array[AssetResponse]", loadNamespace("openapi"))
      self$`barcode` <- this_object$`barcode`
      self$`externalUrl` <- this_object$`externalUrl`
      self$`sqootUrl` <- this_object$`sqootUrl`
      self$`active` <- this_object$`active`
      self$`location` <- RetailerLocationResponse$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`subDetails` <- this_object$`subDetails`
      self$`externalRedeemAuth` <- this_object$`externalRedeemAuth`
      self$`externalRedeemOptions` <- this_object$`externalRedeemOptions`
      self$`publisher` <- this_object$`publisher`
      self$`product` <- ProductResponse$new()$fromJSON(jsonlite::toJSON(this_object$`product`, auto_unbox = TRUE, digits = NA))
      self$`event` <- EventResponse$new()$fromJSON(jsonlite::toJSON(this_object$`event`, auto_unbox = TRUE, digits = NA))
      self$`media` <- MediaResponse$new()$fromJSON(jsonlite::toJSON(this_object$`media`, auto_unbox = TRUE, digits = NA))
      self$`viewedCount` <- this_object$`viewedCount`
      self$`clickedCount` <- this_object$`clickedCount`
      self$`addedLimit` <- this_object$`addedLimit`
      self$`addedCount` <- this_object$`addedCount`
      self$`usedCount` <- this_object$`usedCount`
      self$`removedCount` <- this_object$`removedCount`
      self$`locationAddedCount` <- this_object$`locationAddedCount`
      self$`barcodeEntry` <- this_object$`barcodeEntry`
      if (!is.null(this_object$`barcodeType`) && !(this_object$`barcodeType` %in% c("NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA"))) {
        stop(paste("Error! \"", this_object$`barcodeType`, "\" cannot be assigned to `barcodeType`. Must be \"NONE\", \"UPC\", \"CODE_128\", \"QR\", \"CUSTOM_MEDIA\".", sep = ""))
      }
      self$`barcodeType` <- this_object$`barcodeType`
      self$`ticketsReward` <- this_object$`ticketsReward`
      self$`ticketsRewardType` <- this_object$`ticketsRewardType`
      if (!is.null(this_object$`specialOfferType`) && !(this_object$`specialOfferType` %in% c("ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT"))) {
        stop(paste("Error! \"", this_object$`specialOfferType`, "\" cannot be assigned to `specialOfferType`. Must be \"ALL\", \"RESERVABLE\", \"REGULAR_OFFER\", \"ACT_NOW\", \"GET_THERE_NOW\", \"SQOOT\", \"TICKETS\", \"YIPIT\".", sep = ""))
      }
      self$`specialOfferType` <- this_object$`specialOfferType`
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`favoriteCount` <- this_object$`favoriteCount`
      self$`noteCount` <- this_object$`noteCount`
      self$`logId` <- this_object$`logId`
      self$`billableEntityId` <- this_object$`billableEntityId`
      self$`responsibleAccountId` <- this_object$`responsibleAccountId`
      self$`availabilitySummary` <- this_object$`availabilitySummary`
      self$`externalId` <- this_object$`externalId`
      self$`parentOffer` <- OfferShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`parentOffer`, auto_unbox = TRUE, digits = NA))
      self$`address` <- this_object$`address`
      self$`details` <- this_object$`details`
      self$`finePrint` <- this_object$`finePrint`
      self$`retailerPhoneNumber` <- this_object$`retailerPhoneNumber`
      self$`ticketPriceType` <- this_object$`ticketPriceType`
      self$`ticketPrice` <- this_object$`ticketPrice`
      self$`discountPercentage` <- this_object$`discountPercentage`
      self$`paymentFees` <- this_object$`paymentFees`
      self$`voucherPrice` <- this_object$`voucherPrice`
      self$`purchasesRemaining` <- this_object$`purchasesRemaining`
      self$`redemptionsRemaining` <- this_object$`redemptionsRemaining`
      self$`redemptionStatus` <- this_object$`redemptionStatus`
      self$`redemptionCode` <- this_object$`redemptionCode`
      self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[AudienceResponse]", loadNamespace("openapi"))
      self$`audienceCount` <- this_object$`audienceCount`
      self$`walletCount` <- this_object$`walletCount`
      self$`qrCodeUrl` <- this_object$`qrCodeUrl`
      self$`showRemaining` <- this_object$`showRemaining`
      self$`showRedeemed` <- this_object$`showRedeemed`
      self$`purchaseLimit` <- this_object$`purchaseLimit`
      self$`purchaseLimitPerUser` <- this_object$`purchaseLimitPerUser`
      self$`redemptionLimit` <- this_object$`redemptionLimit`
      self$`userRedemptionLimit` <- this_object$`userRedemptionLimit`
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[FilterResponse]", loadNamespace("openapi"))
      self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[map(object)]", loadNamespace("openapi"))
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to RetailerOfferResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RetailerOfferResponse
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
# RetailerOfferResponse$unlock()
#
## Below is an example to define the print function
# RetailerOfferResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RetailerOfferResponse$lock()

