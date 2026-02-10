#' Create a new BaseOfferResponse
#'
#' @description
#' BaseOfferResponse Class
#'
#' @docType class
#' @title BaseOfferResponse
#' @description BaseOfferResponse Class
#' @format An \code{R6Class} generator object
#' @field title  character [optional]
#' @field details  character [optional]
#' @field subTitle  character [optional]
#' @field activated  integer [optional]
#' @field expiration  integer [optional]
#' @field redeemableStart  integer [optional]
#' @field redeemableEnd  integer [optional]
#' @field offerType  character [optional]
#' @field offerVisibility  character [optional]
#' @field favorite  character [optional]
#' @field deleted  integer [optional]
#' @field fullPrice  numeric [optional]
#' @field discountPrice  numeric [optional]
#' @field image  character [optional]
#' @field image1  character [optional]
#' @field image2  character [optional]
#' @field image3  character [optional]
#' @field image4  character [optional]
#' @field image5  character [optional]
#' @field images  list(\link{AssetResponse}) [optional]
#' @field barcode  character [optional]
#' @field externalUrl  character [optional]
#' @field active  character [optional]
#' @field subDetails  character [optional]
#' @field externalRedeemOptions  character [optional]
#' @field publisher  character [optional]
#' @field viewedCount  integer [optional]
#' @field clickedCount  integer [optional]
#' @field addedLimit  integer [optional]
#' @field addedCount  integer [optional]
#' @field usedCount  integer [optional]
#' @field removedCount  integer [optional]
#' @field ticketsReward  integer [optional]
#' @field ticketsRewardType  character [optional]
#' @field specialOfferType  character [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field favoriteCount  integer [optional]
#' @field noteCount  integer [optional]
#' @field billableEntityId  integer [optional]
#' @field responsibleAccountId  integer [optional]
#' @field availabilitySummary  character [optional]
#' @field flagCount  integer [optional]
#' @field flagThreshold  integer [optional]
#' @field externalId  character [optional]
#' @field parentOffer  \link{BaseOfferResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BaseOfferResponse <- R6::R6Class(
  "BaseOfferResponse",
  public = list(
    `title` = NULL,
    `details` = NULL,
    `subTitle` = NULL,
    `activated` = NULL,
    `expiration` = NULL,
    `redeemableStart` = NULL,
    `redeemableEnd` = NULL,
    `offerType` = NULL,
    `offerVisibility` = NULL,
    `favorite` = NULL,
    `deleted` = NULL,
    `fullPrice` = NULL,
    `discountPrice` = NULL,
    `image` = NULL,
    `image1` = NULL,
    `image2` = NULL,
    `image3` = NULL,
    `image4` = NULL,
    `image5` = NULL,
    `images` = NULL,
    `barcode` = NULL,
    `externalUrl` = NULL,
    `active` = NULL,
    `subDetails` = NULL,
    `externalRedeemOptions` = NULL,
    `publisher` = NULL,
    `viewedCount` = NULL,
    `clickedCount` = NULL,
    `addedLimit` = NULL,
    `addedCount` = NULL,
    `usedCount` = NULL,
    `removedCount` = NULL,
    `ticketsReward` = NULL,
    `ticketsRewardType` = NULL,
    `specialOfferType` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `favoriteCount` = NULL,
    `noteCount` = NULL,
    `billableEntityId` = NULL,
    `responsibleAccountId` = NULL,
    `availabilitySummary` = NULL,
    `flagCount` = NULL,
    `flagThreshold` = NULL,
    `externalId` = NULL,
    `parentOffer` = NULL,

    #' @description
    #' Initialize a new BaseOfferResponse class.
    #'
    #' @param title title
    #' @param details details
    #' @param subTitle subTitle
    #' @param activated activated
    #' @param expiration expiration
    #' @param redeemableStart redeemableStart
    #' @param redeemableEnd redeemableEnd
    #' @param offerType offerType
    #' @param offerVisibility offerVisibility
    #' @param favorite favorite
    #' @param deleted deleted
    #' @param fullPrice fullPrice
    #' @param discountPrice discountPrice
    #' @param image image
    #' @param image1 image1
    #' @param image2 image2
    #' @param image3 image3
    #' @param image4 image4
    #' @param image5 image5
    #' @param images images
    #' @param barcode barcode
    #' @param externalUrl externalUrl
    #' @param active active
    #' @param subDetails subDetails
    #' @param externalRedeemOptions externalRedeemOptions
    #' @param publisher publisher
    #' @param viewedCount viewedCount
    #' @param clickedCount clickedCount
    #' @param addedLimit addedLimit
    #' @param addedCount addedCount
    #' @param usedCount usedCount
    #' @param removedCount removedCount
    #' @param ticketsReward ticketsReward
    #' @param ticketsRewardType ticketsRewardType
    #' @param specialOfferType specialOfferType
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param favoriteCount favoriteCount
    #' @param noteCount noteCount
    #' @param billableEntityId billableEntityId
    #' @param responsibleAccountId responsibleAccountId
    #' @param availabilitySummary availabilitySummary
    #' @param flagCount flagCount
    #' @param flagThreshold flagThreshold
    #' @param externalId externalId
    #' @param parentOffer parentOffer
    #' @param ... Other optional arguments.
    initialize = function(`title` = NULL, `details` = NULL, `subTitle` = NULL, `activated` = NULL, `expiration` = NULL, `redeemableStart` = NULL, `redeemableEnd` = NULL, `offerType` = NULL, `offerVisibility` = NULL, `favorite` = NULL, `deleted` = NULL, `fullPrice` = NULL, `discountPrice` = NULL, `image` = NULL, `image1` = NULL, `image2` = NULL, `image3` = NULL, `image4` = NULL, `image5` = NULL, `images` = NULL, `barcode` = NULL, `externalUrl` = NULL, `active` = NULL, `subDetails` = NULL, `externalRedeemOptions` = NULL, `publisher` = NULL, `viewedCount` = NULL, `clickedCount` = NULL, `addedLimit` = NULL, `addedCount` = NULL, `usedCount` = NULL, `removedCount` = NULL, `ticketsReward` = NULL, `ticketsRewardType` = NULL, `specialOfferType` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `favoriteCount` = NULL, `noteCount` = NULL, `billableEntityId` = NULL, `responsibleAccountId` = NULL, `availabilitySummary` = NULL, `flagCount` = NULL, `flagThreshold` = NULL, `externalId` = NULL, `parentOffer` = NULL, ...) {
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`details`)) {
        if (!(is.character(`details`) && length(`details`) == 1)) {
          stop(paste("Error! Invalid data for `details`. Must be a string:", `details`))
        }
        self$`details` <- `details`
      }
      if (!is.null(`subTitle`)) {
        if (!(is.character(`subTitle`) && length(`subTitle`) == 1)) {
          stop(paste("Error! Invalid data for `subTitle`. Must be a string:", `subTitle`))
        }
        self$`subTitle` <- `subTitle`
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
      if (!is.null(`offerType`)) {
        if (!(is.character(`offerType`) && length(`offerType`) == 1)) {
          stop(paste("Error! Invalid data for `offerType`. Must be a string:", `offerType`))
        }
        self$`offerType` <- `offerType`
      }
      if (!is.null(`offerVisibility`)) {
        if (!(is.character(`offerVisibility`) && length(`offerVisibility`) == 1)) {
          stop(paste("Error! Invalid data for `offerVisibility`. Must be a string:", `offerVisibility`))
        }
        self$`offerVisibility` <- `offerVisibility`
      }
      if (!is.null(`favorite`)) {
        if (!(is.logical(`favorite`) && length(`favorite`) == 1)) {
          stop(paste("Error! Invalid data for `favorite`. Must be a boolean:", `favorite`))
        }
        self$`favorite` <- `favorite`
      }
      if (!is.null(`deleted`)) {
        if (!(is.numeric(`deleted`) && length(`deleted`) == 1)) {
          stop(paste("Error! Invalid data for `deleted`. Must be an integer:", `deleted`))
        }
        self$`deleted` <- `deleted`
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
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`subDetails`)) {
        if (!(is.character(`subDetails`) && length(`subDetails`) == 1)) {
          stop(paste("Error! Invalid data for `subDetails`. Must be a string:", `subDetails`))
        }
        self$`subDetails` <- `subDetails`
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
      if (!is.null(`flagCount`)) {
        if (!(is.numeric(`flagCount`) && length(`flagCount`) == 1)) {
          stop(paste("Error! Invalid data for `flagCount`. Must be an integer:", `flagCount`))
        }
        self$`flagCount` <- `flagCount`
      }
      if (!is.null(`flagThreshold`)) {
        if (!(is.numeric(`flagThreshold`) && length(`flagThreshold`) == 1)) {
          stop(paste("Error! Invalid data for `flagThreshold`. Must be an integer:", `flagThreshold`))
        }
        self$`flagThreshold` <- `flagThreshold`
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
    #' @return BaseOfferResponse as a base R list.
    #' @examples
    #' # convert array of BaseOfferResponse (x) to a data frame
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
    #' Convert BaseOfferResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BaseOfferResponseObject <- list()
      if (!is.null(self$`title`)) {
        BaseOfferResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`details`)) {
        BaseOfferResponseObject[["details"]] <-
          self$`details`
      }
      if (!is.null(self$`subTitle`)) {
        BaseOfferResponseObject[["subTitle"]] <-
          self$`subTitle`
      }
      if (!is.null(self$`activated`)) {
        BaseOfferResponseObject[["activated"]] <-
          self$`activated`
      }
      if (!is.null(self$`expiration`)) {
        BaseOfferResponseObject[["expiration"]] <-
          self$`expiration`
      }
      if (!is.null(self$`redeemableStart`)) {
        BaseOfferResponseObject[["redeemableStart"]] <-
          self$`redeemableStart`
      }
      if (!is.null(self$`redeemableEnd`)) {
        BaseOfferResponseObject[["redeemableEnd"]] <-
          self$`redeemableEnd`
      }
      if (!is.null(self$`offerType`)) {
        BaseOfferResponseObject[["offerType"]] <-
          self$`offerType`
      }
      if (!is.null(self$`offerVisibility`)) {
        BaseOfferResponseObject[["offerVisibility"]] <-
          self$`offerVisibility`
      }
      if (!is.null(self$`favorite`)) {
        BaseOfferResponseObject[["favorite"]] <-
          self$`favorite`
      }
      if (!is.null(self$`deleted`)) {
        BaseOfferResponseObject[["deleted"]] <-
          self$`deleted`
      }
      if (!is.null(self$`fullPrice`)) {
        BaseOfferResponseObject[["fullPrice"]] <-
          self$`fullPrice`
      }
      if (!is.null(self$`discountPrice`)) {
        BaseOfferResponseObject[["discountPrice"]] <-
          self$`discountPrice`
      }
      if (!is.null(self$`image`)) {
        BaseOfferResponseObject[["image"]] <-
          self$`image`
      }
      if (!is.null(self$`image1`)) {
        BaseOfferResponseObject[["image1"]] <-
          self$`image1`
      }
      if (!is.null(self$`image2`)) {
        BaseOfferResponseObject[["image2"]] <-
          self$`image2`
      }
      if (!is.null(self$`image3`)) {
        BaseOfferResponseObject[["image3"]] <-
          self$`image3`
      }
      if (!is.null(self$`image4`)) {
        BaseOfferResponseObject[["image4"]] <-
          self$`image4`
      }
      if (!is.null(self$`image5`)) {
        BaseOfferResponseObject[["image5"]] <-
          self$`image5`
      }
      if (!is.null(self$`images`)) {
        BaseOfferResponseObject[["images"]] <-
          self$extractSimpleType(self$`images`)
      }
      if (!is.null(self$`barcode`)) {
        BaseOfferResponseObject[["barcode"]] <-
          self$`barcode`
      }
      if (!is.null(self$`externalUrl`)) {
        BaseOfferResponseObject[["externalUrl"]] <-
          self$`externalUrl`
      }
      if (!is.null(self$`active`)) {
        BaseOfferResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`subDetails`)) {
        BaseOfferResponseObject[["subDetails"]] <-
          self$`subDetails`
      }
      if (!is.null(self$`externalRedeemOptions`)) {
        BaseOfferResponseObject[["externalRedeemOptions"]] <-
          self$`externalRedeemOptions`
      }
      if (!is.null(self$`publisher`)) {
        BaseOfferResponseObject[["publisher"]] <-
          self$`publisher`
      }
      if (!is.null(self$`viewedCount`)) {
        BaseOfferResponseObject[["viewedCount"]] <-
          self$`viewedCount`
      }
      if (!is.null(self$`clickedCount`)) {
        BaseOfferResponseObject[["clickedCount"]] <-
          self$`clickedCount`
      }
      if (!is.null(self$`addedLimit`)) {
        BaseOfferResponseObject[["addedLimit"]] <-
          self$`addedLimit`
      }
      if (!is.null(self$`addedCount`)) {
        BaseOfferResponseObject[["addedCount"]] <-
          self$`addedCount`
      }
      if (!is.null(self$`usedCount`)) {
        BaseOfferResponseObject[["usedCount"]] <-
          self$`usedCount`
      }
      if (!is.null(self$`removedCount`)) {
        BaseOfferResponseObject[["removedCount"]] <-
          self$`removedCount`
      }
      if (!is.null(self$`ticketsReward`)) {
        BaseOfferResponseObject[["ticketsReward"]] <-
          self$`ticketsReward`
      }
      if (!is.null(self$`ticketsRewardType`)) {
        BaseOfferResponseObject[["ticketsRewardType"]] <-
          self$`ticketsRewardType`
      }
      if (!is.null(self$`specialOfferType`)) {
        BaseOfferResponseObject[["specialOfferType"]] <-
          self$`specialOfferType`
      }
      if (!is.null(self$`likeCount`)) {
        BaseOfferResponseObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        BaseOfferResponseObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`favoriteCount`)) {
        BaseOfferResponseObject[["favoriteCount"]] <-
          self$`favoriteCount`
      }
      if (!is.null(self$`noteCount`)) {
        BaseOfferResponseObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`billableEntityId`)) {
        BaseOfferResponseObject[["billableEntityId"]] <-
          self$`billableEntityId`
      }
      if (!is.null(self$`responsibleAccountId`)) {
        BaseOfferResponseObject[["responsibleAccountId"]] <-
          self$`responsibleAccountId`
      }
      if (!is.null(self$`availabilitySummary`)) {
        BaseOfferResponseObject[["availabilitySummary"]] <-
          self$`availabilitySummary`
      }
      if (!is.null(self$`flagCount`)) {
        BaseOfferResponseObject[["flagCount"]] <-
          self$`flagCount`
      }
      if (!is.null(self$`flagThreshold`)) {
        BaseOfferResponseObject[["flagThreshold"]] <-
          self$`flagThreshold`
      }
      if (!is.null(self$`externalId`)) {
        BaseOfferResponseObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`parentOffer`)) {
        BaseOfferResponseObject[["parentOffer"]] <-
          self$extractSimpleType(self$`parentOffer`)
      }
      return(BaseOfferResponseObject)
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
    #' Deserialize JSON string into an instance of BaseOfferResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BaseOfferResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`details`)) {
        self$`details` <- this_object$`details`
      }
      if (!is.null(this_object$`subTitle`)) {
        self$`subTitle` <- this_object$`subTitle`
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
      if (!is.null(this_object$`offerType`)) {
        self$`offerType` <- this_object$`offerType`
      }
      if (!is.null(this_object$`offerVisibility`)) {
        self$`offerVisibility` <- this_object$`offerVisibility`
      }
      if (!is.null(this_object$`favorite`)) {
        self$`favorite` <- this_object$`favorite`
      }
      if (!is.null(this_object$`deleted`)) {
        self$`deleted` <- this_object$`deleted`
      }
      if (!is.null(this_object$`fullPrice`)) {
        self$`fullPrice` <- this_object$`fullPrice`
      }
      if (!is.null(this_object$`discountPrice`)) {
        self$`discountPrice` <- this_object$`discountPrice`
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
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`subDetails`)) {
        self$`subDetails` <- this_object$`subDetails`
      }
      if (!is.null(this_object$`externalRedeemOptions`)) {
        self$`externalRedeemOptions` <- this_object$`externalRedeemOptions`
      }
      if (!is.null(this_object$`publisher`)) {
        self$`publisher` <- this_object$`publisher`
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
      if (!is.null(this_object$`billableEntityId`)) {
        self$`billableEntityId` <- this_object$`billableEntityId`
      }
      if (!is.null(this_object$`responsibleAccountId`)) {
        self$`responsibleAccountId` <- this_object$`responsibleAccountId`
      }
      if (!is.null(this_object$`availabilitySummary`)) {
        self$`availabilitySummary` <- this_object$`availabilitySummary`
      }
      if (!is.null(this_object$`flagCount`)) {
        self$`flagCount` <- this_object$`flagCount`
      }
      if (!is.null(this_object$`flagThreshold`)) {
        self$`flagThreshold` <- this_object$`flagThreshold`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`parentOffer`)) {
        `parentoffer_object` <- BaseOfferResponse$new()
        `parentoffer_object`$fromJSON(jsonlite::toJSON(this_object$`parentOffer`, auto_unbox = TRUE, digits = NA))
        self$`parentOffer` <- `parentoffer_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BaseOfferResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BaseOfferResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BaseOfferResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`title` <- this_object$`title`
      self$`details` <- this_object$`details`
      self$`subTitle` <- this_object$`subTitle`
      self$`activated` <- this_object$`activated`
      self$`expiration` <- this_object$`expiration`
      self$`redeemableStart` <- this_object$`redeemableStart`
      self$`redeemableEnd` <- this_object$`redeemableEnd`
      self$`offerType` <- this_object$`offerType`
      self$`offerVisibility` <- this_object$`offerVisibility`
      self$`favorite` <- this_object$`favorite`
      self$`deleted` <- this_object$`deleted`
      self$`fullPrice` <- this_object$`fullPrice`
      self$`discountPrice` <- this_object$`discountPrice`
      self$`image` <- this_object$`image`
      self$`image1` <- this_object$`image1`
      self$`image2` <- this_object$`image2`
      self$`image3` <- this_object$`image3`
      self$`image4` <- this_object$`image4`
      self$`image5` <- this_object$`image5`
      self$`images` <- ApiClient$new()$deserializeObj(this_object$`images`, "array[AssetResponse]", loadNamespace("openapi"))
      self$`barcode` <- this_object$`barcode`
      self$`externalUrl` <- this_object$`externalUrl`
      self$`active` <- this_object$`active`
      self$`subDetails` <- this_object$`subDetails`
      self$`externalRedeemOptions` <- this_object$`externalRedeemOptions`
      self$`publisher` <- this_object$`publisher`
      self$`viewedCount` <- this_object$`viewedCount`
      self$`clickedCount` <- this_object$`clickedCount`
      self$`addedLimit` <- this_object$`addedLimit`
      self$`addedCount` <- this_object$`addedCount`
      self$`usedCount` <- this_object$`usedCount`
      self$`removedCount` <- this_object$`removedCount`
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
      self$`billableEntityId` <- this_object$`billableEntityId`
      self$`responsibleAccountId` <- this_object$`responsibleAccountId`
      self$`availabilitySummary` <- this_object$`availabilitySummary`
      self$`flagCount` <- this_object$`flagCount`
      self$`flagThreshold` <- this_object$`flagThreshold`
      self$`externalId` <- this_object$`externalId`
      self$`parentOffer` <- BaseOfferResponse$new()$fromJSON(jsonlite::toJSON(this_object$`parentOffer`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to BaseOfferResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BaseOfferResponse
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
# BaseOfferResponse$unlock()
#
## Below is an example to define the print function
# BaseOfferResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BaseOfferResponse$lock()

