#' Create a new Offer
#'
#' @description
#' Offer Class
#'
#' @docType class
#' @title Offer
#' @description Offer Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field testField  character [optional]
#' @field billableEntity  \link{BillableEntity} [optional]
#' @field offerLocations  list(\link{OfferLocation}) [optional]
#' @field missions  list(\link{Mission}) [optional]
#' @field activated  character [optional]
#' @field expires  character [optional]
#' @field redeemableStart  character [optional]
#' @field redeemableEnd  character [optional]
#' @field title  character [optional]
#' @field subTitle  character [optional]
#' @field type  character [optional]
#' @field specialOfferType  character [optional]
#' @field details  character [optional]
#' @field subDetails  character [optional]
#' @field finePrint  character [optional]
#' @field getThereNowNotification  character [optional]
#' @field maxPrints  integer [optional]
#' @field viewLimit  integer [optional]
#' @field featured  character [optional]
#' @field replaced  character [optional]
#' @field showRemaining  character [optional]
#' @field showRedeemed  character [optional]
#' @field parentOffer  \link{Offer} [optional]
#' @field artwork  \link{Asset} [optional]
#' @field offerImage1  \link{Asset} [optional]
#' @field offerImage2  \link{Asset} [optional]
#' @field offerImage3  \link{Asset} [optional]
#' @field offerImage4  \link{Asset} [optional]
#' @field offerImage5  \link{Asset} [optional]
#' @field barCode  \link{Asset} [optional]
#' @field barCodeType  character [optional]
#' @field barCodeEntry  character [optional]
#' @field categories  list(\link{Category}) [optional]
#' @field filters  list(\link{Filter}) [optional]
#' @field ticketType  character [optional]
#' @field allocateTickets  character [optional]
#' @field ticketPriceType  character [optional]
#' @field ticketPrice  integer [optional]
#' @field fullPrice  numeric [optional]
#' @field discountPrice  numeric [optional]
#' @field availableLimit  integer [optional]
#' @field availableLimitPerUser  integer [optional]
#' @field addedLimit  integer [optional]
#' @field usedCount  integer [optional]
#' @field addedCount  integer [optional]
#' @field removedCount  integer [optional]
#' @field viewedCount  integer [optional]
#' @field clickedCount  integer [optional]
#' @field offerVisibility  character [optional]
#' @field offerProcessorId  character [optional]
#' @field externalId  character [optional]
#' @field externalUrl  character [optional]
#' @field externalUntrackedUrl  character [optional]
#' @field sqootId  integer [optional]
#' @field sqootUrl  character [optional]
#' @field sqootCategorySlug  character [optional]
#' @field sqootCategoryName  character [optional]
#' @field yipitId  integer [optional]
#' @field redeemAuthOptions  character [optional]
#' @field publisher  character [optional]
#' @field product  \link{Product} [optional]
#' @field media  \link{Media} [optional]
#' @field event  \link{Event} [optional]
#' @field device  \link{Device} [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field favoriteCount  integer [optional]
#' @field hasRatings  character [optional]
#' @field likes  list(\link{YayOrNay}) [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field availabilitySummary  character [optional]
#' @field flags  list(\link{Flag}) [optional]
#' @field flagCount  integer [optional]
#' @field flagThreshold  \link{FlagThreshold} [optional]
#' @field savings  numeric [optional]
#' @field clickStream  numeric [optional]
#' @field ticketCount  integer [optional]
#' @field display  character [optional]
#' @field appKey  character [optional]
#' @field categoryTree  character [optional]
#' @field filterTree  character [optional]
#' @field indexable  character [optional]
#' @field billableId  integer [optional]
#' @field subType  character [optional]
#' @field contentName  character [optional]
#' @field defaultThreshold  integer [optional]
#' @field contentAsset  \link{Asset} [optional]
#' @field owner  \link{Account} [optional]
#' @field secondaryType  character [optional]
#' @field discountPercentage  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Offer <- R6::R6Class(
  "Offer",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `testField` = NULL,
    `billableEntity` = NULL,
    `offerLocations` = NULL,
    `missions` = NULL,
    `activated` = NULL,
    `expires` = NULL,
    `redeemableStart` = NULL,
    `redeemableEnd` = NULL,
    `title` = NULL,
    `subTitle` = NULL,
    `type` = NULL,
    `specialOfferType` = NULL,
    `details` = NULL,
    `subDetails` = NULL,
    `finePrint` = NULL,
    `getThereNowNotification` = NULL,
    `maxPrints` = NULL,
    `viewLimit` = NULL,
    `featured` = NULL,
    `replaced` = NULL,
    `showRemaining` = NULL,
    `showRedeemed` = NULL,
    `parentOffer` = NULL,
    `artwork` = NULL,
    `offerImage1` = NULL,
    `offerImage2` = NULL,
    `offerImage3` = NULL,
    `offerImage4` = NULL,
    `offerImage5` = NULL,
    `barCode` = NULL,
    `barCodeType` = NULL,
    `barCodeEntry` = NULL,
    `categories` = NULL,
    `filters` = NULL,
    `ticketType` = NULL,
    `allocateTickets` = NULL,
    `ticketPriceType` = NULL,
    `ticketPrice` = NULL,
    `fullPrice` = NULL,
    `discountPrice` = NULL,
    `availableLimit` = NULL,
    `availableLimitPerUser` = NULL,
    `addedLimit` = NULL,
    `usedCount` = NULL,
    `addedCount` = NULL,
    `removedCount` = NULL,
    `viewedCount` = NULL,
    `clickedCount` = NULL,
    `offerVisibility` = NULL,
    `offerProcessorId` = NULL,
    `externalId` = NULL,
    `externalUrl` = NULL,
    `externalUntrackedUrl` = NULL,
    `sqootId` = NULL,
    `sqootUrl` = NULL,
    `sqootCategorySlug` = NULL,
    `sqootCategoryName` = NULL,
    `yipitId` = NULL,
    `redeemAuthOptions` = NULL,
    `publisher` = NULL,
    `product` = NULL,
    `media` = NULL,
    `event` = NULL,
    `device` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `favoriteCount` = NULL,
    `hasRatings` = NULL,
    `likes` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `availabilitySummary` = NULL,
    `flags` = NULL,
    `flagCount` = NULL,
    `flagThreshold` = NULL,
    `savings` = NULL,
    `clickStream` = NULL,
    `ticketCount` = NULL,
    `display` = NULL,
    `appKey` = NULL,
    `categoryTree` = NULL,
    `filterTree` = NULL,
    `indexable` = NULL,
    `billableId` = NULL,
    `subType` = NULL,
    `contentName` = NULL,
    `defaultThreshold` = NULL,
    `contentAsset` = NULL,
    `owner` = NULL,
    `secondaryType` = NULL,
    `discountPercentage` = NULL,

    #' @description
    #' Initialize a new Offer class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param testField testField
    #' @param billableEntity billableEntity
    #' @param offerLocations offerLocations
    #' @param missions missions
    #' @param activated activated
    #' @param expires expires
    #' @param redeemableStart redeemableStart
    #' @param redeemableEnd redeemableEnd
    #' @param title title
    #' @param subTitle subTitle
    #' @param type type
    #' @param specialOfferType specialOfferType
    #' @param details details
    #' @param subDetails subDetails
    #' @param finePrint finePrint
    #' @param getThereNowNotification getThereNowNotification
    #' @param maxPrints maxPrints
    #' @param viewLimit viewLimit
    #' @param featured featured
    #' @param replaced replaced
    #' @param showRemaining showRemaining
    #' @param showRedeemed showRedeemed
    #' @param parentOffer parentOffer
    #' @param artwork artwork
    #' @param offerImage1 offerImage1
    #' @param offerImage2 offerImage2
    #' @param offerImage3 offerImage3
    #' @param offerImage4 offerImage4
    #' @param offerImage5 offerImage5
    #' @param barCode barCode
    #' @param barCodeType barCodeType
    #' @param barCodeEntry barCodeEntry
    #' @param categories categories
    #' @param filters filters
    #' @param ticketType ticketType
    #' @param allocateTickets allocateTickets
    #' @param ticketPriceType ticketPriceType
    #' @param ticketPrice ticketPrice
    #' @param fullPrice fullPrice
    #' @param discountPrice discountPrice
    #' @param availableLimit availableLimit
    #' @param availableLimitPerUser availableLimitPerUser
    #' @param addedLimit addedLimit
    #' @param usedCount usedCount
    #' @param addedCount addedCount
    #' @param removedCount removedCount
    #' @param viewedCount viewedCount
    #' @param clickedCount clickedCount
    #' @param offerVisibility offerVisibility
    #' @param offerProcessorId offerProcessorId
    #' @param externalId externalId
    #' @param externalUrl externalUrl
    #' @param externalUntrackedUrl externalUntrackedUrl
    #' @param sqootId sqootId
    #' @param sqootUrl sqootUrl
    #' @param sqootCategorySlug sqootCategorySlug
    #' @param sqootCategoryName sqootCategoryName
    #' @param yipitId yipitId
    #' @param redeemAuthOptions redeemAuthOptions
    #' @param publisher publisher
    #' @param product product
    #' @param media media
    #' @param event event
    #' @param device device
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param favoriteCount favoriteCount
    #' @param hasRatings hasRatings
    #' @param likes likes
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param availabilitySummary availabilitySummary
    #' @param flags flags
    #' @param flagCount flagCount
    #' @param flagThreshold flagThreshold
    #' @param savings savings
    #' @param clickStream clickStream
    #' @param ticketCount ticketCount
    #' @param display display
    #' @param appKey appKey
    #' @param categoryTree categoryTree
    #' @param filterTree filterTree
    #' @param indexable indexable
    #' @param billableId billableId
    #' @param subType subType
    #' @param contentName contentName
    #' @param defaultThreshold defaultThreshold
    #' @param contentAsset contentAsset
    #' @param owner owner
    #' @param secondaryType secondaryType
    #' @param discountPercentage discountPercentage
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `testField` = NULL, `billableEntity` = NULL, `offerLocations` = NULL, `missions` = NULL, `activated` = NULL, `expires` = NULL, `redeemableStart` = NULL, `redeemableEnd` = NULL, `title` = NULL, `subTitle` = NULL, `type` = NULL, `specialOfferType` = NULL, `details` = NULL, `subDetails` = NULL, `finePrint` = NULL, `getThereNowNotification` = NULL, `maxPrints` = NULL, `viewLimit` = NULL, `featured` = NULL, `replaced` = NULL, `showRemaining` = NULL, `showRedeemed` = NULL, `parentOffer` = NULL, `artwork` = NULL, `offerImage1` = NULL, `offerImage2` = NULL, `offerImage3` = NULL, `offerImage4` = NULL, `offerImage5` = NULL, `barCode` = NULL, `barCodeType` = NULL, `barCodeEntry` = NULL, `categories` = NULL, `filters` = NULL, `ticketType` = NULL, `allocateTickets` = NULL, `ticketPriceType` = NULL, `ticketPrice` = NULL, `fullPrice` = NULL, `discountPrice` = NULL, `availableLimit` = NULL, `availableLimitPerUser` = NULL, `addedLimit` = NULL, `usedCount` = NULL, `addedCount` = NULL, `removedCount` = NULL, `viewedCount` = NULL, `clickedCount` = NULL, `offerVisibility` = NULL, `offerProcessorId` = NULL, `externalId` = NULL, `externalUrl` = NULL, `externalUntrackedUrl` = NULL, `sqootId` = NULL, `sqootUrl` = NULL, `sqootCategorySlug` = NULL, `sqootCategoryName` = NULL, `yipitId` = NULL, `redeemAuthOptions` = NULL, `publisher` = NULL, `product` = NULL, `media` = NULL, `event` = NULL, `device` = NULL, `notes` = NULL, `noteCount` = NULL, `favoriteCount` = NULL, `hasRatings` = NULL, `likes` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `availabilitySummary` = NULL, `flags` = NULL, `flagCount` = NULL, `flagThreshold` = NULL, `savings` = NULL, `clickStream` = NULL, `ticketCount` = NULL, `display` = NULL, `appKey` = NULL, `categoryTree` = NULL, `filterTree` = NULL, `indexable` = NULL, `billableId` = NULL, `subType` = NULL, `contentName` = NULL, `defaultThreshold` = NULL, `contentAsset` = NULL, `owner` = NULL, `secondaryType` = NULL, `discountPercentage` = NULL, ...) {
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
      if (!is.null(`testField`)) {
        if (!(is.character(`testField`) && length(`testField`) == 1)) {
          stop(paste("Error! Invalid data for `testField`. Must be a string:", `testField`))
        }
        self$`testField` <- `testField`
      }
      if (!is.null(`billableEntity`)) {
        stopifnot(R6::is.R6(`billableEntity`))
        self$`billableEntity` <- `billableEntity`
      }
      if (!is.null(`offerLocations`)) {
        stopifnot(is.vector(`offerLocations`), length(`offerLocations`) != 0)
        sapply(`offerLocations`, function(x) stopifnot(R6::is.R6(x)))
        self$`offerLocations` <- `offerLocations`
      }
      if (!is.null(`missions`)) {
        stopifnot(is.vector(`missions`), length(`missions`) != 0)
        sapply(`missions`, function(x) stopifnot(R6::is.R6(x)))
        self$`missions` <- `missions`
      }
      if (!is.null(`activated`)) {
        if (!is.character(`activated`)) {
          stop(paste("Error! Invalid data for `activated`. Must be a string:", `activated`))
        }
        self$`activated` <- `activated`
      }
      if (!is.null(`expires`)) {
        if (!is.character(`expires`)) {
          stop(paste("Error! Invalid data for `expires`. Must be a string:", `expires`))
        }
        self$`expires` <- `expires`
      }
      if (!is.null(`redeemableStart`)) {
        if (!is.character(`redeemableStart`)) {
          stop(paste("Error! Invalid data for `redeemableStart`. Must be a string:", `redeemableStart`))
        }
        self$`redeemableStart` <- `redeemableStart`
      }
      if (!is.null(`redeemableEnd`)) {
        if (!is.character(`redeemableEnd`)) {
          stop(paste("Error! Invalid data for `redeemableEnd`. Must be a string:", `redeemableEnd`))
        }
        self$`redeemableEnd` <- `redeemableEnd`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`subTitle`)) {
        if (!(is.character(`subTitle`) && length(`subTitle`) == 1)) {
          stop(paste("Error! Invalid data for `subTitle`. Must be a string:", `subTitle`))
        }
        self$`subTitle` <- `subTitle`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"VOUCHER\", \"COUPON\", \"PRODUCT\", \"MEDIA\", \"EVENT\", \"DEVICE\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
      if (!is.null(`details`)) {
        if (!(is.character(`details`) && length(`details`) == 1)) {
          stop(paste("Error! Invalid data for `details`. Must be a string:", `details`))
        }
        self$`details` <- `details`
      }
      if (!is.null(`subDetails`)) {
        if (!(is.character(`subDetails`) && length(`subDetails`) == 1)) {
          stop(paste("Error! Invalid data for `subDetails`. Must be a string:", `subDetails`))
        }
        self$`subDetails` <- `subDetails`
      }
      if (!is.null(`finePrint`)) {
        if (!(is.character(`finePrint`) && length(`finePrint`) == 1)) {
          stop(paste("Error! Invalid data for `finePrint`. Must be a string:", `finePrint`))
        }
        self$`finePrint` <- `finePrint`
      }
      if (!is.null(`getThereNowNotification`)) {
        if (!(is.character(`getThereNowNotification`) && length(`getThereNowNotification`) == 1)) {
          stop(paste("Error! Invalid data for `getThereNowNotification`. Must be a string:", `getThereNowNotification`))
        }
        self$`getThereNowNotification` <- `getThereNowNotification`
      }
      if (!is.null(`maxPrints`)) {
        if (!(is.numeric(`maxPrints`) && length(`maxPrints`) == 1)) {
          stop(paste("Error! Invalid data for `maxPrints`. Must be an integer:", `maxPrints`))
        }
        self$`maxPrints` <- `maxPrints`
      }
      if (!is.null(`viewLimit`)) {
        if (!(is.numeric(`viewLimit`) && length(`viewLimit`) == 1)) {
          stop(paste("Error! Invalid data for `viewLimit`. Must be an integer:", `viewLimit`))
        }
        self$`viewLimit` <- `viewLimit`
      }
      if (!is.null(`featured`)) {
        if (!(is.logical(`featured`) && length(`featured`) == 1)) {
          stop(paste("Error! Invalid data for `featured`. Must be a boolean:", `featured`))
        }
        self$`featured` <- `featured`
      }
      if (!is.null(`replaced`)) {
        if (!(is.logical(`replaced`) && length(`replaced`) == 1)) {
          stop(paste("Error! Invalid data for `replaced`. Must be a boolean:", `replaced`))
        }
        self$`replaced` <- `replaced`
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
      if (!is.null(`parentOffer`)) {
        stopifnot(R6::is.R6(`parentOffer`))
        self$`parentOffer` <- `parentOffer`
      }
      if (!is.null(`artwork`)) {
        stopifnot(R6::is.R6(`artwork`))
        self$`artwork` <- `artwork`
      }
      if (!is.null(`offerImage1`)) {
        stopifnot(R6::is.R6(`offerImage1`))
        self$`offerImage1` <- `offerImage1`
      }
      if (!is.null(`offerImage2`)) {
        stopifnot(R6::is.R6(`offerImage2`))
        self$`offerImage2` <- `offerImage2`
      }
      if (!is.null(`offerImage3`)) {
        stopifnot(R6::is.R6(`offerImage3`))
        self$`offerImage3` <- `offerImage3`
      }
      if (!is.null(`offerImage4`)) {
        stopifnot(R6::is.R6(`offerImage4`))
        self$`offerImage4` <- `offerImage4`
      }
      if (!is.null(`offerImage5`)) {
        stopifnot(R6::is.R6(`offerImage5`))
        self$`offerImage5` <- `offerImage5`
      }
      if (!is.null(`barCode`)) {
        stopifnot(R6::is.R6(`barCode`))
        self$`barCode` <- `barCode`
      }
      if (!is.null(`barCodeType`)) {
        if (!(`barCodeType` %in% c("NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA"))) {
          stop(paste("Error! \"", `barCodeType`, "\" cannot be assigned to `barCodeType`. Must be \"NONE\", \"UPC\", \"CODE_128\", \"QR\", \"CUSTOM_MEDIA\".", sep = ""))
        }
        if (!(is.character(`barCodeType`) && length(`barCodeType`) == 1)) {
          stop(paste("Error! Invalid data for `barCodeType`. Must be a string:", `barCodeType`))
        }
        self$`barCodeType` <- `barCodeType`
      }
      if (!is.null(`barCodeEntry`)) {
        if (!(is.character(`barCodeEntry`) && length(`barCodeEntry`) == 1)) {
          stop(paste("Error! Invalid data for `barCodeEntry`. Must be a string:", `barCodeEntry`))
        }
        self$`barCodeEntry` <- `barCodeEntry`
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
      if (!is.null(`ticketType`)) {
        if (!(is.character(`ticketType`) && length(`ticketType`) == 1)) {
          stop(paste("Error! Invalid data for `ticketType`. Must be a string:", `ticketType`))
        }
        self$`ticketType` <- `ticketType`
      }
      if (!is.null(`allocateTickets`)) {
        if (!(is.logical(`allocateTickets`) && length(`allocateTickets`) == 1)) {
          stop(paste("Error! Invalid data for `allocateTickets`. Must be a boolean:", `allocateTickets`))
        }
        self$`allocateTickets` <- `allocateTickets`
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
      if (!is.null(`availableLimit`)) {
        if (!(is.numeric(`availableLimit`) && length(`availableLimit`) == 1)) {
          stop(paste("Error! Invalid data for `availableLimit`. Must be an integer:", `availableLimit`))
        }
        self$`availableLimit` <- `availableLimit`
      }
      if (!is.null(`availableLimitPerUser`)) {
        if (!(is.numeric(`availableLimitPerUser`) && length(`availableLimitPerUser`) == 1)) {
          stop(paste("Error! Invalid data for `availableLimitPerUser`. Must be an integer:", `availableLimitPerUser`))
        }
        self$`availableLimitPerUser` <- `availableLimitPerUser`
      }
      if (!is.null(`addedLimit`)) {
        if (!(is.numeric(`addedLimit`) && length(`addedLimit`) == 1)) {
          stop(paste("Error! Invalid data for `addedLimit`. Must be an integer:", `addedLimit`))
        }
        self$`addedLimit` <- `addedLimit`
      }
      if (!is.null(`usedCount`)) {
        if (!(is.numeric(`usedCount`) && length(`usedCount`) == 1)) {
          stop(paste("Error! Invalid data for `usedCount`. Must be an integer:", `usedCount`))
        }
        self$`usedCount` <- `usedCount`
      }
      if (!is.null(`addedCount`)) {
        if (!(is.numeric(`addedCount`) && length(`addedCount`) == 1)) {
          stop(paste("Error! Invalid data for `addedCount`. Must be an integer:", `addedCount`))
        }
        self$`addedCount` <- `addedCount`
      }
      if (!is.null(`removedCount`)) {
        if (!(is.numeric(`removedCount`) && length(`removedCount`) == 1)) {
          stop(paste("Error! Invalid data for `removedCount`. Must be an integer:", `removedCount`))
        }
        self$`removedCount` <- `removedCount`
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
      if (!is.null(`offerVisibility`)) {
        if (!(`offerVisibility` %in% c("PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE"))) {
          stop(paste("Error! \"", `offerVisibility`, "\" cannot be assigned to `offerVisibility`. Must be \"PUBLIC\", \"LISTABLE\", \"REWARDABLE\", \"TRIGGERABLE\", \"PRIVATE\".", sep = ""))
        }
        if (!(is.character(`offerVisibility`) && length(`offerVisibility`) == 1)) {
          stop(paste("Error! Invalid data for `offerVisibility`. Must be a string:", `offerVisibility`))
        }
        self$`offerVisibility` <- `offerVisibility`
      }
      if (!is.null(`offerProcessorId`)) {
        if (!(`offerProcessorId` %in% c("SQOOT", "YIPIT", "API", "CSV"))) {
          stop(paste("Error! \"", `offerProcessorId`, "\" cannot be assigned to `offerProcessorId`. Must be \"SQOOT\", \"YIPIT\", \"API\", \"CSV\".", sep = ""))
        }
        if (!(is.character(`offerProcessorId`) && length(`offerProcessorId`) == 1)) {
          stop(paste("Error! Invalid data for `offerProcessorId`. Must be a string:", `offerProcessorId`))
        }
        self$`offerProcessorId` <- `offerProcessorId`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`externalUrl`)) {
        if (!(is.character(`externalUrl`) && length(`externalUrl`) == 1)) {
          stop(paste("Error! Invalid data for `externalUrl`. Must be a string:", `externalUrl`))
        }
        self$`externalUrl` <- `externalUrl`
      }
      if (!is.null(`externalUntrackedUrl`)) {
        if (!(is.character(`externalUntrackedUrl`) && length(`externalUntrackedUrl`) == 1)) {
          stop(paste("Error! Invalid data for `externalUntrackedUrl`. Must be a string:", `externalUntrackedUrl`))
        }
        self$`externalUntrackedUrl` <- `externalUntrackedUrl`
      }
      if (!is.null(`sqootId`)) {
        if (!(is.numeric(`sqootId`) && length(`sqootId`) == 1)) {
          stop(paste("Error! Invalid data for `sqootId`. Must be an integer:", `sqootId`))
        }
        self$`sqootId` <- `sqootId`
      }
      if (!is.null(`sqootUrl`)) {
        if (!(is.character(`sqootUrl`) && length(`sqootUrl`) == 1)) {
          stop(paste("Error! Invalid data for `sqootUrl`. Must be a string:", `sqootUrl`))
        }
        self$`sqootUrl` <- `sqootUrl`
      }
      if (!is.null(`sqootCategorySlug`)) {
        if (!(is.character(`sqootCategorySlug`) && length(`sqootCategorySlug`) == 1)) {
          stop(paste("Error! Invalid data for `sqootCategorySlug`. Must be a string:", `sqootCategorySlug`))
        }
        self$`sqootCategorySlug` <- `sqootCategorySlug`
      }
      if (!is.null(`sqootCategoryName`)) {
        if (!(is.character(`sqootCategoryName`) && length(`sqootCategoryName`) == 1)) {
          stop(paste("Error! Invalid data for `sqootCategoryName`. Must be a string:", `sqootCategoryName`))
        }
        self$`sqootCategoryName` <- `sqootCategoryName`
      }
      if (!is.null(`yipitId`)) {
        if (!(is.numeric(`yipitId`) && length(`yipitId`) == 1)) {
          stop(paste("Error! Invalid data for `yipitId`. Must be an integer:", `yipitId`))
        }
        self$`yipitId` <- `yipitId`
      }
      if (!is.null(`redeemAuthOptions`)) {
        if (!(is.character(`redeemAuthOptions`) && length(`redeemAuthOptions`) == 1)) {
          stop(paste("Error! Invalid data for `redeemAuthOptions`. Must be a string:", `redeemAuthOptions`))
        }
        self$`redeemAuthOptions` <- `redeemAuthOptions`
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
      if (!is.null(`media`)) {
        stopifnot(R6::is.R6(`media`))
        self$`media` <- `media`
      }
      if (!is.null(`event`)) {
        stopifnot(R6::is.R6(`event`))
        self$`event` <- `event`
      }
      if (!is.null(`device`)) {
        stopifnot(R6::is.R6(`device`))
        self$`device` <- `device`
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
      if (!is.null(`favoriteCount`)) {
        if (!(is.numeric(`favoriteCount`) && length(`favoriteCount`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteCount`. Must be an integer:", `favoriteCount`))
        }
        self$`favoriteCount` <- `favoriteCount`
      }
      if (!is.null(`hasRatings`)) {
        if (!(is.logical(`hasRatings`) && length(`hasRatings`) == 1)) {
          stop(paste("Error! Invalid data for `hasRatings`. Must be a boolean:", `hasRatings`))
        }
        self$`hasRatings` <- `hasRatings`
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
      if (!is.null(`availabilitySummary`)) {
        if (!(is.character(`availabilitySummary`) && length(`availabilitySummary`) == 1)) {
          stop(paste("Error! Invalid data for `availabilitySummary`. Must be a string:", `availabilitySummary`))
        }
        self$`availabilitySummary` <- `availabilitySummary`
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
      if (!is.null(`savings`)) {
        if (!(is.numeric(`savings`) && length(`savings`) == 1)) {
          stop(paste("Error! Invalid data for `savings`. Must be a number:", `savings`))
        }
        self$`savings` <- `savings`
      }
      if (!is.null(`clickStream`)) {
        if (!(is.numeric(`clickStream`) && length(`clickStream`) == 1)) {
          stop(paste("Error! Invalid data for `clickStream`. Must be a number:", `clickStream`))
        }
        self$`clickStream` <- `clickStream`
      }
      if (!is.null(`ticketCount`)) {
        if (!(is.numeric(`ticketCount`) && length(`ticketCount`) == 1)) {
          stop(paste("Error! Invalid data for `ticketCount`. Must be an integer:", `ticketCount`))
        }
        self$`ticketCount` <- `ticketCount`
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
      if (!is.null(`categoryTree`)) {
        if (!(is.character(`categoryTree`) && length(`categoryTree`) == 1)) {
          stop(paste("Error! Invalid data for `categoryTree`. Must be a string:", `categoryTree`))
        }
        self$`categoryTree` <- `categoryTree`
      }
      if (!is.null(`filterTree`)) {
        if (!(is.character(`filterTree`) && length(`filterTree`) == 1)) {
          stop(paste("Error! Invalid data for `filterTree`. Must be a string:", `filterTree`))
        }
        self$`filterTree` <- `filterTree`
      }
      if (!is.null(`indexable`)) {
        if (!(is.logical(`indexable`) && length(`indexable`) == 1)) {
          stop(paste("Error! Invalid data for `indexable`. Must be a boolean:", `indexable`))
        }
        self$`indexable` <- `indexable`
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
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`secondaryType`)) {
        if (!(is.character(`secondaryType`) && length(`secondaryType`) == 1)) {
          stop(paste("Error! Invalid data for `secondaryType`. Must be a string:", `secondaryType`))
        }
        self$`secondaryType` <- `secondaryType`
      }
      if (!is.null(`discountPercentage`)) {
        if (!(is.numeric(`discountPercentage`) && length(`discountPercentage`) == 1)) {
          stop(paste("Error! Invalid data for `discountPercentage`. Must be a number:", `discountPercentage`))
        }
        self$`discountPercentage` <- `discountPercentage`
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
    #' @return Offer as a base R list.
    #' @examples
    #' # convert array of Offer (x) to a data frame
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
    #' Convert Offer to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OfferObject <- list()
      if (!is.null(self$`id`)) {
        OfferObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        OfferObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        OfferObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`testField`)) {
        OfferObject[["testField"]] <-
          self$`testField`
      }
      if (!is.null(self$`billableEntity`)) {
        OfferObject[["billableEntity"]] <-
          self$extractSimpleType(self$`billableEntity`)
      }
      if (!is.null(self$`offerLocations`)) {
        OfferObject[["offerLocations"]] <-
          self$extractSimpleType(self$`offerLocations`)
      }
      if (!is.null(self$`missions`)) {
        OfferObject[["missions"]] <-
          self$extractSimpleType(self$`missions`)
      }
      if (!is.null(self$`activated`)) {
        OfferObject[["activated"]] <-
          self$`activated`
      }
      if (!is.null(self$`expires`)) {
        OfferObject[["expires"]] <-
          self$`expires`
      }
      if (!is.null(self$`redeemableStart`)) {
        OfferObject[["redeemableStart"]] <-
          self$`redeemableStart`
      }
      if (!is.null(self$`redeemableEnd`)) {
        OfferObject[["redeemableEnd"]] <-
          self$`redeemableEnd`
      }
      if (!is.null(self$`title`)) {
        OfferObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`subTitle`)) {
        OfferObject[["subTitle"]] <-
          self$`subTitle`
      }
      if (!is.null(self$`type`)) {
        OfferObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`specialOfferType`)) {
        OfferObject[["specialOfferType"]] <-
          self$`specialOfferType`
      }
      if (!is.null(self$`details`)) {
        OfferObject[["details"]] <-
          self$`details`
      }
      if (!is.null(self$`subDetails`)) {
        OfferObject[["subDetails"]] <-
          self$`subDetails`
      }
      if (!is.null(self$`finePrint`)) {
        OfferObject[["finePrint"]] <-
          self$`finePrint`
      }
      if (!is.null(self$`getThereNowNotification`)) {
        OfferObject[["getThereNowNotification"]] <-
          self$`getThereNowNotification`
      }
      if (!is.null(self$`maxPrints`)) {
        OfferObject[["maxPrints"]] <-
          self$`maxPrints`
      }
      if (!is.null(self$`viewLimit`)) {
        OfferObject[["viewLimit"]] <-
          self$`viewLimit`
      }
      if (!is.null(self$`featured`)) {
        OfferObject[["featured"]] <-
          self$`featured`
      }
      if (!is.null(self$`replaced`)) {
        OfferObject[["replaced"]] <-
          self$`replaced`
      }
      if (!is.null(self$`showRemaining`)) {
        OfferObject[["showRemaining"]] <-
          self$`showRemaining`
      }
      if (!is.null(self$`showRedeemed`)) {
        OfferObject[["showRedeemed"]] <-
          self$`showRedeemed`
      }
      if (!is.null(self$`parentOffer`)) {
        OfferObject[["parentOffer"]] <-
          self$extractSimpleType(self$`parentOffer`)
      }
      if (!is.null(self$`artwork`)) {
        OfferObject[["artwork"]] <-
          self$extractSimpleType(self$`artwork`)
      }
      if (!is.null(self$`offerImage1`)) {
        OfferObject[["offerImage1"]] <-
          self$extractSimpleType(self$`offerImage1`)
      }
      if (!is.null(self$`offerImage2`)) {
        OfferObject[["offerImage2"]] <-
          self$extractSimpleType(self$`offerImage2`)
      }
      if (!is.null(self$`offerImage3`)) {
        OfferObject[["offerImage3"]] <-
          self$extractSimpleType(self$`offerImage3`)
      }
      if (!is.null(self$`offerImage4`)) {
        OfferObject[["offerImage4"]] <-
          self$extractSimpleType(self$`offerImage4`)
      }
      if (!is.null(self$`offerImage5`)) {
        OfferObject[["offerImage5"]] <-
          self$extractSimpleType(self$`offerImage5`)
      }
      if (!is.null(self$`barCode`)) {
        OfferObject[["barCode"]] <-
          self$extractSimpleType(self$`barCode`)
      }
      if (!is.null(self$`barCodeType`)) {
        OfferObject[["barCodeType"]] <-
          self$`barCodeType`
      }
      if (!is.null(self$`barCodeEntry`)) {
        OfferObject[["barCodeEntry"]] <-
          self$`barCodeEntry`
      }
      if (!is.null(self$`categories`)) {
        OfferObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`filters`)) {
        OfferObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`ticketType`)) {
        OfferObject[["ticketType"]] <-
          self$`ticketType`
      }
      if (!is.null(self$`allocateTickets`)) {
        OfferObject[["allocateTickets"]] <-
          self$`allocateTickets`
      }
      if (!is.null(self$`ticketPriceType`)) {
        OfferObject[["ticketPriceType"]] <-
          self$`ticketPriceType`
      }
      if (!is.null(self$`ticketPrice`)) {
        OfferObject[["ticketPrice"]] <-
          self$`ticketPrice`
      }
      if (!is.null(self$`fullPrice`)) {
        OfferObject[["fullPrice"]] <-
          self$`fullPrice`
      }
      if (!is.null(self$`discountPrice`)) {
        OfferObject[["discountPrice"]] <-
          self$`discountPrice`
      }
      if (!is.null(self$`availableLimit`)) {
        OfferObject[["availableLimit"]] <-
          self$`availableLimit`
      }
      if (!is.null(self$`availableLimitPerUser`)) {
        OfferObject[["availableLimitPerUser"]] <-
          self$`availableLimitPerUser`
      }
      if (!is.null(self$`addedLimit`)) {
        OfferObject[["addedLimit"]] <-
          self$`addedLimit`
      }
      if (!is.null(self$`usedCount`)) {
        OfferObject[["usedCount"]] <-
          self$`usedCount`
      }
      if (!is.null(self$`addedCount`)) {
        OfferObject[["addedCount"]] <-
          self$`addedCount`
      }
      if (!is.null(self$`removedCount`)) {
        OfferObject[["removedCount"]] <-
          self$`removedCount`
      }
      if (!is.null(self$`viewedCount`)) {
        OfferObject[["viewedCount"]] <-
          self$`viewedCount`
      }
      if (!is.null(self$`clickedCount`)) {
        OfferObject[["clickedCount"]] <-
          self$`clickedCount`
      }
      if (!is.null(self$`offerVisibility`)) {
        OfferObject[["offerVisibility"]] <-
          self$`offerVisibility`
      }
      if (!is.null(self$`offerProcessorId`)) {
        OfferObject[["offerProcessorId"]] <-
          self$`offerProcessorId`
      }
      if (!is.null(self$`externalId`)) {
        OfferObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`externalUrl`)) {
        OfferObject[["externalUrl"]] <-
          self$`externalUrl`
      }
      if (!is.null(self$`externalUntrackedUrl`)) {
        OfferObject[["externalUntrackedUrl"]] <-
          self$`externalUntrackedUrl`
      }
      if (!is.null(self$`sqootId`)) {
        OfferObject[["sqootId"]] <-
          self$`sqootId`
      }
      if (!is.null(self$`sqootUrl`)) {
        OfferObject[["sqootUrl"]] <-
          self$`sqootUrl`
      }
      if (!is.null(self$`sqootCategorySlug`)) {
        OfferObject[["sqootCategorySlug"]] <-
          self$`sqootCategorySlug`
      }
      if (!is.null(self$`sqootCategoryName`)) {
        OfferObject[["sqootCategoryName"]] <-
          self$`sqootCategoryName`
      }
      if (!is.null(self$`yipitId`)) {
        OfferObject[["yipitId"]] <-
          self$`yipitId`
      }
      if (!is.null(self$`redeemAuthOptions`)) {
        OfferObject[["redeemAuthOptions"]] <-
          self$`redeemAuthOptions`
      }
      if (!is.null(self$`publisher`)) {
        OfferObject[["publisher"]] <-
          self$`publisher`
      }
      if (!is.null(self$`product`)) {
        OfferObject[["product"]] <-
          self$extractSimpleType(self$`product`)
      }
      if (!is.null(self$`media`)) {
        OfferObject[["media"]] <-
          self$extractSimpleType(self$`media`)
      }
      if (!is.null(self$`event`)) {
        OfferObject[["event"]] <-
          self$extractSimpleType(self$`event`)
      }
      if (!is.null(self$`device`)) {
        OfferObject[["device"]] <-
          self$extractSimpleType(self$`device`)
      }
      if (!is.null(self$`notes`)) {
        OfferObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        OfferObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`favoriteCount`)) {
        OfferObject[["favoriteCount"]] <-
          self$`favoriteCount`
      }
      if (!is.null(self$`hasRatings`)) {
        OfferObject[["hasRatings"]] <-
          self$`hasRatings`
      }
      if (!is.null(self$`likes`)) {
        OfferObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`likeCount`)) {
        OfferObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        OfferObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`availabilitySummary`)) {
        OfferObject[["availabilitySummary"]] <-
          self$`availabilitySummary`
      }
      if (!is.null(self$`flags`)) {
        OfferObject[["flags"]] <-
          self$extractSimpleType(self$`flags`)
      }
      if (!is.null(self$`flagCount`)) {
        OfferObject[["flagCount"]] <-
          self$`flagCount`
      }
      if (!is.null(self$`flagThreshold`)) {
        OfferObject[["flagThreshold"]] <-
          self$extractSimpleType(self$`flagThreshold`)
      }
      if (!is.null(self$`savings`)) {
        OfferObject[["savings"]] <-
          self$`savings`
      }
      if (!is.null(self$`clickStream`)) {
        OfferObject[["clickStream"]] <-
          self$`clickStream`
      }
      if (!is.null(self$`ticketCount`)) {
        OfferObject[["ticketCount"]] <-
          self$`ticketCount`
      }
      if (!is.null(self$`display`)) {
        OfferObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`appKey`)) {
        OfferObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`categoryTree`)) {
        OfferObject[["categoryTree"]] <-
          self$`categoryTree`
      }
      if (!is.null(self$`filterTree`)) {
        OfferObject[["filterTree"]] <-
          self$`filterTree`
      }
      if (!is.null(self$`indexable`)) {
        OfferObject[["indexable"]] <-
          self$`indexable`
      }
      if (!is.null(self$`billableId`)) {
        OfferObject[["billableId"]] <-
          self$`billableId`
      }
      if (!is.null(self$`subType`)) {
        OfferObject[["subType"]] <-
          self$`subType`
      }
      if (!is.null(self$`contentName`)) {
        OfferObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`defaultThreshold`)) {
        OfferObject[["defaultThreshold"]] <-
          self$`defaultThreshold`
      }
      if (!is.null(self$`contentAsset`)) {
        OfferObject[["contentAsset"]] <-
          self$extractSimpleType(self$`contentAsset`)
      }
      if (!is.null(self$`owner`)) {
        OfferObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`secondaryType`)) {
        OfferObject[["secondaryType"]] <-
          self$`secondaryType`
      }
      if (!is.null(self$`discountPercentage`)) {
        OfferObject[["discountPercentage"]] <-
          self$`discountPercentage`
      }
      return(OfferObject)
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
    #' Deserialize JSON string into an instance of Offer
    #'
    #' @param input_json the JSON input
    #' @return the instance of Offer
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
      if (!is.null(this_object$`testField`)) {
        self$`testField` <- this_object$`testField`
      }
      if (!is.null(this_object$`billableEntity`)) {
        `billableentity_object` <- BillableEntity$new()
        `billableentity_object`$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
        self$`billableEntity` <- `billableentity_object`
      }
      if (!is.null(this_object$`offerLocations`)) {
        self$`offerLocations` <- ApiClient$new()$deserializeObj(this_object$`offerLocations`, "array[OfferLocation]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`missions`)) {
        self$`missions` <- ApiClient$new()$deserializeObj(this_object$`missions`, "array[Mission]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`activated`)) {
        self$`activated` <- this_object$`activated`
      }
      if (!is.null(this_object$`expires`)) {
        self$`expires` <- this_object$`expires`
      }
      if (!is.null(this_object$`redeemableStart`)) {
        self$`redeemableStart` <- this_object$`redeemableStart`
      }
      if (!is.null(this_object$`redeemableEnd`)) {
        self$`redeemableEnd` <- this_object$`redeemableEnd`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`subTitle`)) {
        self$`subTitle` <- this_object$`subTitle`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"VOUCHER\", \"COUPON\", \"PRODUCT\", \"MEDIA\", \"EVENT\", \"DEVICE\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`specialOfferType`)) {
        if (!is.null(this_object$`specialOfferType`) && !(this_object$`specialOfferType` %in% c("ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT"))) {
          stop(paste("Error! \"", this_object$`specialOfferType`, "\" cannot be assigned to `specialOfferType`. Must be \"ALL\", \"RESERVABLE\", \"REGULAR_OFFER\", \"ACT_NOW\", \"GET_THERE_NOW\", \"SQOOT\", \"TICKETS\", \"YIPIT\".", sep = ""))
        }
        self$`specialOfferType` <- this_object$`specialOfferType`
      }
      if (!is.null(this_object$`details`)) {
        self$`details` <- this_object$`details`
      }
      if (!is.null(this_object$`subDetails`)) {
        self$`subDetails` <- this_object$`subDetails`
      }
      if (!is.null(this_object$`finePrint`)) {
        self$`finePrint` <- this_object$`finePrint`
      }
      if (!is.null(this_object$`getThereNowNotification`)) {
        self$`getThereNowNotification` <- this_object$`getThereNowNotification`
      }
      if (!is.null(this_object$`maxPrints`)) {
        self$`maxPrints` <- this_object$`maxPrints`
      }
      if (!is.null(this_object$`viewLimit`)) {
        self$`viewLimit` <- this_object$`viewLimit`
      }
      if (!is.null(this_object$`featured`)) {
        self$`featured` <- this_object$`featured`
      }
      if (!is.null(this_object$`replaced`)) {
        self$`replaced` <- this_object$`replaced`
      }
      if (!is.null(this_object$`showRemaining`)) {
        self$`showRemaining` <- this_object$`showRemaining`
      }
      if (!is.null(this_object$`showRedeemed`)) {
        self$`showRedeemed` <- this_object$`showRedeemed`
      }
      if (!is.null(this_object$`parentOffer`)) {
        `parentoffer_object` <- Offer$new()
        `parentoffer_object`$fromJSON(jsonlite::toJSON(this_object$`parentOffer`, auto_unbox = TRUE, digits = NA))
        self$`parentOffer` <- `parentoffer_object`
      }
      if (!is.null(this_object$`artwork`)) {
        `artwork_object` <- Asset$new()
        `artwork_object`$fromJSON(jsonlite::toJSON(this_object$`artwork`, auto_unbox = TRUE, digits = NA))
        self$`artwork` <- `artwork_object`
      }
      if (!is.null(this_object$`offerImage1`)) {
        `offerimage1_object` <- Asset$new()
        `offerimage1_object`$fromJSON(jsonlite::toJSON(this_object$`offerImage1`, auto_unbox = TRUE, digits = NA))
        self$`offerImage1` <- `offerimage1_object`
      }
      if (!is.null(this_object$`offerImage2`)) {
        `offerimage2_object` <- Asset$new()
        `offerimage2_object`$fromJSON(jsonlite::toJSON(this_object$`offerImage2`, auto_unbox = TRUE, digits = NA))
        self$`offerImage2` <- `offerimage2_object`
      }
      if (!is.null(this_object$`offerImage3`)) {
        `offerimage3_object` <- Asset$new()
        `offerimage3_object`$fromJSON(jsonlite::toJSON(this_object$`offerImage3`, auto_unbox = TRUE, digits = NA))
        self$`offerImage3` <- `offerimage3_object`
      }
      if (!is.null(this_object$`offerImage4`)) {
        `offerimage4_object` <- Asset$new()
        `offerimage4_object`$fromJSON(jsonlite::toJSON(this_object$`offerImage4`, auto_unbox = TRUE, digits = NA))
        self$`offerImage4` <- `offerimage4_object`
      }
      if (!is.null(this_object$`offerImage5`)) {
        `offerimage5_object` <- Asset$new()
        `offerimage5_object`$fromJSON(jsonlite::toJSON(this_object$`offerImage5`, auto_unbox = TRUE, digits = NA))
        self$`offerImage5` <- `offerimage5_object`
      }
      if (!is.null(this_object$`barCode`)) {
        `barcode_object` <- Asset$new()
        `barcode_object`$fromJSON(jsonlite::toJSON(this_object$`barCode`, auto_unbox = TRUE, digits = NA))
        self$`barCode` <- `barcode_object`
      }
      if (!is.null(this_object$`barCodeType`)) {
        if (!is.null(this_object$`barCodeType`) && !(this_object$`barCodeType` %in% c("NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA"))) {
          stop(paste("Error! \"", this_object$`barCodeType`, "\" cannot be assigned to `barCodeType`. Must be \"NONE\", \"UPC\", \"CODE_128\", \"QR\", \"CUSTOM_MEDIA\".", sep = ""))
        }
        self$`barCodeType` <- this_object$`barCodeType`
      }
      if (!is.null(this_object$`barCodeEntry`)) {
        self$`barCodeEntry` <- this_object$`barCodeEntry`
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`filters`)) {
        self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`ticketType`)) {
        self$`ticketType` <- this_object$`ticketType`
      }
      if (!is.null(this_object$`allocateTickets`)) {
        self$`allocateTickets` <- this_object$`allocateTickets`
      }
      if (!is.null(this_object$`ticketPriceType`)) {
        self$`ticketPriceType` <- this_object$`ticketPriceType`
      }
      if (!is.null(this_object$`ticketPrice`)) {
        self$`ticketPrice` <- this_object$`ticketPrice`
      }
      if (!is.null(this_object$`fullPrice`)) {
        self$`fullPrice` <- this_object$`fullPrice`
      }
      if (!is.null(this_object$`discountPrice`)) {
        self$`discountPrice` <- this_object$`discountPrice`
      }
      if (!is.null(this_object$`availableLimit`)) {
        self$`availableLimit` <- this_object$`availableLimit`
      }
      if (!is.null(this_object$`availableLimitPerUser`)) {
        self$`availableLimitPerUser` <- this_object$`availableLimitPerUser`
      }
      if (!is.null(this_object$`addedLimit`)) {
        self$`addedLimit` <- this_object$`addedLimit`
      }
      if (!is.null(this_object$`usedCount`)) {
        self$`usedCount` <- this_object$`usedCount`
      }
      if (!is.null(this_object$`addedCount`)) {
        self$`addedCount` <- this_object$`addedCount`
      }
      if (!is.null(this_object$`removedCount`)) {
        self$`removedCount` <- this_object$`removedCount`
      }
      if (!is.null(this_object$`viewedCount`)) {
        self$`viewedCount` <- this_object$`viewedCount`
      }
      if (!is.null(this_object$`clickedCount`)) {
        self$`clickedCount` <- this_object$`clickedCount`
      }
      if (!is.null(this_object$`offerVisibility`)) {
        if (!is.null(this_object$`offerVisibility`) && !(this_object$`offerVisibility` %in% c("PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE"))) {
          stop(paste("Error! \"", this_object$`offerVisibility`, "\" cannot be assigned to `offerVisibility`. Must be \"PUBLIC\", \"LISTABLE\", \"REWARDABLE\", \"TRIGGERABLE\", \"PRIVATE\".", sep = ""))
        }
        self$`offerVisibility` <- this_object$`offerVisibility`
      }
      if (!is.null(this_object$`offerProcessorId`)) {
        if (!is.null(this_object$`offerProcessorId`) && !(this_object$`offerProcessorId` %in% c("SQOOT", "YIPIT", "API", "CSV"))) {
          stop(paste("Error! \"", this_object$`offerProcessorId`, "\" cannot be assigned to `offerProcessorId`. Must be \"SQOOT\", \"YIPIT\", \"API\", \"CSV\".", sep = ""))
        }
        self$`offerProcessorId` <- this_object$`offerProcessorId`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`externalUrl`)) {
        self$`externalUrl` <- this_object$`externalUrl`
      }
      if (!is.null(this_object$`externalUntrackedUrl`)) {
        self$`externalUntrackedUrl` <- this_object$`externalUntrackedUrl`
      }
      if (!is.null(this_object$`sqootId`)) {
        self$`sqootId` <- this_object$`sqootId`
      }
      if (!is.null(this_object$`sqootUrl`)) {
        self$`sqootUrl` <- this_object$`sqootUrl`
      }
      if (!is.null(this_object$`sqootCategorySlug`)) {
        self$`sqootCategorySlug` <- this_object$`sqootCategorySlug`
      }
      if (!is.null(this_object$`sqootCategoryName`)) {
        self$`sqootCategoryName` <- this_object$`sqootCategoryName`
      }
      if (!is.null(this_object$`yipitId`)) {
        self$`yipitId` <- this_object$`yipitId`
      }
      if (!is.null(this_object$`redeemAuthOptions`)) {
        self$`redeemAuthOptions` <- this_object$`redeemAuthOptions`
      }
      if (!is.null(this_object$`publisher`)) {
        self$`publisher` <- this_object$`publisher`
      }
      if (!is.null(this_object$`product`)) {
        `product_object` <- Product$new()
        `product_object`$fromJSON(jsonlite::toJSON(this_object$`product`, auto_unbox = TRUE, digits = NA))
        self$`product` <- `product_object`
      }
      if (!is.null(this_object$`media`)) {
        `media_object` <- Media$new()
        `media_object`$fromJSON(jsonlite::toJSON(this_object$`media`, auto_unbox = TRUE, digits = NA))
        self$`media` <- `media_object`
      }
      if (!is.null(this_object$`event`)) {
        `event_object` <- Event$new()
        `event_object`$fromJSON(jsonlite::toJSON(this_object$`event`, auto_unbox = TRUE, digits = NA))
        self$`event` <- `event_object`
      }
      if (!is.null(this_object$`device`)) {
        `device_object` <- Device$new()
        `device_object`$fromJSON(jsonlite::toJSON(this_object$`device`, auto_unbox = TRUE, digits = NA))
        self$`device` <- `device_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`favoriteCount`)) {
        self$`favoriteCount` <- this_object$`favoriteCount`
      }
      if (!is.null(this_object$`hasRatings`)) {
        self$`hasRatings` <- this_object$`hasRatings`
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
      if (!is.null(this_object$`availabilitySummary`)) {
        self$`availabilitySummary` <- this_object$`availabilitySummary`
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
      if (!is.null(this_object$`savings`)) {
        self$`savings` <- this_object$`savings`
      }
      if (!is.null(this_object$`clickStream`)) {
        self$`clickStream` <- this_object$`clickStream`
      }
      if (!is.null(this_object$`ticketCount`)) {
        self$`ticketCount` <- this_object$`ticketCount`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`categoryTree`)) {
        self$`categoryTree` <- this_object$`categoryTree`
      }
      if (!is.null(this_object$`filterTree`)) {
        self$`filterTree` <- this_object$`filterTree`
      }
      if (!is.null(this_object$`indexable`)) {
        self$`indexable` <- this_object$`indexable`
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
      if (!is.null(this_object$`defaultThreshold`)) {
        self$`defaultThreshold` <- this_object$`defaultThreshold`
      }
      if (!is.null(this_object$`contentAsset`)) {
        `contentasset_object` <- Asset$new()
        `contentasset_object`$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
        self$`contentAsset` <- `contentasset_object`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`secondaryType`)) {
        self$`secondaryType` <- this_object$`secondaryType`
      }
      if (!is.null(this_object$`discountPercentage`)) {
        self$`discountPercentage` <- this_object$`discountPercentage`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Offer in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Offer
    #'
    #' @param input_json the JSON input
    #' @return the instance of Offer
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`testField` <- this_object$`testField`
      self$`billableEntity` <- BillableEntity$new()$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
      self$`offerLocations` <- ApiClient$new()$deserializeObj(this_object$`offerLocations`, "array[OfferLocation]", loadNamespace("openapi"))
      self$`missions` <- ApiClient$new()$deserializeObj(this_object$`missions`, "array[Mission]", loadNamespace("openapi"))
      self$`activated` <- this_object$`activated`
      self$`expires` <- this_object$`expires`
      self$`redeemableStart` <- this_object$`redeemableStart`
      self$`redeemableEnd` <- this_object$`redeemableEnd`
      self$`title` <- this_object$`title`
      self$`subTitle` <- this_object$`subTitle`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"VOUCHER\", \"COUPON\", \"PRODUCT\", \"MEDIA\", \"EVENT\", \"DEVICE\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      if (!is.null(this_object$`specialOfferType`) && !(this_object$`specialOfferType` %in% c("ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT"))) {
        stop(paste("Error! \"", this_object$`specialOfferType`, "\" cannot be assigned to `specialOfferType`. Must be \"ALL\", \"RESERVABLE\", \"REGULAR_OFFER\", \"ACT_NOW\", \"GET_THERE_NOW\", \"SQOOT\", \"TICKETS\", \"YIPIT\".", sep = ""))
      }
      self$`specialOfferType` <- this_object$`specialOfferType`
      self$`details` <- this_object$`details`
      self$`subDetails` <- this_object$`subDetails`
      self$`finePrint` <- this_object$`finePrint`
      self$`getThereNowNotification` <- this_object$`getThereNowNotification`
      self$`maxPrints` <- this_object$`maxPrints`
      self$`viewLimit` <- this_object$`viewLimit`
      self$`featured` <- this_object$`featured`
      self$`replaced` <- this_object$`replaced`
      self$`showRemaining` <- this_object$`showRemaining`
      self$`showRedeemed` <- this_object$`showRedeemed`
      self$`parentOffer` <- Offer$new()$fromJSON(jsonlite::toJSON(this_object$`parentOffer`, auto_unbox = TRUE, digits = NA))
      self$`artwork` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`artwork`, auto_unbox = TRUE, digits = NA))
      self$`offerImage1` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`offerImage1`, auto_unbox = TRUE, digits = NA))
      self$`offerImage2` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`offerImage2`, auto_unbox = TRUE, digits = NA))
      self$`offerImage3` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`offerImage3`, auto_unbox = TRUE, digits = NA))
      self$`offerImage4` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`offerImage4`, auto_unbox = TRUE, digits = NA))
      self$`offerImage5` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`offerImage5`, auto_unbox = TRUE, digits = NA))
      self$`barCode` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`barCode`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`barCodeType`) && !(this_object$`barCodeType` %in% c("NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA"))) {
        stop(paste("Error! \"", this_object$`barCodeType`, "\" cannot be assigned to `barCodeType`. Must be \"NONE\", \"UPC\", \"CODE_128\", \"QR\", \"CUSTOM_MEDIA\".", sep = ""))
      }
      self$`barCodeType` <- this_object$`barCodeType`
      self$`barCodeEntry` <- this_object$`barCodeEntry`
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      self$`ticketType` <- this_object$`ticketType`
      self$`allocateTickets` <- this_object$`allocateTickets`
      self$`ticketPriceType` <- this_object$`ticketPriceType`
      self$`ticketPrice` <- this_object$`ticketPrice`
      self$`fullPrice` <- this_object$`fullPrice`
      self$`discountPrice` <- this_object$`discountPrice`
      self$`availableLimit` <- this_object$`availableLimit`
      self$`availableLimitPerUser` <- this_object$`availableLimitPerUser`
      self$`addedLimit` <- this_object$`addedLimit`
      self$`usedCount` <- this_object$`usedCount`
      self$`addedCount` <- this_object$`addedCount`
      self$`removedCount` <- this_object$`removedCount`
      self$`viewedCount` <- this_object$`viewedCount`
      self$`clickedCount` <- this_object$`clickedCount`
      if (!is.null(this_object$`offerVisibility`) && !(this_object$`offerVisibility` %in% c("PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE"))) {
        stop(paste("Error! \"", this_object$`offerVisibility`, "\" cannot be assigned to `offerVisibility`. Must be \"PUBLIC\", \"LISTABLE\", \"REWARDABLE\", \"TRIGGERABLE\", \"PRIVATE\".", sep = ""))
      }
      self$`offerVisibility` <- this_object$`offerVisibility`
      if (!is.null(this_object$`offerProcessorId`) && !(this_object$`offerProcessorId` %in% c("SQOOT", "YIPIT", "API", "CSV"))) {
        stop(paste("Error! \"", this_object$`offerProcessorId`, "\" cannot be assigned to `offerProcessorId`. Must be \"SQOOT\", \"YIPIT\", \"API\", \"CSV\".", sep = ""))
      }
      self$`offerProcessorId` <- this_object$`offerProcessorId`
      self$`externalId` <- this_object$`externalId`
      self$`externalUrl` <- this_object$`externalUrl`
      self$`externalUntrackedUrl` <- this_object$`externalUntrackedUrl`
      self$`sqootId` <- this_object$`sqootId`
      self$`sqootUrl` <- this_object$`sqootUrl`
      self$`sqootCategorySlug` <- this_object$`sqootCategorySlug`
      self$`sqootCategoryName` <- this_object$`sqootCategoryName`
      self$`yipitId` <- this_object$`yipitId`
      self$`redeemAuthOptions` <- this_object$`redeemAuthOptions`
      self$`publisher` <- this_object$`publisher`
      self$`product` <- Product$new()$fromJSON(jsonlite::toJSON(this_object$`product`, auto_unbox = TRUE, digits = NA))
      self$`media` <- Media$new()$fromJSON(jsonlite::toJSON(this_object$`media`, auto_unbox = TRUE, digits = NA))
      self$`event` <- Event$new()$fromJSON(jsonlite::toJSON(this_object$`event`, auto_unbox = TRUE, digits = NA))
      self$`device` <- Device$new()$fromJSON(jsonlite::toJSON(this_object$`device`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      self$`favoriteCount` <- this_object$`favoriteCount`
      self$`hasRatings` <- this_object$`hasRatings`
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[YayOrNay]", loadNamespace("openapi"))
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`availabilitySummary` <- this_object$`availabilitySummary`
      self$`flags` <- ApiClient$new()$deserializeObj(this_object$`flags`, "array[Flag]", loadNamespace("openapi"))
      self$`flagCount` <- this_object$`flagCount`
      self$`flagThreshold` <- FlagThreshold$new()$fromJSON(jsonlite::toJSON(this_object$`flagThreshold`, auto_unbox = TRUE, digits = NA))
      self$`savings` <- this_object$`savings`
      self$`clickStream` <- this_object$`clickStream`
      self$`ticketCount` <- this_object$`ticketCount`
      self$`display` <- this_object$`display`
      self$`appKey` <- this_object$`appKey`
      self$`categoryTree` <- this_object$`categoryTree`
      self$`filterTree` <- this_object$`filterTree`
      self$`indexable` <- this_object$`indexable`
      self$`billableId` <- this_object$`billableId`
      self$`subType` <- this_object$`subType`
      self$`contentName` <- this_object$`contentName`
      self$`defaultThreshold` <- this_object$`defaultThreshold`
      self$`contentAsset` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`secondaryType` <- this_object$`secondaryType`
      self$`discountPercentage` <- this_object$`discountPercentage`
      self
    },

    #' @description
    #' Validate JSON input with respect to Offer and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Offer
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
# Offer$unlock()
#
## Below is an example to define the print function
# Offer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Offer$lock()

