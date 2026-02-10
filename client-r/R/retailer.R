#' Create a new Retailer
#'
#' @description
#' Retailer Class
#'
#' @docType class
#' @title Retailer
#' @description Retailer Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field name  character [optional]
#' @field responsible  \link{Account} [optional]
#' @field manager  \link{Account} [optional]
#' @field detailsHeader  character [optional]
#' @field detailsBody  character [optional]
#' @field detailsLineLeft1  character [optional]
#' @field detailsLineLeft2  character [optional]
#' @field detailsLineRight1  character [optional]
#' @field metaDescription  character [optional]
#' @field directions  character [optional]
#' @field hours  character [optional]
#' @field homePhone  character [optional]
#' @field cellPhone  character [optional]
#' @field cellCarrier  \link{CellCarrier} [optional]
#' @field businessPhone  character [optional]
#' @field businessPhoneExt  character [optional]
#' @field faxNumber  character [optional]
#' @field timeZone  character [optional]
#' @field utcOffset  character [optional]
#' @field code501c3  character [optional]
#' @field emailAddress  character [optional]
#' @field address  \link{Address} [optional]
#' @field web  character [optional]
#' @field featured  character [optional]
#' @field listed  character [optional]
#' @field categories  list(\link{Category}) [optional]
#' @field territory  \link{Territory} [optional]
#' @field locations  list(\link{RetailerLocation}) [optional]
#' @field yipitId  integer [optional]
#' @field facebookUrl  character [optional]
#' @field twitterUrl  character [optional]
#' @field visibility  character [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
#' @field appKey  character [optional]
#' @field categoryTree  character [optional]
#' @field filterTree  character [optional]
#' @field billableId  integer [optional]
#' @field subType  character [optional]
#' @field contentName  character [optional]
#' @field owner  \link{Account} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Retailer <- R6::R6Class(
  "Retailer",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `name` = NULL,
    `responsible` = NULL,
    `manager` = NULL,
    `detailsHeader` = NULL,
    `detailsBody` = NULL,
    `detailsLineLeft1` = NULL,
    `detailsLineLeft2` = NULL,
    `detailsLineRight1` = NULL,
    `metaDescription` = NULL,
    `directions` = NULL,
    `hours` = NULL,
    `homePhone` = NULL,
    `cellPhone` = NULL,
    `cellCarrier` = NULL,
    `businessPhone` = NULL,
    `businessPhoneExt` = NULL,
    `faxNumber` = NULL,
    `timeZone` = NULL,
    `utcOffset` = NULL,
    `code501c3` = NULL,
    `emailAddress` = NULL,
    `address` = NULL,
    `web` = NULL,
    `featured` = NULL,
    `listed` = NULL,
    `categories` = NULL,
    `territory` = NULL,
    `locations` = NULL,
    `yipitId` = NULL,
    `facebookUrl` = NULL,
    `twitterUrl` = NULL,
    `visibility` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
    `appKey` = NULL,
    `categoryTree` = NULL,
    `filterTree` = NULL,
    `billableId` = NULL,
    `subType` = NULL,
    `contentName` = NULL,
    `owner` = NULL,

    #' @description
    #' Initialize a new Retailer class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param name name
    #' @param responsible responsible
    #' @param manager manager
    #' @param detailsHeader detailsHeader
    #' @param detailsBody detailsBody
    #' @param detailsLineLeft1 detailsLineLeft1
    #' @param detailsLineLeft2 detailsLineLeft2
    #' @param detailsLineRight1 detailsLineRight1
    #' @param metaDescription metaDescription
    #' @param directions directions
    #' @param hours hours
    #' @param homePhone homePhone
    #' @param cellPhone cellPhone
    #' @param cellCarrier cellCarrier
    #' @param businessPhone businessPhone
    #' @param businessPhoneExt businessPhoneExt
    #' @param faxNumber faxNumber
    #' @param timeZone timeZone
    #' @param utcOffset utcOffset
    #' @param code501c3 code501c3
    #' @param emailAddress emailAddress
    #' @param address address
    #' @param web web
    #' @param featured featured
    #' @param listed listed
    #' @param categories categories
    #' @param territory territory
    #' @param locations locations
    #' @param yipitId yipitId
    #' @param facebookUrl facebookUrl
    #' @param twitterUrl twitterUrl
    #' @param visibility visibility
    #' @param notes notes
    #' @param noteCount noteCount
    #' @param appKey appKey
    #' @param categoryTree categoryTree
    #' @param filterTree filterTree
    #' @param billableId billableId
    #' @param subType subType
    #' @param contentName contentName
    #' @param owner owner
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `name` = NULL, `responsible` = NULL, `manager` = NULL, `detailsHeader` = NULL, `detailsBody` = NULL, `detailsLineLeft1` = NULL, `detailsLineLeft2` = NULL, `detailsLineRight1` = NULL, `metaDescription` = NULL, `directions` = NULL, `hours` = NULL, `homePhone` = NULL, `cellPhone` = NULL, `cellCarrier` = NULL, `businessPhone` = NULL, `businessPhoneExt` = NULL, `faxNumber` = NULL, `timeZone` = NULL, `utcOffset` = NULL, `code501c3` = NULL, `emailAddress` = NULL, `address` = NULL, `web` = NULL, `featured` = NULL, `listed` = NULL, `categories` = NULL, `territory` = NULL, `locations` = NULL, `yipitId` = NULL, `facebookUrl` = NULL, `twitterUrl` = NULL, `visibility` = NULL, `notes` = NULL, `noteCount` = NULL, `appKey` = NULL, `categoryTree` = NULL, `filterTree` = NULL, `billableId` = NULL, `subType` = NULL, `contentName` = NULL, `owner` = NULL, ...) {
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
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`responsible`)) {
        stopifnot(R6::is.R6(`responsible`))
        self$`responsible` <- `responsible`
      }
      if (!is.null(`manager`)) {
        stopifnot(R6::is.R6(`manager`))
        self$`manager` <- `manager`
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
      if (!is.null(`detailsLineLeft1`)) {
        if (!(is.character(`detailsLineLeft1`) && length(`detailsLineLeft1`) == 1)) {
          stop(paste("Error! Invalid data for `detailsLineLeft1`. Must be a string:", `detailsLineLeft1`))
        }
        self$`detailsLineLeft1` <- `detailsLineLeft1`
      }
      if (!is.null(`detailsLineLeft2`)) {
        if (!(is.character(`detailsLineLeft2`) && length(`detailsLineLeft2`) == 1)) {
          stop(paste("Error! Invalid data for `detailsLineLeft2`. Must be a string:", `detailsLineLeft2`))
        }
        self$`detailsLineLeft2` <- `detailsLineLeft2`
      }
      if (!is.null(`detailsLineRight1`)) {
        if (!(is.character(`detailsLineRight1`) && length(`detailsLineRight1`) == 1)) {
          stop(paste("Error! Invalid data for `detailsLineRight1`. Must be a string:", `detailsLineRight1`))
        }
        self$`detailsLineRight1` <- `detailsLineRight1`
      }
      if (!is.null(`metaDescription`)) {
        if (!(is.character(`metaDescription`) && length(`metaDescription`) == 1)) {
          stop(paste("Error! Invalid data for `metaDescription`. Must be a string:", `metaDescription`))
        }
        self$`metaDescription` <- `metaDescription`
      }
      if (!is.null(`directions`)) {
        if (!(is.character(`directions`) && length(`directions`) == 1)) {
          stop(paste("Error! Invalid data for `directions`. Must be a string:", `directions`))
        }
        self$`directions` <- `directions`
      }
      if (!is.null(`hours`)) {
        if (!(is.character(`hours`) && length(`hours`) == 1)) {
          stop(paste("Error! Invalid data for `hours`. Must be a string:", `hours`))
        }
        self$`hours` <- `hours`
      }
      if (!is.null(`homePhone`)) {
        if (!(is.character(`homePhone`) && length(`homePhone`) == 1)) {
          stop(paste("Error! Invalid data for `homePhone`. Must be a string:", `homePhone`))
        }
        self$`homePhone` <- `homePhone`
      }
      if (!is.null(`cellPhone`)) {
        if (!(is.character(`cellPhone`) && length(`cellPhone`) == 1)) {
          stop(paste("Error! Invalid data for `cellPhone`. Must be a string:", `cellPhone`))
        }
        self$`cellPhone` <- `cellPhone`
      }
      if (!is.null(`cellCarrier`)) {
        stopifnot(R6::is.R6(`cellCarrier`))
        self$`cellCarrier` <- `cellCarrier`
      }
      if (!is.null(`businessPhone`)) {
        if (!(is.character(`businessPhone`) && length(`businessPhone`) == 1)) {
          stop(paste("Error! Invalid data for `businessPhone`. Must be a string:", `businessPhone`))
        }
        self$`businessPhone` <- `businessPhone`
      }
      if (!is.null(`businessPhoneExt`)) {
        if (!(is.character(`businessPhoneExt`) && length(`businessPhoneExt`) == 1)) {
          stop(paste("Error! Invalid data for `businessPhoneExt`. Must be a string:", `businessPhoneExt`))
        }
        self$`businessPhoneExt` <- `businessPhoneExt`
      }
      if (!is.null(`faxNumber`)) {
        if (!(is.character(`faxNumber`) && length(`faxNumber`) == 1)) {
          stop(paste("Error! Invalid data for `faxNumber`. Must be a string:", `faxNumber`))
        }
        self$`faxNumber` <- `faxNumber`
      }
      if (!is.null(`timeZone`)) {
        if (!(is.character(`timeZone`) && length(`timeZone`) == 1)) {
          stop(paste("Error! Invalid data for `timeZone`. Must be a string:", `timeZone`))
        }
        self$`timeZone` <- `timeZone`
      }
      if (!is.null(`utcOffset`)) {
        if (!(is.character(`utcOffset`) && length(`utcOffset`) == 1)) {
          stop(paste("Error! Invalid data for `utcOffset`. Must be a string:", `utcOffset`))
        }
        self$`utcOffset` <- `utcOffset`
      }
      if (!is.null(`code501c3`)) {
        if (!(is.character(`code501c3`) && length(`code501c3`) == 1)) {
          stop(paste("Error! Invalid data for `code501c3`. Must be a string:", `code501c3`))
        }
        self$`code501c3` <- `code501c3`
      }
      if (!is.null(`emailAddress`)) {
        if (!(is.character(`emailAddress`) && length(`emailAddress`) == 1)) {
          stop(paste("Error! Invalid data for `emailAddress`. Must be a string:", `emailAddress`))
        }
        self$`emailAddress` <- `emailAddress`
      }
      if (!is.null(`address`)) {
        stopifnot(R6::is.R6(`address`))
        self$`address` <- `address`
      }
      if (!is.null(`web`)) {
        if (!(is.character(`web`) && length(`web`) == 1)) {
          stop(paste("Error! Invalid data for `web`. Must be a string:", `web`))
        }
        self$`web` <- `web`
      }
      if (!is.null(`featured`)) {
        if (!(is.logical(`featured`) && length(`featured`) == 1)) {
          stop(paste("Error! Invalid data for `featured`. Must be a boolean:", `featured`))
        }
        self$`featured` <- `featured`
      }
      if (!is.null(`listed`)) {
        if (!(is.logical(`listed`) && length(`listed`) == 1)) {
          stop(paste("Error! Invalid data for `listed`. Must be a boolean:", `listed`))
        }
        self$`listed` <- `listed`
      }
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(R6::is.R6(x)))
        self$`categories` <- `categories`
      }
      if (!is.null(`territory`)) {
        stopifnot(R6::is.R6(`territory`))
        self$`territory` <- `territory`
      }
      if (!is.null(`locations`)) {
        stopifnot(is.vector(`locations`), length(`locations`) != 0)
        sapply(`locations`, function(x) stopifnot(R6::is.R6(x)))
        self$`locations` <- `locations`
      }
      if (!is.null(`yipitId`)) {
        if (!(is.numeric(`yipitId`) && length(`yipitId`) == 1)) {
          stop(paste("Error! Invalid data for `yipitId`. Must be an integer:", `yipitId`))
        }
        self$`yipitId` <- `yipitId`
      }
      if (!is.null(`facebookUrl`)) {
        if (!(is.character(`facebookUrl`) && length(`facebookUrl`) == 1)) {
          stop(paste("Error! Invalid data for `facebookUrl`. Must be a string:", `facebookUrl`))
        }
        self$`facebookUrl` <- `facebookUrl`
      }
      if (!is.null(`twitterUrl`)) {
        if (!(is.character(`twitterUrl`) && length(`twitterUrl`) == 1)) {
          stop(paste("Error! Invalid data for `twitterUrl`. Must be a string:", `twitterUrl`))
        }
        self$`twitterUrl` <- `twitterUrl`
      }
      if (!is.null(`visibility`)) {
        if (!(`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", `visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        if (!(is.character(`visibility`) && length(`visibility`) == 1)) {
          stop(paste("Error! Invalid data for `visibility`. Must be a string:", `visibility`))
        }
        self$`visibility` <- `visibility`
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
    #' @return Retailer as a base R list.
    #' @examples
    #' # convert array of Retailer (x) to a data frame
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
    #' Convert Retailer to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RetailerObject <- list()
      if (!is.null(self$`id`)) {
        RetailerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        RetailerObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        RetailerObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        RetailerObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        RetailerObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        RetailerObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`name`)) {
        RetailerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`responsible`)) {
        RetailerObject[["responsible"]] <-
          self$extractSimpleType(self$`responsible`)
      }
      if (!is.null(self$`manager`)) {
        RetailerObject[["manager"]] <-
          self$extractSimpleType(self$`manager`)
      }
      if (!is.null(self$`detailsHeader`)) {
        RetailerObject[["detailsHeader"]] <-
          self$`detailsHeader`
      }
      if (!is.null(self$`detailsBody`)) {
        RetailerObject[["detailsBody"]] <-
          self$`detailsBody`
      }
      if (!is.null(self$`detailsLineLeft1`)) {
        RetailerObject[["detailsLineLeft1"]] <-
          self$`detailsLineLeft1`
      }
      if (!is.null(self$`detailsLineLeft2`)) {
        RetailerObject[["detailsLineLeft2"]] <-
          self$`detailsLineLeft2`
      }
      if (!is.null(self$`detailsLineRight1`)) {
        RetailerObject[["detailsLineRight1"]] <-
          self$`detailsLineRight1`
      }
      if (!is.null(self$`metaDescription`)) {
        RetailerObject[["metaDescription"]] <-
          self$`metaDescription`
      }
      if (!is.null(self$`directions`)) {
        RetailerObject[["directions"]] <-
          self$`directions`
      }
      if (!is.null(self$`hours`)) {
        RetailerObject[["hours"]] <-
          self$`hours`
      }
      if (!is.null(self$`homePhone`)) {
        RetailerObject[["homePhone"]] <-
          self$`homePhone`
      }
      if (!is.null(self$`cellPhone`)) {
        RetailerObject[["cellPhone"]] <-
          self$`cellPhone`
      }
      if (!is.null(self$`cellCarrier`)) {
        RetailerObject[["cellCarrier"]] <-
          self$extractSimpleType(self$`cellCarrier`)
      }
      if (!is.null(self$`businessPhone`)) {
        RetailerObject[["businessPhone"]] <-
          self$`businessPhone`
      }
      if (!is.null(self$`businessPhoneExt`)) {
        RetailerObject[["businessPhoneExt"]] <-
          self$`businessPhoneExt`
      }
      if (!is.null(self$`faxNumber`)) {
        RetailerObject[["faxNumber"]] <-
          self$`faxNumber`
      }
      if (!is.null(self$`timeZone`)) {
        RetailerObject[["timeZone"]] <-
          self$`timeZone`
      }
      if (!is.null(self$`utcOffset`)) {
        RetailerObject[["utcOffset"]] <-
          self$`utcOffset`
      }
      if (!is.null(self$`code501c3`)) {
        RetailerObject[["code501c3"]] <-
          self$`code501c3`
      }
      if (!is.null(self$`emailAddress`)) {
        RetailerObject[["emailAddress"]] <-
          self$`emailAddress`
      }
      if (!is.null(self$`address`)) {
        RetailerObject[["address"]] <-
          self$extractSimpleType(self$`address`)
      }
      if (!is.null(self$`web`)) {
        RetailerObject[["web"]] <-
          self$`web`
      }
      if (!is.null(self$`featured`)) {
        RetailerObject[["featured"]] <-
          self$`featured`
      }
      if (!is.null(self$`listed`)) {
        RetailerObject[["listed"]] <-
          self$`listed`
      }
      if (!is.null(self$`categories`)) {
        RetailerObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`territory`)) {
        RetailerObject[["territory"]] <-
          self$extractSimpleType(self$`territory`)
      }
      if (!is.null(self$`locations`)) {
        RetailerObject[["locations"]] <-
          self$extractSimpleType(self$`locations`)
      }
      if (!is.null(self$`yipitId`)) {
        RetailerObject[["yipitId"]] <-
          self$`yipitId`
      }
      if (!is.null(self$`facebookUrl`)) {
        RetailerObject[["facebookUrl"]] <-
          self$`facebookUrl`
      }
      if (!is.null(self$`twitterUrl`)) {
        RetailerObject[["twitterUrl"]] <-
          self$`twitterUrl`
      }
      if (!is.null(self$`visibility`)) {
        RetailerObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`notes`)) {
        RetailerObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        RetailerObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`appKey`)) {
        RetailerObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`categoryTree`)) {
        RetailerObject[["categoryTree"]] <-
          self$`categoryTree`
      }
      if (!is.null(self$`filterTree`)) {
        RetailerObject[["filterTree"]] <-
          self$`filterTree`
      }
      if (!is.null(self$`billableId`)) {
        RetailerObject[["billableId"]] <-
          self$`billableId`
      }
      if (!is.null(self$`subType`)) {
        RetailerObject[["subType"]] <-
          self$`subType`
      }
      if (!is.null(self$`contentName`)) {
        RetailerObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`owner`)) {
        RetailerObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      return(RetailerObject)
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
    #' Deserialize JSON string into an instance of Retailer
    #'
    #' @param input_json the JSON input
    #' @return the instance of Retailer
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`responsible`)) {
        `responsible_object` <- Account$new()
        `responsible_object`$fromJSON(jsonlite::toJSON(this_object$`responsible`, auto_unbox = TRUE, digits = NA))
        self$`responsible` <- `responsible_object`
      }
      if (!is.null(this_object$`manager`)) {
        `manager_object` <- Account$new()
        `manager_object`$fromJSON(jsonlite::toJSON(this_object$`manager`, auto_unbox = TRUE, digits = NA))
        self$`manager` <- `manager_object`
      }
      if (!is.null(this_object$`detailsHeader`)) {
        self$`detailsHeader` <- this_object$`detailsHeader`
      }
      if (!is.null(this_object$`detailsBody`)) {
        self$`detailsBody` <- this_object$`detailsBody`
      }
      if (!is.null(this_object$`detailsLineLeft1`)) {
        self$`detailsLineLeft1` <- this_object$`detailsLineLeft1`
      }
      if (!is.null(this_object$`detailsLineLeft2`)) {
        self$`detailsLineLeft2` <- this_object$`detailsLineLeft2`
      }
      if (!is.null(this_object$`detailsLineRight1`)) {
        self$`detailsLineRight1` <- this_object$`detailsLineRight1`
      }
      if (!is.null(this_object$`metaDescription`)) {
        self$`metaDescription` <- this_object$`metaDescription`
      }
      if (!is.null(this_object$`directions`)) {
        self$`directions` <- this_object$`directions`
      }
      if (!is.null(this_object$`hours`)) {
        self$`hours` <- this_object$`hours`
      }
      if (!is.null(this_object$`homePhone`)) {
        self$`homePhone` <- this_object$`homePhone`
      }
      if (!is.null(this_object$`cellPhone`)) {
        self$`cellPhone` <- this_object$`cellPhone`
      }
      if (!is.null(this_object$`cellCarrier`)) {
        `cellcarrier_object` <- CellCarrier$new()
        `cellcarrier_object`$fromJSON(jsonlite::toJSON(this_object$`cellCarrier`, auto_unbox = TRUE, digits = NA))
        self$`cellCarrier` <- `cellcarrier_object`
      }
      if (!is.null(this_object$`businessPhone`)) {
        self$`businessPhone` <- this_object$`businessPhone`
      }
      if (!is.null(this_object$`businessPhoneExt`)) {
        self$`businessPhoneExt` <- this_object$`businessPhoneExt`
      }
      if (!is.null(this_object$`faxNumber`)) {
        self$`faxNumber` <- this_object$`faxNumber`
      }
      if (!is.null(this_object$`timeZone`)) {
        self$`timeZone` <- this_object$`timeZone`
      }
      if (!is.null(this_object$`utcOffset`)) {
        self$`utcOffset` <- this_object$`utcOffset`
      }
      if (!is.null(this_object$`code501c3`)) {
        self$`code501c3` <- this_object$`code501c3`
      }
      if (!is.null(this_object$`emailAddress`)) {
        self$`emailAddress` <- this_object$`emailAddress`
      }
      if (!is.null(this_object$`address`)) {
        `address_object` <- Address$new()
        `address_object`$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
        self$`address` <- `address_object`
      }
      if (!is.null(this_object$`web`)) {
        self$`web` <- this_object$`web`
      }
      if (!is.null(this_object$`featured`)) {
        self$`featured` <- this_object$`featured`
      }
      if (!is.null(this_object$`listed`)) {
        self$`listed` <- this_object$`listed`
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`territory`)) {
        `territory_object` <- Territory$new()
        `territory_object`$fromJSON(jsonlite::toJSON(this_object$`territory`, auto_unbox = TRUE, digits = NA))
        self$`territory` <- `territory_object`
      }
      if (!is.null(this_object$`locations`)) {
        self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[RetailerLocation]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`yipitId`)) {
        self$`yipitId` <- this_object$`yipitId`
      }
      if (!is.null(this_object$`facebookUrl`)) {
        self$`facebookUrl` <- this_object$`facebookUrl`
      }
      if (!is.null(this_object$`twitterUrl`)) {
        self$`twitterUrl` <- this_object$`twitterUrl`
      }
      if (!is.null(this_object$`visibility`)) {
        if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Retailer in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Retailer
    #'
    #' @param input_json the JSON input
    #' @return the instance of Retailer
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`name` <- this_object$`name`
      self$`responsible` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`responsible`, auto_unbox = TRUE, digits = NA))
      self$`manager` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`manager`, auto_unbox = TRUE, digits = NA))
      self$`detailsHeader` <- this_object$`detailsHeader`
      self$`detailsBody` <- this_object$`detailsBody`
      self$`detailsLineLeft1` <- this_object$`detailsLineLeft1`
      self$`detailsLineLeft2` <- this_object$`detailsLineLeft2`
      self$`detailsLineRight1` <- this_object$`detailsLineRight1`
      self$`metaDescription` <- this_object$`metaDescription`
      self$`directions` <- this_object$`directions`
      self$`hours` <- this_object$`hours`
      self$`homePhone` <- this_object$`homePhone`
      self$`cellPhone` <- this_object$`cellPhone`
      self$`cellCarrier` <- CellCarrier$new()$fromJSON(jsonlite::toJSON(this_object$`cellCarrier`, auto_unbox = TRUE, digits = NA))
      self$`businessPhone` <- this_object$`businessPhone`
      self$`businessPhoneExt` <- this_object$`businessPhoneExt`
      self$`faxNumber` <- this_object$`faxNumber`
      self$`timeZone` <- this_object$`timeZone`
      self$`utcOffset` <- this_object$`utcOffset`
      self$`code501c3` <- this_object$`code501c3`
      self$`emailAddress` <- this_object$`emailAddress`
      self$`address` <- Address$new()$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
      self$`web` <- this_object$`web`
      self$`featured` <- this_object$`featured`
      self$`listed` <- this_object$`listed`
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[Category]", loadNamespace("openapi"))
      self$`territory` <- Territory$new()$fromJSON(jsonlite::toJSON(this_object$`territory`, auto_unbox = TRUE, digits = NA))
      self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[RetailerLocation]", loadNamespace("openapi"))
      self$`yipitId` <- this_object$`yipitId`
      self$`facebookUrl` <- this_object$`facebookUrl`
      self$`twitterUrl` <- this_object$`twitterUrl`
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
      self$`appKey` <- this_object$`appKey`
      self$`categoryTree` <- this_object$`categoryTree`
      self$`filterTree` <- this_object$`filterTree`
      self$`billableId` <- this_object$`billableId`
      self$`subType` <- this_object$`subType`
      self$`contentName` <- this_object$`contentName`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Retailer and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Retailer
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
# Retailer$unlock()
#
## Below is an example to define the print function
# Retailer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Retailer$lock()

