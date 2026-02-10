#' Create a new RetailerLocationResponse
#'
#' @description
#' RetailerLocationResponse Class
#'
#' @docType class
#' @title RetailerLocationResponse
#' @description RetailerLocationResponse Class
#' @format An \code{R6Class} generator object
#' @field retailerLocationId  integer [optional]
#' @field name  character [optional]
#' @field contact  \link{ContactInfoResponse} [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field active  character [optional]
#' @field favoriteId  integer [optional]
#' @field favorite  character [optional]
#' @field responsible  \link{ProfileShortResponse} [optional]
#' @field manager  \link{ProfileShortResponse} [optional]
#' @field categories  list(\link{CategoryResponse}) [optional]
#' @field filters  list(\link{FilterResponse}) [optional]
#' @field logo  \link{AssetShortResponse} [optional]
#' @field picture1  \link{AssetShortResponse} [optional]
#' @field picture2  \link{AssetShortResponse} [optional]
#' @field billableEntity  \link{BillableEntityResponse} [optional]
#' @field counts  \link{RetailerCountResponse} [optional]
#' @field retailer  \link{RetailerShortResponse} [optional]
#' @field offers  \link{ListResponse} [optional]
#' @field internalId  character [optional]
#' @field detailsHeader  character [optional]
#' @field detailsBody  character [optional]
#' @field hours  character [optional]
#' @field locationToken  character [optional]
#' @field building  character [optional]
#' @field qrCodeUrl  character [optional]
#' @field distance  numeric [optional]
#' @field googlePlaceId  character [optional]
#' @field yelpId  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RetailerLocationResponse <- R6::R6Class(
  "RetailerLocationResponse",
  public = list(
    `retailerLocationId` = NULL,
    `name` = NULL,
    `contact` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `active` = NULL,
    `favoriteId` = NULL,
    `favorite` = NULL,
    `responsible` = NULL,
    `manager` = NULL,
    `categories` = NULL,
    `filters` = NULL,
    `logo` = NULL,
    `picture1` = NULL,
    `picture2` = NULL,
    `billableEntity` = NULL,
    `counts` = NULL,
    `retailer` = NULL,
    `offers` = NULL,
    `internalId` = NULL,
    `detailsHeader` = NULL,
    `detailsBody` = NULL,
    `hours` = NULL,
    `locationToken` = NULL,
    `building` = NULL,
    `qrCodeUrl` = NULL,
    `distance` = NULL,
    `googlePlaceId` = NULL,
    `yelpId` = NULL,

    #' @description
    #' Initialize a new RetailerLocationResponse class.
    #'
    #' @param retailerLocationId retailerLocationId
    #' @param name name
    #' @param contact contact
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param active active
    #' @param favoriteId favoriteId
    #' @param favorite favorite
    #' @param responsible responsible
    #' @param manager manager
    #' @param categories categories
    #' @param filters filters
    #' @param logo logo
    #' @param picture1 picture1
    #' @param picture2 picture2
    #' @param billableEntity billableEntity
    #' @param counts counts
    #' @param retailer retailer
    #' @param offers offers
    #' @param internalId internalId
    #' @param detailsHeader detailsHeader
    #' @param detailsBody detailsBody
    #' @param hours hours
    #' @param locationToken locationToken
    #' @param building building
    #' @param qrCodeUrl qrCodeUrl
    #' @param distance distance
    #' @param googlePlaceId googlePlaceId
    #' @param yelpId yelpId
    #' @param ... Other optional arguments.
    initialize = function(`retailerLocationId` = NULL, `name` = NULL, `contact` = NULL, `latitude` = NULL, `longitude` = NULL, `active` = NULL, `favoriteId` = NULL, `favorite` = NULL, `responsible` = NULL, `manager` = NULL, `categories` = NULL, `filters` = NULL, `logo` = NULL, `picture1` = NULL, `picture2` = NULL, `billableEntity` = NULL, `counts` = NULL, `retailer` = NULL, `offers` = NULL, `internalId` = NULL, `detailsHeader` = NULL, `detailsBody` = NULL, `hours` = NULL, `locationToken` = NULL, `building` = NULL, `qrCodeUrl` = NULL, `distance` = NULL, `googlePlaceId` = NULL, `yelpId` = NULL, ...) {
      if (!is.null(`retailerLocationId`)) {
        if (!(is.numeric(`retailerLocationId`) && length(`retailerLocationId`) == 1)) {
          stop(paste("Error! Invalid data for `retailerLocationId`. Must be an integer:", `retailerLocationId`))
        }
        self$`retailerLocationId` <- `retailerLocationId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`contact`)) {
        stopifnot(R6::is.R6(`contact`))
        self$`contact` <- `contact`
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
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`favoriteId`)) {
        if (!(is.numeric(`favoriteId`) && length(`favoriteId`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteId`. Must be an integer:", `favoriteId`))
        }
        self$`favoriteId` <- `favoriteId`
      }
      if (!is.null(`favorite`)) {
        if (!(is.logical(`favorite`) && length(`favorite`) == 1)) {
          stop(paste("Error! Invalid data for `favorite`. Must be a boolean:", `favorite`))
        }
        self$`favorite` <- `favorite`
      }
      if (!is.null(`responsible`)) {
        stopifnot(R6::is.R6(`responsible`))
        self$`responsible` <- `responsible`
      }
      if (!is.null(`manager`)) {
        stopifnot(R6::is.R6(`manager`))
        self$`manager` <- `manager`
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
      if (!is.null(`billableEntity`)) {
        stopifnot(R6::is.R6(`billableEntity`))
        self$`billableEntity` <- `billableEntity`
      }
      if (!is.null(`counts`)) {
        stopifnot(R6::is.R6(`counts`))
        self$`counts` <- `counts`
      }
      if (!is.null(`retailer`)) {
        stopifnot(R6::is.R6(`retailer`))
        self$`retailer` <- `retailer`
      }
      if (!is.null(`offers`)) {
        stopifnot(R6::is.R6(`offers`))
        self$`offers` <- `offers`
      }
      if (!is.null(`internalId`)) {
        if (!(is.character(`internalId`) && length(`internalId`) == 1)) {
          stop(paste("Error! Invalid data for `internalId`. Must be a string:", `internalId`))
        }
        self$`internalId` <- `internalId`
      }
      if (!is.null(`detailsHeader`)) {
        if (!(is.character(`detailsHeader`) && length(`detailsHeader`) == 1)) {
          stop(paste("Error! Invalid data for `detailsHeader`. Must be a string:", `detailsHeader`))
        }
        self$`detailsHeader` <- `detailsHeader`
      }
      if (!is.null(`detailsBody`)) {
        if (!(is.character(`detailsBody`) && length(`detailsBody`) == 1)) {
          stop(paste("Error! Invalid data for `detailsBody`. Must be a string:", `detailsBody`))
        }
        self$`detailsBody` <- `detailsBody`
      }
      if (!is.null(`hours`)) {
        if (!(is.character(`hours`) && length(`hours`) == 1)) {
          stop(paste("Error! Invalid data for `hours`. Must be a string:", `hours`))
        }
        self$`hours` <- `hours`
      }
      if (!is.null(`locationToken`)) {
        if (!(is.character(`locationToken`) && length(`locationToken`) == 1)) {
          stop(paste("Error! Invalid data for `locationToken`. Must be a string:", `locationToken`))
        }
        self$`locationToken` <- `locationToken`
      }
      if (!is.null(`building`)) {
        if (!(is.character(`building`) && length(`building`) == 1)) {
          stop(paste("Error! Invalid data for `building`. Must be a string:", `building`))
        }
        self$`building` <- `building`
      }
      if (!is.null(`qrCodeUrl`)) {
        if (!(is.character(`qrCodeUrl`) && length(`qrCodeUrl`) == 1)) {
          stop(paste("Error! Invalid data for `qrCodeUrl`. Must be a string:", `qrCodeUrl`))
        }
        self$`qrCodeUrl` <- `qrCodeUrl`
      }
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
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
    #' @return RetailerLocationResponse as a base R list.
    #' @examples
    #' # convert array of RetailerLocationResponse (x) to a data frame
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
    #' Convert RetailerLocationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RetailerLocationResponseObject <- list()
      if (!is.null(self$`retailerLocationId`)) {
        RetailerLocationResponseObject[["retailerLocationId"]] <-
          self$`retailerLocationId`
      }
      if (!is.null(self$`name`)) {
        RetailerLocationResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`contact`)) {
        RetailerLocationResponseObject[["contact"]] <-
          self$extractSimpleType(self$`contact`)
      }
      if (!is.null(self$`latitude`)) {
        RetailerLocationResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        RetailerLocationResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`active`)) {
        RetailerLocationResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`favoriteId`)) {
        RetailerLocationResponseObject[["favoriteId"]] <-
          self$`favoriteId`
      }
      if (!is.null(self$`favorite`)) {
        RetailerLocationResponseObject[["favorite"]] <-
          self$`favorite`
      }
      if (!is.null(self$`responsible`)) {
        RetailerLocationResponseObject[["responsible"]] <-
          self$extractSimpleType(self$`responsible`)
      }
      if (!is.null(self$`manager`)) {
        RetailerLocationResponseObject[["manager"]] <-
          self$extractSimpleType(self$`manager`)
      }
      if (!is.null(self$`categories`)) {
        RetailerLocationResponseObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`filters`)) {
        RetailerLocationResponseObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`logo`)) {
        RetailerLocationResponseObject[["logo"]] <-
          self$extractSimpleType(self$`logo`)
      }
      if (!is.null(self$`picture1`)) {
        RetailerLocationResponseObject[["picture1"]] <-
          self$extractSimpleType(self$`picture1`)
      }
      if (!is.null(self$`picture2`)) {
        RetailerLocationResponseObject[["picture2"]] <-
          self$extractSimpleType(self$`picture2`)
      }
      if (!is.null(self$`billableEntity`)) {
        RetailerLocationResponseObject[["billableEntity"]] <-
          self$extractSimpleType(self$`billableEntity`)
      }
      if (!is.null(self$`counts`)) {
        RetailerLocationResponseObject[["counts"]] <-
          self$extractSimpleType(self$`counts`)
      }
      if (!is.null(self$`retailer`)) {
        RetailerLocationResponseObject[["retailer"]] <-
          self$extractSimpleType(self$`retailer`)
      }
      if (!is.null(self$`offers`)) {
        RetailerLocationResponseObject[["offers"]] <-
          self$extractSimpleType(self$`offers`)
      }
      if (!is.null(self$`internalId`)) {
        RetailerLocationResponseObject[["internalId"]] <-
          self$`internalId`
      }
      if (!is.null(self$`detailsHeader`)) {
        RetailerLocationResponseObject[["detailsHeader"]] <-
          self$`detailsHeader`
      }
      if (!is.null(self$`detailsBody`)) {
        RetailerLocationResponseObject[["detailsBody"]] <-
          self$`detailsBody`
      }
      if (!is.null(self$`hours`)) {
        RetailerLocationResponseObject[["hours"]] <-
          self$`hours`
      }
      if (!is.null(self$`locationToken`)) {
        RetailerLocationResponseObject[["locationToken"]] <-
          self$`locationToken`
      }
      if (!is.null(self$`building`)) {
        RetailerLocationResponseObject[["building"]] <-
          self$`building`
      }
      if (!is.null(self$`qrCodeUrl`)) {
        RetailerLocationResponseObject[["qrCodeUrl"]] <-
          self$`qrCodeUrl`
      }
      if (!is.null(self$`distance`)) {
        RetailerLocationResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`googlePlaceId`)) {
        RetailerLocationResponseObject[["googlePlaceId"]] <-
          self$`googlePlaceId`
      }
      if (!is.null(self$`yelpId`)) {
        RetailerLocationResponseObject[["yelpId"]] <-
          self$`yelpId`
      }
      return(RetailerLocationResponseObject)
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
    #' Deserialize JSON string into an instance of RetailerLocationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerLocationResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`retailerLocationId`)) {
        self$`retailerLocationId` <- this_object$`retailerLocationId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`contact`)) {
        `contact_object` <- ContactInfoResponse$new()
        `contact_object`$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
        self$`contact` <- `contact_object`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`favoriteId`)) {
        self$`favoriteId` <- this_object$`favoriteId`
      }
      if (!is.null(this_object$`favorite`)) {
        self$`favorite` <- this_object$`favorite`
      }
      if (!is.null(this_object$`responsible`)) {
        `responsible_object` <- ProfileShortResponse$new()
        `responsible_object`$fromJSON(jsonlite::toJSON(this_object$`responsible`, auto_unbox = TRUE, digits = NA))
        self$`responsible` <- `responsible_object`
      }
      if (!is.null(this_object$`manager`)) {
        `manager_object` <- ProfileShortResponse$new()
        `manager_object`$fromJSON(jsonlite::toJSON(this_object$`manager`, auto_unbox = TRUE, digits = NA))
        self$`manager` <- `manager_object`
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`filters`)) {
        self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[FilterResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`logo`)) {
        `logo_object` <- AssetShortResponse$new()
        `logo_object`$fromJSON(jsonlite::toJSON(this_object$`logo`, auto_unbox = TRUE, digits = NA))
        self$`logo` <- `logo_object`
      }
      if (!is.null(this_object$`picture1`)) {
        `picture1_object` <- AssetShortResponse$new()
        `picture1_object`$fromJSON(jsonlite::toJSON(this_object$`picture1`, auto_unbox = TRUE, digits = NA))
        self$`picture1` <- `picture1_object`
      }
      if (!is.null(this_object$`picture2`)) {
        `picture2_object` <- AssetShortResponse$new()
        `picture2_object`$fromJSON(jsonlite::toJSON(this_object$`picture2`, auto_unbox = TRUE, digits = NA))
        self$`picture2` <- `picture2_object`
      }
      if (!is.null(this_object$`billableEntity`)) {
        `billableentity_object` <- BillableEntityResponse$new()
        `billableentity_object`$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
        self$`billableEntity` <- `billableentity_object`
      }
      if (!is.null(this_object$`counts`)) {
        `counts_object` <- RetailerCountResponse$new()
        `counts_object`$fromJSON(jsonlite::toJSON(this_object$`counts`, auto_unbox = TRUE, digits = NA))
        self$`counts` <- `counts_object`
      }
      if (!is.null(this_object$`retailer`)) {
        `retailer_object` <- RetailerShortResponse$new()
        `retailer_object`$fromJSON(jsonlite::toJSON(this_object$`retailer`, auto_unbox = TRUE, digits = NA))
        self$`retailer` <- `retailer_object`
      }
      if (!is.null(this_object$`offers`)) {
        `offers_object` <- ListResponse$new()
        `offers_object`$fromJSON(jsonlite::toJSON(this_object$`offers`, auto_unbox = TRUE, digits = NA))
        self$`offers` <- `offers_object`
      }
      if (!is.null(this_object$`internalId`)) {
        self$`internalId` <- this_object$`internalId`
      }
      if (!is.null(this_object$`detailsHeader`)) {
        self$`detailsHeader` <- this_object$`detailsHeader`
      }
      if (!is.null(this_object$`detailsBody`)) {
        self$`detailsBody` <- this_object$`detailsBody`
      }
      if (!is.null(this_object$`hours`)) {
        self$`hours` <- this_object$`hours`
      }
      if (!is.null(this_object$`locationToken`)) {
        self$`locationToken` <- this_object$`locationToken`
      }
      if (!is.null(this_object$`building`)) {
        self$`building` <- this_object$`building`
      }
      if (!is.null(this_object$`qrCodeUrl`)) {
        self$`qrCodeUrl` <- this_object$`qrCodeUrl`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`googlePlaceId`)) {
        self$`googlePlaceId` <- this_object$`googlePlaceId`
      }
      if (!is.null(this_object$`yelpId`)) {
        self$`yelpId` <- this_object$`yelpId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RetailerLocationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RetailerLocationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RetailerLocationResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`retailerLocationId` <- this_object$`retailerLocationId`
      self$`name` <- this_object$`name`
      self$`contact` <- ContactInfoResponse$new()$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`active` <- this_object$`active`
      self$`favoriteId` <- this_object$`favoriteId`
      self$`favorite` <- this_object$`favorite`
      self$`responsible` <- ProfileShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`responsible`, auto_unbox = TRUE, digits = NA))
      self$`manager` <- ProfileShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`manager`, auto_unbox = TRUE, digits = NA))
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[FilterResponse]", loadNamespace("openapi"))
      self$`logo` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`logo`, auto_unbox = TRUE, digits = NA))
      self$`picture1` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`picture1`, auto_unbox = TRUE, digits = NA))
      self$`picture2` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`picture2`, auto_unbox = TRUE, digits = NA))
      self$`billableEntity` <- BillableEntityResponse$new()$fromJSON(jsonlite::toJSON(this_object$`billableEntity`, auto_unbox = TRUE, digits = NA))
      self$`counts` <- RetailerCountResponse$new()$fromJSON(jsonlite::toJSON(this_object$`counts`, auto_unbox = TRUE, digits = NA))
      self$`retailer` <- RetailerShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`retailer`, auto_unbox = TRUE, digits = NA))
      self$`offers` <- ListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`offers`, auto_unbox = TRUE, digits = NA))
      self$`internalId` <- this_object$`internalId`
      self$`detailsHeader` <- this_object$`detailsHeader`
      self$`detailsBody` <- this_object$`detailsBody`
      self$`hours` <- this_object$`hours`
      self$`locationToken` <- this_object$`locationToken`
      self$`building` <- this_object$`building`
      self$`qrCodeUrl` <- this_object$`qrCodeUrl`
      self$`distance` <- this_object$`distance`
      self$`googlePlaceId` <- this_object$`googlePlaceId`
      self$`yelpId` <- this_object$`yelpId`
      self
    },

    #' @description
    #' Validate JSON input with respect to RetailerLocationResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RetailerLocationResponse
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
# RetailerLocationResponse$unlock()
#
## Below is an example to define the print function
# RetailerLocationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RetailerLocationResponse$lock()

