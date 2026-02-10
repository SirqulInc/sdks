#' Create a new OfferLocation
#'
#' @description
#' OfferLocation Class
#'
#' @docType class
#' @title OfferLocation
#' @description OfferLocation Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field offer  \link{Offer} [optional]
#' @field location  \link{RetailerLocation} [optional]
#' @field distance  numeric [optional]
#' @field altitude  numeric [optional]
#' @field customValue  numeric [optional]
#' @field locationDetail  character [optional]
#' @field audiences  list(\link{Audience}) [optional]
#' @field qrInviteCode  \link{Asset} [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field searchIndexUpdated  character [optional]
#' @field inSearchIndex  character [optional]
#' @field favoriteCount  integer [optional]
#' @field addedCount  integer [optional]
#' @field display  character [optional]
#' @field appKey  character [optional]
#' @field devicePower  numeric [optional]
#' @field powerLoss  numeric [optional]
#' @field udid  character [optional]
#' @field billableId  integer [optional]
#' @field subType  character [optional]
#' @field contentName  character [optional]
#' @field contentAsset  \link{Asset} [optional]
#' @field owner  \link{Account} [optional]
#' @field secondaryType  character [optional]
#' @field categoryIds  list(integer) [optional]
#' @field filterIds  list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OfferLocation <- R6::R6Class(
  "OfferLocation",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `offer` = NULL,
    `location` = NULL,
    `distance` = NULL,
    `altitude` = NULL,
    `customValue` = NULL,
    `locationDetail` = NULL,
    `audiences` = NULL,
    `qrInviteCode` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `searchIndexUpdated` = NULL,
    `inSearchIndex` = NULL,
    `favoriteCount` = NULL,
    `addedCount` = NULL,
    `display` = NULL,
    `appKey` = NULL,
    `devicePower` = NULL,
    `powerLoss` = NULL,
    `udid` = NULL,
    `billableId` = NULL,
    `subType` = NULL,
    `contentName` = NULL,
    `contentAsset` = NULL,
    `owner` = NULL,
    `secondaryType` = NULL,
    `categoryIds` = NULL,
    `filterIds` = NULL,

    #' @description
    #' Initialize a new OfferLocation class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param offer offer
    #' @param location location
    #' @param distance distance
    #' @param altitude altitude
    #' @param customValue customValue
    #' @param locationDetail locationDetail
    #' @param audiences audiences
    #' @param qrInviteCode qrInviteCode
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param searchIndexUpdated searchIndexUpdated
    #' @param inSearchIndex inSearchIndex
    #' @param favoriteCount favoriteCount
    #' @param addedCount addedCount
    #' @param display display
    #' @param appKey appKey
    #' @param devicePower devicePower
    #' @param powerLoss powerLoss
    #' @param udid udid
    #' @param billableId billableId
    #' @param subType subType
    #' @param contentName contentName
    #' @param contentAsset contentAsset
    #' @param owner owner
    #' @param secondaryType secondaryType
    #' @param categoryIds categoryIds
    #' @param filterIds filterIds
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `offer` = NULL, `location` = NULL, `distance` = NULL, `altitude` = NULL, `customValue` = NULL, `locationDetail` = NULL, `audiences` = NULL, `qrInviteCode` = NULL, `notes` = NULL, `noteCount` = NULL, `searchIndexUpdated` = NULL, `inSearchIndex` = NULL, `favoriteCount` = NULL, `addedCount` = NULL, `display` = NULL, `appKey` = NULL, `devicePower` = NULL, `powerLoss` = NULL, `udid` = NULL, `billableId` = NULL, `subType` = NULL, `contentName` = NULL, `contentAsset` = NULL, `owner` = NULL, `secondaryType` = NULL, `categoryIds` = NULL, `filterIds` = NULL, ...) {
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
      if (!is.null(`offer`)) {
        stopifnot(R6::is.R6(`offer`))
        self$`offer` <- `offer`
      }
      if (!is.null(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
      }
      if (!is.null(`altitude`)) {
        if (!(is.numeric(`altitude`) && length(`altitude`) == 1)) {
          stop(paste("Error! Invalid data for `altitude`. Must be a number:", `altitude`))
        }
        self$`altitude` <- `altitude`
      }
      if (!is.null(`customValue`)) {
        if (!(is.numeric(`customValue`) && length(`customValue`) == 1)) {
          stop(paste("Error! Invalid data for `customValue`. Must be a number:", `customValue`))
        }
        self$`customValue` <- `customValue`
      }
      if (!is.null(`locationDetail`)) {
        if (!(is.character(`locationDetail`) && length(`locationDetail`) == 1)) {
          stop(paste("Error! Invalid data for `locationDetail`. Must be a string:", `locationDetail`))
        }
        self$`locationDetail` <- `locationDetail`
      }
      if (!is.null(`audiences`)) {
        stopifnot(is.vector(`audiences`), length(`audiences`) != 0)
        sapply(`audiences`, function(x) stopifnot(R6::is.R6(x)))
        self$`audiences` <- `audiences`
      }
      if (!is.null(`qrInviteCode`)) {
        stopifnot(R6::is.R6(`qrInviteCode`))
        self$`qrInviteCode` <- `qrInviteCode`
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
      if (!is.null(`addedCount`)) {
        if (!(is.numeric(`addedCount`) && length(`addedCount`) == 1)) {
          stop(paste("Error! Invalid data for `addedCount`. Must be an integer:", `addedCount`))
        }
        self$`addedCount` <- `addedCount`
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
      if (!is.null(`devicePower`)) {
        if (!(is.numeric(`devicePower`) && length(`devicePower`) == 1)) {
          stop(paste("Error! Invalid data for `devicePower`. Must be a number:", `devicePower`))
        }
        self$`devicePower` <- `devicePower`
      }
      if (!is.null(`powerLoss`)) {
        if (!(is.numeric(`powerLoss`) && length(`powerLoss`) == 1)) {
          stop(paste("Error! Invalid data for `powerLoss`. Must be a number:", `powerLoss`))
        }
        self$`powerLoss` <- `powerLoss`
      }
      if (!is.null(`udid`)) {
        if (!(is.character(`udid`) && length(`udid`) == 1)) {
          stop(paste("Error! Invalid data for `udid`. Must be a string:", `udid`))
        }
        self$`udid` <- `udid`
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
      if (!is.null(`categoryIds`)) {
        stopifnot(is.vector(`categoryIds`), length(`categoryIds`) != 0)
        sapply(`categoryIds`, function(x) stopifnot(is.character(x)))
        self$`categoryIds` <- `categoryIds`
      }
      if (!is.null(`filterIds`)) {
        stopifnot(is.vector(`filterIds`), length(`filterIds`) != 0)
        sapply(`filterIds`, function(x) stopifnot(is.character(x)))
        self$`filterIds` <- `filterIds`
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
    #' @return OfferLocation as a base R list.
    #' @examples
    #' # convert array of OfferLocation (x) to a data frame
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
    #' Convert OfferLocation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OfferLocationObject <- list()
      if (!is.null(self$`id`)) {
        OfferLocationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        OfferLocationObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        OfferLocationObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        OfferLocationObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        OfferLocationObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        OfferLocationObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`offer`)) {
        OfferLocationObject[["offer"]] <-
          self$extractSimpleType(self$`offer`)
      }
      if (!is.null(self$`location`)) {
        OfferLocationObject[["location"]] <-
          self$extractSimpleType(self$`location`)
      }
      if (!is.null(self$`distance`)) {
        OfferLocationObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`altitude`)) {
        OfferLocationObject[["altitude"]] <-
          self$`altitude`
      }
      if (!is.null(self$`customValue`)) {
        OfferLocationObject[["customValue"]] <-
          self$`customValue`
      }
      if (!is.null(self$`locationDetail`)) {
        OfferLocationObject[["locationDetail"]] <-
          self$`locationDetail`
      }
      if (!is.null(self$`audiences`)) {
        OfferLocationObject[["audiences"]] <-
          self$extractSimpleType(self$`audiences`)
      }
      if (!is.null(self$`qrInviteCode`)) {
        OfferLocationObject[["qrInviteCode"]] <-
          self$extractSimpleType(self$`qrInviteCode`)
      }
      if (!is.null(self$`notes`)) {
        OfferLocationObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        OfferLocationObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`searchIndexUpdated`)) {
        OfferLocationObject[["searchIndexUpdated"]] <-
          self$`searchIndexUpdated`
      }
      if (!is.null(self$`inSearchIndex`)) {
        OfferLocationObject[["inSearchIndex"]] <-
          self$`inSearchIndex`
      }
      if (!is.null(self$`favoriteCount`)) {
        OfferLocationObject[["favoriteCount"]] <-
          self$`favoriteCount`
      }
      if (!is.null(self$`addedCount`)) {
        OfferLocationObject[["addedCount"]] <-
          self$`addedCount`
      }
      if (!is.null(self$`display`)) {
        OfferLocationObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`appKey`)) {
        OfferLocationObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`devicePower`)) {
        OfferLocationObject[["devicePower"]] <-
          self$`devicePower`
      }
      if (!is.null(self$`powerLoss`)) {
        OfferLocationObject[["powerLoss"]] <-
          self$`powerLoss`
      }
      if (!is.null(self$`udid`)) {
        OfferLocationObject[["udid"]] <-
          self$`udid`
      }
      if (!is.null(self$`billableId`)) {
        OfferLocationObject[["billableId"]] <-
          self$`billableId`
      }
      if (!is.null(self$`subType`)) {
        OfferLocationObject[["subType"]] <-
          self$`subType`
      }
      if (!is.null(self$`contentName`)) {
        OfferLocationObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`contentAsset`)) {
        OfferLocationObject[["contentAsset"]] <-
          self$extractSimpleType(self$`contentAsset`)
      }
      if (!is.null(self$`owner`)) {
        OfferLocationObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`secondaryType`)) {
        OfferLocationObject[["secondaryType"]] <-
          self$`secondaryType`
      }
      if (!is.null(self$`categoryIds`)) {
        OfferLocationObject[["categoryIds"]] <-
          self$`categoryIds`
      }
      if (!is.null(self$`filterIds`)) {
        OfferLocationObject[["filterIds"]] <-
          self$`filterIds`
      }
      return(OfferLocationObject)
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
    #' Deserialize JSON string into an instance of OfferLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of OfferLocation
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
      if (!is.null(this_object$`offer`)) {
        `offer_object` <- Offer$new()
        `offer_object`$fromJSON(jsonlite::toJSON(this_object$`offer`, auto_unbox = TRUE, digits = NA))
        self$`offer` <- `offer_object`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- RetailerLocation$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`altitude`)) {
        self$`altitude` <- this_object$`altitude`
      }
      if (!is.null(this_object$`customValue`)) {
        self$`customValue` <- this_object$`customValue`
      }
      if (!is.null(this_object$`locationDetail`)) {
        self$`locationDetail` <- this_object$`locationDetail`
      }
      if (!is.null(this_object$`audiences`)) {
        self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[Audience]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`qrInviteCode`)) {
        `qrinvitecode_object` <- Asset$new()
        `qrinvitecode_object`$fromJSON(jsonlite::toJSON(this_object$`qrInviteCode`, auto_unbox = TRUE, digits = NA))
        self$`qrInviteCode` <- `qrinvitecode_object`
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
      if (!is.null(this_object$`addedCount`)) {
        self$`addedCount` <- this_object$`addedCount`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`devicePower`)) {
        self$`devicePower` <- this_object$`devicePower`
      }
      if (!is.null(this_object$`powerLoss`)) {
        self$`powerLoss` <- this_object$`powerLoss`
      }
      if (!is.null(this_object$`udid`)) {
        self$`udid` <- this_object$`udid`
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
      if (!is.null(this_object$`categoryIds`)) {
        self$`categoryIds` <- ApiClient$new()$deserializeObj(this_object$`categoryIds`, "array[integer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`filterIds`)) {
        self$`filterIds` <- ApiClient$new()$deserializeObj(this_object$`filterIds`, "array[integer]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OfferLocation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OfferLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of OfferLocation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`offer` <- Offer$new()$fromJSON(jsonlite::toJSON(this_object$`offer`, auto_unbox = TRUE, digits = NA))
      self$`location` <- RetailerLocation$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`distance` <- this_object$`distance`
      self$`altitude` <- this_object$`altitude`
      self$`customValue` <- this_object$`customValue`
      self$`locationDetail` <- this_object$`locationDetail`
      self$`audiences` <- ApiClient$new()$deserializeObj(this_object$`audiences`, "array[Audience]", loadNamespace("openapi"))
      self$`qrInviteCode` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`qrInviteCode`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      self$`searchIndexUpdated` <- this_object$`searchIndexUpdated`
      self$`inSearchIndex` <- this_object$`inSearchIndex`
      self$`favoriteCount` <- this_object$`favoriteCount`
      self$`addedCount` <- this_object$`addedCount`
      self$`display` <- this_object$`display`
      self$`appKey` <- this_object$`appKey`
      self$`devicePower` <- this_object$`devicePower`
      self$`powerLoss` <- this_object$`powerLoss`
      self$`udid` <- this_object$`udid`
      self$`billableId` <- this_object$`billableId`
      self$`subType` <- this_object$`subType`
      self$`contentName` <- this_object$`contentName`
      self$`contentAsset` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`contentAsset`, auto_unbox = TRUE, digits = NA))
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`secondaryType` <- this_object$`secondaryType`
      self$`categoryIds` <- ApiClient$new()$deserializeObj(this_object$`categoryIds`, "array[integer]", loadNamespace("openapi"))
      self$`filterIds` <- ApiClient$new()$deserializeObj(this_object$`filterIds`, "array[integer]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OfferLocation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OfferLocation
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
# OfferLocation$unlock()
#
## Below is an example to define the print function
# OfferLocation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OfferLocation$lock()

