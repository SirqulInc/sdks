#' Create a new RetailerLocation
#'
#' @description
#' RetailerLocation Class
#'
#' @docType class
#' @title RetailerLocation
#' @description RetailerLocation Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field categories  list(\link{Category}) [optional]
#' @field filters  list(\link{Filter}) [optional]
#' @field offerLocations  list(\link{OfferLocation}) [optional]
#' @field logo  \link{Asset} [optional]
#' @field picture1  \link{Asset} [optional]
#' @field picture2  \link{Asset} [optional]
#' @field qrCode  \link{Asset} [optional]
#' @field name  character [optional]
#' @field locationId  character [optional]
#' @field code  character [optional]
#' @field retailer  \link{Retailer} [optional]
#' @field assignments  list(\link{Assignment}) [optional]
#' @field currentAssignment  \link{Assignment} [optional]
#' @field profile  \link{RetailerProfile} [optional]
#' @field regions  list(\link{Region}) [optional]
#' @field offerPrintKeyPrefix  character [optional]
#' @field administrators  list(\link{Account}) [optional]
#' @field sqootId  integer [optional]
#' @field yipitId  integer [optional]
#' @field locationToken  character [optional]
#' @field building  \link{Building} [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field searchIndexUpdated  character [optional]
#' @field inSearchIndex  character [optional]
#' @field favoriteCount  integer [optional]
#' @field hasRatings  character [optional]
#' @field googlePlaceId  character [optional]
#' @field yelpId  character [optional]
#' @field display  character [optional]
#' @field appKey  character [optional]
#' @field categoryTree  character [optional]
#' @field filterTree  character [optional]
#' @field addressDisplay  character [optional]
#' @field mapQuery  character [optional]
#' @field sortName  character [optional]
#' @field fullDisplay  character [optional]
#' @field hasOffers  character [optional]
#' @field billableId  integer [optional]
#' @field subType  character [optional]
#' @field contentName  character [optional]
#' @field owner  \link{Account} [optional]
#' @field secondaryType  character [optional]
#' @field locationAddress  character [optional]
#' @field validOfferLocationIds  list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RetailerLocation <- R6::R6Class(
  "RetailerLocation",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `categories` = NULL,
    `filters` = NULL,
    `offerLocations` = NULL,
    `logo` = NULL,
    `picture1` = NULL,
    `picture2` = NULL,
    `qrCode` = NULL,
    `name` = NULL,
    `locationId` = NULL,
    `code` = NULL,
    `retailer` = NULL,
    `assignments` = NULL,
    `currentAssignment` = NULL,
    `profile` = NULL,
    `regions` = NULL,
    `offerPrintKeyPrefix` = NULL,
    `administrators` = NULL,
    `sqootId` = NULL,
    `yipitId` = NULL,
    `locationToken` = NULL,
    `building` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `searchIndexUpdated` = NULL,
    `inSearchIndex` = NULL,
    `favoriteCount` = NULL,
    `hasRatings` = NULL,
    `googlePlaceId` = NULL,
    `yelpId` = NULL,
    `display` = NULL,
    `appKey` = NULL,
    `categoryTree` = NULL,
    `filterTree` = NULL,
    `addressDisplay` = NULL,
    `mapQuery` = NULL,
    `sortName` = NULL,
    `fullDisplay` = NULL,
    `hasOffers` = NULL,
    `billableId` = NULL,
    `subType` = NULL,
    `contentName` = NULL,
    `owner` = NULL,
    `secondaryType` = NULL,
    `locationAddress` = NULL,
    `validOfferLocationIds` = NULL,

    #' @description
    #' Initialize a new RetailerLocation class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param categories categories
    #' @param filters filters
    #' @param offerLocations offerLocations
    #' @param logo logo
    #' @param picture1 picture1
    #' @param picture2 picture2
    #' @param qrCode qrCode
    #' @param name name
    #' @param locationId locationId
    #' @param code code
    #' @param retailer retailer
    #' @param assignments assignments
    #' @param currentAssignment currentAssignment
    #' @param profile profile
    #' @param regions regions
    #' @param offerPrintKeyPrefix offerPrintKeyPrefix
    #' @param administrators administrators
    #' @param sqootId sqootId
    #' @param yipitId yipitId
    #' @param locationToken locationToken
    #' @param building building
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param searchIndexUpdated searchIndexUpdated
    #' @param inSearchIndex inSearchIndex
    #' @param favoriteCount favoriteCount
    #' @param hasRatings hasRatings
    #' @param googlePlaceId googlePlaceId
    #' @param yelpId yelpId
    #' @param display display
    #' @param appKey appKey
    #' @param categoryTree categoryTree
    #' @param filterTree filterTree
    #' @param addressDisplay addressDisplay
    #' @param mapQuery mapQuery
    #' @param sortName sortName
    #' @param fullDisplay fullDisplay
    #' @param hasOffers hasOffers
    #' @param billableId billableId
    #' @param subType subType
    #' @param contentName contentName
    #' @param owner owner
    #' @param secondaryType secondaryType
    #' @param locationAddress locationAddress
    #' @param validOfferLocationIds validOfferLocationIds
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `categories` = NULL, `filters` = NULL, `offerLocations` = NULL, `logo` = NULL, `picture1` = NULL, `picture2` = NULL, `qrCode` = NULL, `name` = NULL, `locationId` = NULL, `code` = NULL, `retailer` = NULL, `assignments` = NULL, `currentAssignment` = NULL, `profile` = NULL, `regions` = NULL, `offerPrintKeyPrefix` = NULL, `administrators` = NULL, `sqootId` = NULL, `yipitId` = NULL, `locationToken` = NULL, `building` = NULL, `notes` = NULL, `noteCount` = NULL, `searchIndexUpdated` = NULL, `inSearchIndex` = NULL, `favoriteCount` = NULL, `hasRatings` = NULL, `googlePlaceId` = NULL, `yelpId` = NULL, `display` = NULL, `appKey` = NULL, `categoryTree` = NULL, `filterTree` = NULL, `addressDisplay` = NULL, `mapQuery` = NULL, `sortName` = NULL, `fullDisplay` = NULL, `hasOffers` = NULL, `billableId` = NULL, `subType` = NULL, `contentName` = NULL, `owner` = NULL, `secondaryType` = NULL, `locationAddress` = NULL, `validOfferLocationIds` = NULL, ...) {
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
      if (!is.null(`offerLocations`)) {
        stopifnot(is.vector(`offerLocations`), length(`offerLocations`) != 0)
        sapply(`offerLocations`, function(x) stopifnot(R6::is.R6(x)))
        self$`offerLocations` <- `offerLocations`
      }
      if (!is.null(`logo`)) {
        stopifnot(R6::is.R6(`logo`))
        self$`logo` <- `logo`
      }
      if (!is.null(`picture1`)) {
        stopifnot(R6::is.R6(`picture1`))
        self$`picture1` <- `picture1`
      }
      if (!is.null(`picture2`)) {
        stopifnot(R6::is.R6(`picture2`))
        self$`picture2` <- `picture2`
      }
      if (!is.null(`qrCode`)) {
        stopifnot(R6::is.R6(`qrCode`))
        self$`qrCode` <- `qrCode`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`locationId`)) {
        if (!(is.character(`locationId`) && length(`locationId`) == 1)) {
          stop(paste("Error! Invalid data for `locationId`. Must be a string:", `locationId`))
        }
        self$`locationId` <- `locationId`
      }
      if (!is.null(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`retailer`)) {
        stopifnot(R6::is.R6(`retailer`))
        self$`retailer` <- `retailer`
      }
      if (!is.null(`assignments`)) {
        stopifnot(is.vector(`assignments`), length(`assignments`) != 0)
        sapply(`assignments`, function(x) stopifnot(R6::is.R6(x)))
        self$`assignments` <- `assignments`
      }
      if (!is.null(`currentAssignment`)) {
        stopifnot(R6::is.R6(`currentAssignment`))
        self$`currentAssignment` <- `currentAssignment`
      }
      if (!is.null(`profile`)) {
        stopifnot(R6::is.R6(`profile`))
        self$`profile` <- `profile`
      }
      if (!is.null(`regions`)) {
        stopifnot(is.vector(`regions`), length(`regions`) != 0)
        sapply(`regions`, function(x) stopifnot(R6::is.R6(x)))
        self$`regions` <- `regions`
      }
      if (!is.null(`offerPrintKeyPrefix`)) {
        if (!(is.character(`offerPrintKeyPrefix`) && length(`offerPrintKeyPrefix`) == 1)) {
          stop(paste("Error! Invalid data for `offerPrintKeyPrefix`. Must be a string:", `offerPrintKeyPrefix`))
        }
        self$`offerPrintKeyPrefix` <- `offerPrintKeyPrefix`
      }
      if (!is.null(`administrators`)) {
        stopifnot(is.vector(`administrators`), length(`administrators`) != 0)
        sapply(`administrators`, function(x) stopifnot(R6::is.R6(x)))
        self$`administrators` <- `administrators`
      }
      if (!is.null(`sqootId`)) {
        if (!(is.numeric(`sqootId`) && length(`sqootId`) == 1)) {
          stop(paste("Error! Invalid data for `sqootId`. Must be an integer:", `sqootId`))
        }
        self$`sqootId` <- `sqootId`
      }
      if (!is.null(`yipitId`)) {
        if (!(is.numeric(`yipitId`) && length(`yipitId`) == 1)) {
          stop(paste("Error! Invalid data for `yipitId`. Must be an integer:", `yipitId`))
        }
        self$`yipitId` <- `yipitId`
      }
      if (!is.null(`locationToken`)) {
        if (!(is.character(`locationToken`) && length(`locationToken`) == 1)) {
          stop(paste("Error! Invalid data for `locationToken`. Must be a string:", `locationToken`))
        }
        self$`locationToken` <- `locationToken`
      }
      if (!is.null(`building`)) {
        stopifnot(R6::is.R6(`building`))
        self$`building` <- `building`
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
      if (!is.null(`searchIndexUpdated`)) {
        if (!is.character(`searchIndexUpdated`)) {
          stop(paste("Error! Invalid data for `searchIndexUpdated`. Must be a string:", `searchIndexUpdated`))
        }
        self$`searchIndexUpdated` <- `searchIndexUpdated`
      }
      if (!is.null(`inSearchIndex`)) {
        if (!(is.logical(`inSearchIndex`) && length(`inSearchIndex`) == 1)) {
          stop(paste("Error! Invalid data for `inSearchIndex`. Must be a boolean:", `inSearchIndex`))
        }
        self$`inSearchIndex` <- `inSearchIndex`
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
      if (!is.null(`googlePlaceId`)) {
        if (!(is.character(`googlePlaceId`) && length(`googlePlaceId`) == 1)) {
          stop(paste("Error! Invalid data for `googlePlaceId`. Must be a string:", `googlePlaceId`))
        }
        self$`googlePlaceId` <- `googlePlaceId`
      }
      if (!is.null(`yelpId`)) {
        if (!(is.character(`yelpId`) && length(`yelpId`) == 1)) {
          stop(paste("Error! Invalid data for `yelpId`. Must be a string:", `yelpId`))
        }
        self$`yelpId` <- `yelpId`
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
      if (!is.null(`addressDisplay`)) {
        if (!(is.character(`addressDisplay`) && length(`addressDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `addressDisplay`. Must be a string:", `addressDisplay`))
        }
        self$`addressDisplay` <- `addressDisplay`
      }
      if (!is.null(`mapQuery`)) {
        if (!(is.character(`mapQuery`) && length(`mapQuery`) == 1)) {
          stop(paste("Error! Invalid data for `mapQuery`. Must be a string:", `mapQuery`))
        }
        self$`mapQuery` <- `mapQuery`
      }
      if (!is.null(`sortName`)) {
        if (!(is.character(`sortName`) && length(`sortName`) == 1)) {
          stop(paste("Error! Invalid data for `sortName`. Must be a string:", `sortName`))
        }
        self$`sortName` <- `sortName`
      }
      if (!is.null(`fullDisplay`)) {
        if (!(is.character(`fullDisplay`) && length(`fullDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `fullDisplay`. Must be a string:", `fullDisplay`))
        }
        self$`fullDisplay` <- `fullDisplay`
      }
      if (!is.null(`hasOffers`)) {
        if (!(is.logical(`hasOffers`) && length(`hasOffers`) == 1)) {
          stop(paste("Error! Invalid data for `hasOffers`. Must be a boolean:", `hasOffers`))
        }
        self$`hasOffers` <- `hasOffers`
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
      if (!is.null(`locationAddress`)) {
        if (!(is.character(`locationAddress`) && length(`locationAddress`) == 1)) {
          stop(paste("Error! Invalid data for `locationAddress`. Must be a string:", `locationAddress`))
        }
        self$`locationAddress` <- `locationAddress`
      }
      if (!is.null(`validOfferLocationIds`)) {
        stopifnot(is.vector(`validOfferLocationIds`), length(`validOfferLocationIds`) != 0)
        sapply(`validOfferLocationIds`, function(x) stopifnot(is.character(x)))
        self$`validOfferLocationIds` <- `validOfferLocationIds`
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
    #' @return RetailerLocation as a base R list.
    #' @examples
    #' # convert array of RetailerLocation (x) to a data frame
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
    #' Convert RetailerLocation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RetailerLocationObject <- list()
      if (!is.null(self$`id`)) {
        RetailerLocationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        RetailerLocationObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        RetailerLocationObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        RetailerLocationObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        RetailerLocationObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        RetailerLocationObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`categories`)) {
        RetailerLocationObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`filters`)) {
        RetailerLocationObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`offerLocations`)) {
        RetailerLocationObject[["offerLocations"]] <-
          self$extractSimpleType(self$`offerLocations`)
      }
      if (!is.null(self$`logo`)) {
        RetailerLocationObject[["logo"]] <-
          self$extractSimpleType(self$`logo`)
      }
      if (!is.null(self$`picture1`)) {
        RetailerLocationObject[["picture1"]] <-
          self$extractSimpleType(self$`picture1`)
      }
      if (!is.null(self$`picture2`)) {
        RetailerLocationObject[["picture2"]] <-
          self$extractSimpleType(self$`picture2`)
      }
      if (!is.null(self$`qrCode`)) {
        RetailerLocationObject[["qrCode"]] <-
          self$extractSimpleType(self$`qrCode`)
      }
      if (!is.null(self$`name`)) {
        RetailerLocationObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`locationId`)) {
        RetailerLocationObject[["locationId"]] <-
          self$`locationId`
      }
      if (!is.null(self$`code`)) {
        RetailerLocationObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`retailer`)) {
        RetailerLocationObject[["retailer"]] <-
          self$extractSimpleType(self$`retailer`)
      }
      if (!is.null(self$`assignments`)) {
        RetailerLocationObject[["assignments"]] <-
          self$extractSimpleType(self$`assignments`)
      }
      if (!is.null(self$`currentAssignment`)) {
        RetailerLocationObject[["currentAssignment"]] <-
          self$extractSimpleType(self$`currentAssignment`)
      }
      if (!is.null(self$`profile`)) {
        RetailerLocationObject[["profile"]] <-
          self$extractSimpleType(self$`profile`)
      }
      if (!is.null(self$`regions`)) {
        RetailerLocationObject[["regions"]] <-
          self$extractSimpleType(self$`regions`)
      }
      if (!is.null(self$`offerPrintKeyPrefix`)) {
        RetailerLocationObject[["offerPrintKeyPrefix"]] <-
          self$`offerPrintKeyPrefix`
      }
      if (!is.null(self$`administrators`)) {
        RetailerLocationObject[["administrators"]] <-
          self$extractSimpleType(self$`administrators`)
      }
      if (!is.null(self$`sqootId`)) {
        RetailerLocationObject[["sqootId"]] <-
          self$`sqootId`
      }
      if (!is.null(self$`yipitId`)) {
        RetailerLocationObject[["yipitId"]] <-
          self$`yipitId`
      }
      if (!is.null(self$`locationToken`)) {
        RetailerLocationObject[["locationToken"]] <-
          self$`locationToken`
      }
      if (!is.null(self$`building`)) {
        RetailerLocationObject[["building"]] <-
          self$extractSimpleType(self$`building`)
      }
      if (!is.null(self$`notes`)) {
        RetailerLocationObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        RetailerLocationObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`searchIndexUpdated`)) {
        RetailerLocationObject[["searchIndexUpdated"]] <-
          self$`searchIndexUpdated`
      }
      if (!is.null(self$`inSearchIndex`)) {
        RetailerLocationObject[["inSearchIndex"]] <-
          self$`inSearchIndex`
      }
      if (!is.null(self$`favoriteCount`)) {
        RetailerLocationObject[["favoriteCount"]] <-
          self$`favoriteCount`
      }
      if (!is.null(self$`hasRatings`)) {
        RetailerLocationObject[["hasRatings"]] <-
          self$`hasRatings`
      }
      if (!is.null(self$`googlePlaceId`)) {
        RetailerLocationObject[["googlePlaceId"]] <-
          self$`googlePlaceId`
      }
      if (!is.null(self$`yelpId`)) {
        RetailerLocationObject[["yelpId"]] <-
          self$`yelpId`
      }
      if (!is.null(self$`display`)) {
        RetailerLocationObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`appKey`)) {
        RetailerLocationObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`categoryTree`)) {
        RetailerLocationObject[["categoryTree"]] <-
          self$`categoryTree`
      }
      if (!is.null(self$`filterTree`)) {
        RetailerLocationObject[["filterTree"]] <-
          self$`filterTree`
      }
      if (!is.null(self$`addressDisplay`)) {
        RetailerLocationObject[["addressDisplay"]] <-
          self$`addressDisplay`
      }
      if (!is.null(self$`mapQuery`)) {
        RetailerLocationObject[["mapQuery"]] <-
          self$`mapQuery`
      }
      if (!is.null(self$`sortName`)) {
        RetailerLocationObject[["sortName"]] <-
          self$`sortName`
      }
      if (!is.null(self$`fullDisplay`)) {
        RetailerLocationObject[["fullDisplay"]] <-
          self$`fullDisplay`
      }
      if (!is.null(self$`hasOffers`)) {
        RetailerLocationObject[["hasOffers"]] <-
          self$`hasOffers`
      }
      if (!is.null(self$`billableId`)) {
        RetailerLocationObject[["billableId"]] <-
          self$`billableId`
      }
      if (!is.null(self$`subType`)) {
        RetailerLocationObject[["subType"]] <-
          self$`subType`
      }
      if (!is.null(self$`contentName`)) {
        RetailerLocationObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`owner`)) {
        RetailerLocationObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`secondaryType`)) {
        RetailerLocationObject[["secondaryType"]] <-
          self$`secondaryType`
      }
      if (!is.null(self$`locationAddress`)) {
        RetailerLocationObject[["locationAddress"]] <-
          self$`locationAddress`
      }
      if (!is.null(self$`validOfferLocationIds`)) {
        RetailerLocationObject[["validOfferLocationIds"]] <-
          self$`validOfferLocationIds`
      }
      return(RetailerLocationObject)
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
    #' Deserialize JSON string into an instance of RetailerLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerLocation
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
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`filters`)) {
        self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`offerLocations`)) {
        self$`offerLocations` <- ApiClient$new()$deserializeObj(this_object$`offerLocations`, "array[OfferLocation]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`logo`)) {
        `logo_object` <- Asset$new()
        `logo_object`$fromJSON(jsonlite::toJSON(this_object$`logo`, auto_unbox = TRUE, digits = NA))
        self$`logo` <- `logo_object`
      }
      if (!is.null(this_object$`picture1`)) {
        `picture1_object` <- Asset$new()
        `picture1_object`$fromJSON(jsonlite::toJSON(this_object$`picture1`, auto_unbox = TRUE, digits = NA))
        self$`picture1` <- `picture1_object`
      }
      if (!is.null(this_object$`picture2`)) {
        `picture2_object` <- Asset$new()
        `picture2_object`$fromJSON(jsonlite::toJSON(this_object$`picture2`, auto_unbox = TRUE, digits = NA))
        self$`picture2` <- `picture2_object`
      }
      if (!is.null(this_object$`qrCode`)) {
        `qrcode_object` <- Asset$new()
        `qrcode_object`$fromJSON(jsonlite::toJSON(this_object$`qrCode`, auto_unbox = TRUE, digits = NA))
        self$`qrCode` <- `qrcode_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`locationId`)) {
        self$`locationId` <- this_object$`locationId`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`retailer`)) {
        `retailer_object` <- Retailer$new()
        `retailer_object`$fromJSON(jsonlite::toJSON(this_object$`retailer`, auto_unbox = TRUE, digits = NA))
        self$`retailer` <- `retailer_object`
      }
      if (!is.null(this_object$`assignments`)) {
        self$`assignments` <- ApiClient$new()$deserializeObj(this_object$`assignments`, "array[Assignment]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`currentAssignment`)) {
        `currentassignment_object` <- Assignment$new()
        `currentassignment_object`$fromJSON(jsonlite::toJSON(this_object$`currentAssignment`, auto_unbox = TRUE, digits = NA))
        self$`currentAssignment` <- `currentassignment_object`
      }
      if (!is.null(this_object$`profile`)) {
        `profile_object` <- RetailerProfile$new()
        `profile_object`$fromJSON(jsonlite::toJSON(this_object$`profile`, auto_unbox = TRUE, digits = NA))
        self$`profile` <- `profile_object`
      }
      if (!is.null(this_object$`regions`)) {
        self$`regions` <- ApiClient$new()$deserializeObj(this_object$`regions`, "array[Region]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`offerPrintKeyPrefix`)) {
        self$`offerPrintKeyPrefix` <- this_object$`offerPrintKeyPrefix`
      }
      if (!is.null(this_object$`administrators`)) {
        self$`administrators` <- ApiClient$new()$deserializeObj(this_object$`administrators`, "array[Account]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`sqootId`)) {
        self$`sqootId` <- this_object$`sqootId`
      }
      if (!is.null(this_object$`yipitId`)) {
        self$`yipitId` <- this_object$`yipitId`
      }
      if (!is.null(this_object$`locationToken`)) {
        self$`locationToken` <- this_object$`locationToken`
      }
      if (!is.null(this_object$`building`)) {
        `building_object` <- Building$new()
        `building_object`$fromJSON(jsonlite::toJSON(this_object$`building`, auto_unbox = TRUE, digits = NA))
        self$`building` <- `building_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
      }
      if (!is.null(this_object$`searchIndexUpdated`)) {
        self$`searchIndexUpdated` <- this_object$`searchIndexUpdated`
      }
      if (!is.null(this_object$`inSearchIndex`)) {
        self$`inSearchIndex` <- this_object$`inSearchIndex`
      }
      if (!is.null(this_object$`favoriteCount`)) {
        self$`favoriteCount` <- this_object$`favoriteCount`
      }
      if (!is.null(this_object$`hasRatings`)) {
        self$`hasRatings` <- this_object$`hasRatings`
      }
      if (!is.null(this_object$`googlePlaceId`)) {
        self$`googlePlaceId` <- this_object$`googlePlaceId`
      }
      if (!is.null(this_object$`yelpId`)) {
        self$`yelpId` <- this_object$`yelpId`
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
      if (!is.null(this_object$`addressDisplay`)) {
        self$`addressDisplay` <- this_object$`addressDisplay`
      }
      if (!is.null(this_object$`mapQuery`)) {
        self$`mapQuery` <- this_object$`mapQuery`
      }
      if (!is.null(this_object$`sortName`)) {
        self$`sortName` <- this_object$`sortName`
      }
      if (!is.null(this_object$`fullDisplay`)) {
        self$`fullDisplay` <- this_object$`fullDisplay`
      }
      if (!is.null(this_object$`hasOffers`)) {
        self$`hasOffers` <- this_object$`hasOffers`
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
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`secondaryType`)) {
        self$`secondaryType` <- this_object$`secondaryType`
      }
      if (!is.null(this_object$`locationAddress`)) {
        self$`locationAddress` <- this_object$`locationAddress`
      }
      if (!is.null(this_object$`validOfferLocationIds`)) {
        self$`validOfferLocationIds` <- ApiClient$new()$deserializeObj(this_object$`validOfferLocationIds`, "array[integer]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RetailerLocation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RetailerLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerLocation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[Filter]", loadNamespace("openapi"))
      self$`offerLocations` <- ApiClient$new()$deserializeObj(this_object$`offerLocations`, "array[OfferLocation]", loadNamespace("openapi"))
      self$`logo` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`logo`, auto_unbox = TRUE, digits = NA))
      self$`picture1` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`picture1`, auto_unbox = TRUE, digits = NA))
      self$`picture2` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`picture2`, auto_unbox = TRUE, digits = NA))
      self$`qrCode` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`qrCode`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self$`locationId` <- this_object$`locationId`
      self$`code` <- this_object$`code`
      self$`retailer` <- Retailer$new()$fromJSON(jsonlite::toJSON(this_object$`retailer`, auto_unbox = TRUE, digits = NA))
      self$`assignments` <- ApiClient$new()$deserializeObj(this_object$`assignments`, "array[Assignment]", loadNamespace("openapi"))
      self$`currentAssignment` <- Assignment$new()$fromJSON(jsonlite::toJSON(this_object$`currentAssignment`, auto_unbox = TRUE, digits = NA))
      self$`profile` <- RetailerProfile$new()$fromJSON(jsonlite::toJSON(this_object$`profile`, auto_unbox = TRUE, digits = NA))
      self$`regions` <- ApiClient$new()$deserializeObj(this_object$`regions`, "array[Region]", loadNamespace("openapi"))
      self$`offerPrintKeyPrefix` <- this_object$`offerPrintKeyPrefix`
      self$`administrators` <- ApiClient$new()$deserializeObj(this_object$`administrators`, "array[Account]", loadNamespace("openapi"))
      self$`sqootId` <- this_object$`sqootId`
      self$`yipitId` <- this_object$`yipitId`
      self$`locationToken` <- this_object$`locationToken`
      self$`building` <- Building$new()$fromJSON(jsonlite::toJSON(this_object$`building`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      self$`searchIndexUpdated` <- this_object$`searchIndexUpdated`
      self$`inSearchIndex` <- this_object$`inSearchIndex`
      self$`favoriteCount` <- this_object$`favoriteCount`
      self$`hasRatings` <- this_object$`hasRatings`
      self$`googlePlaceId` <- this_object$`googlePlaceId`
      self$`yelpId` <- this_object$`yelpId`
      self$`display` <- this_object$`display`
      self$`appKey` <- this_object$`appKey`
      self$`categoryTree` <- this_object$`categoryTree`
      self$`filterTree` <- this_object$`filterTree`
      self$`addressDisplay` <- this_object$`addressDisplay`
      self$`mapQuery` <- this_object$`mapQuery`
      self$`sortName` <- this_object$`sortName`
      self$`fullDisplay` <- this_object$`fullDisplay`
      self$`hasOffers` <- this_object$`hasOffers`
      self$`billableId` <- this_object$`billableId`
      self$`subType` <- this_object$`subType`
      self$`contentName` <- this_object$`contentName`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`secondaryType` <- this_object$`secondaryType`
      self$`locationAddress` <- this_object$`locationAddress`
      self$`validOfferLocationIds` <- ApiClient$new()$deserializeObj(this_object$`validOfferLocationIds`, "array[integer]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to RetailerLocation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RetailerLocation
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
# RetailerLocation$unlock()
#
## Below is an example to define the print function
# RetailerLocation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RetailerLocation$lock()

