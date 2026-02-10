#' Create a new Location
#'
#' @description
#' Location Class
#'
#' @docType class
#' @title Location
#' @description Location Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field name  character [optional]
#' @field territory  \link{Territory} [optional]
#' @field hub  \link{ServiceHub} [optional]
#' @field picture  \link{Asset} [optional]
#' @field notes  list(\link{Note}) [optional]
#' @field noteCount  integer [optional]
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
#' @field program  \link{Program} [optional]
#' @field visibility  character [optional]
#' @field groupingId  character [optional]
#' @field destination  character [optional]
#' @field dockingTime  integer [optional]
#' @field usageCount  integer [optional]
#' @field timeFramesAllowed  character [optional]
#' @field likes  list(\link{YayOrNay}) [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field ownerDisplay  character [optional]
#' @field contentName  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Location <- R6::R6Class(
  "Location",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `name` = NULL,
    `territory` = NULL,
    `hub` = NULL,
    `picture` = NULL,
    `notes` = NULL,
    `noteCount` = NULL,
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
    `program` = NULL,
    `visibility` = NULL,
    `groupingId` = NULL,
    `destination` = NULL,
    `dockingTime` = NULL,
    `usageCount` = NULL,
    `timeFramesAllowed` = NULL,
    `likes` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `ownerDisplay` = NULL,
    `contentName` = NULL,

    #' @description
    #' Initialize a new Location class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param name name
    #' @param territory territory
    #' @param hub hub
    #' @param picture picture
    #' @param notes notes
    #' @param noteCount noteCount
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
    #' @param program program
    #' @param visibility visibility
    #' @param groupingId groupingId
    #' @param destination destination
    #' @param dockingTime dockingTime
    #' @param usageCount usageCount
    #' @param timeFramesAllowed timeFramesAllowed
    #' @param likes likes
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param ownerDisplay ownerDisplay
    #' @param contentName contentName
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `name` = NULL, `territory` = NULL, `hub` = NULL, `picture` = NULL, `notes` = NULL, `noteCount` = NULL, `homePhone` = NULL, `cellPhone` = NULL, `cellCarrier` = NULL, `businessPhone` = NULL, `businessPhoneExt` = NULL, `faxNumber` = NULL, `timeZone` = NULL, `utcOffset` = NULL, `code501c3` = NULL, `emailAddress` = NULL, `address` = NULL, `web` = NULL, `program` = NULL, `visibility` = NULL, `groupingId` = NULL, `destination` = NULL, `dockingTime` = NULL, `usageCount` = NULL, `timeFramesAllowed` = NULL, `likes` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `ownerDisplay` = NULL, `contentName` = NULL, ...) {
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
      if (!is.null(`territory`)) {
        stopifnot(R6::is.R6(`territory`))
        self$`territory` <- `territory`
      }
      if (!is.null(`hub`)) {
        stopifnot(R6::is.R6(`hub`))
        self$`hub` <- `hub`
      }
      if (!is.null(`picture`)) {
        stopifnot(R6::is.R6(`picture`))
        self$`picture` <- `picture`
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
      if (!is.null(`program`)) {
        stopifnot(R6::is.R6(`program`))
        self$`program` <- `program`
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
      if (!is.null(`groupingId`)) {
        if (!(is.character(`groupingId`) && length(`groupingId`) == 1)) {
          stop(paste("Error! Invalid data for `groupingId`. Must be a string:", `groupingId`))
        }
        self$`groupingId` <- `groupingId`
      }
      if (!is.null(`destination`)) {
        if (!(is.logical(`destination`) && length(`destination`) == 1)) {
          stop(paste("Error! Invalid data for `destination`. Must be a boolean:", `destination`))
        }
        self$`destination` <- `destination`
      }
      if (!is.null(`dockingTime`)) {
        if (!(is.numeric(`dockingTime`) && length(`dockingTime`) == 1)) {
          stop(paste("Error! Invalid data for `dockingTime`. Must be an integer:", `dockingTime`))
        }
        self$`dockingTime` <- `dockingTime`
      }
      if (!is.null(`usageCount`)) {
        if (!(is.numeric(`usageCount`) && length(`usageCount`) == 1)) {
          stop(paste("Error! Invalid data for `usageCount`. Must be an integer:", `usageCount`))
        }
        self$`usageCount` <- `usageCount`
      }
      if (!is.null(`timeFramesAllowed`)) {
        if (!(is.character(`timeFramesAllowed`) && length(`timeFramesAllowed`) == 1)) {
          stop(paste("Error! Invalid data for `timeFramesAllowed`. Must be a string:", `timeFramesAllowed`))
        }
        self$`timeFramesAllowed` <- `timeFramesAllowed`
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
      if (!is.null(`ownerDisplay`)) {
        if (!(is.character(`ownerDisplay`) && length(`ownerDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `ownerDisplay`. Must be a string:", `ownerDisplay`))
        }
        self$`ownerDisplay` <- `ownerDisplay`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
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
    #' @return Location as a base R list.
    #' @examples
    #' # convert array of Location (x) to a data frame
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
    #' Convert Location to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LocationObject <- list()
      if (!is.null(self$`id`)) {
        LocationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        LocationObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        LocationObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        LocationObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        LocationObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        LocationObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`name`)) {
        LocationObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`territory`)) {
        LocationObject[["territory"]] <-
          self$extractSimpleType(self$`territory`)
      }
      if (!is.null(self$`hub`)) {
        LocationObject[["hub"]] <-
          self$extractSimpleType(self$`hub`)
      }
      if (!is.null(self$`picture`)) {
        LocationObject[["picture"]] <-
          self$extractSimpleType(self$`picture`)
      }
      if (!is.null(self$`notes`)) {
        LocationObject[["notes"]] <-
          self$extractSimpleType(self$`notes`)
      }
      if (!is.null(self$`noteCount`)) {
        LocationObject[["noteCount"]] <-
          self$`noteCount`
      }
      if (!is.null(self$`homePhone`)) {
        LocationObject[["homePhone"]] <-
          self$`homePhone`
      }
      if (!is.null(self$`cellPhone`)) {
        LocationObject[["cellPhone"]] <-
          self$`cellPhone`
      }
      if (!is.null(self$`cellCarrier`)) {
        LocationObject[["cellCarrier"]] <-
          self$extractSimpleType(self$`cellCarrier`)
      }
      if (!is.null(self$`businessPhone`)) {
        LocationObject[["businessPhone"]] <-
          self$`businessPhone`
      }
      if (!is.null(self$`businessPhoneExt`)) {
        LocationObject[["businessPhoneExt"]] <-
          self$`businessPhoneExt`
      }
      if (!is.null(self$`faxNumber`)) {
        LocationObject[["faxNumber"]] <-
          self$`faxNumber`
      }
      if (!is.null(self$`timeZone`)) {
        LocationObject[["timeZone"]] <-
          self$`timeZone`
      }
      if (!is.null(self$`utcOffset`)) {
        LocationObject[["utcOffset"]] <-
          self$`utcOffset`
      }
      if (!is.null(self$`code501c3`)) {
        LocationObject[["code501c3"]] <-
          self$`code501c3`
      }
      if (!is.null(self$`emailAddress`)) {
        LocationObject[["emailAddress"]] <-
          self$`emailAddress`
      }
      if (!is.null(self$`address`)) {
        LocationObject[["address"]] <-
          self$extractSimpleType(self$`address`)
      }
      if (!is.null(self$`web`)) {
        LocationObject[["web"]] <-
          self$`web`
      }
      if (!is.null(self$`program`)) {
        LocationObject[["program"]] <-
          self$extractSimpleType(self$`program`)
      }
      if (!is.null(self$`visibility`)) {
        LocationObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`groupingId`)) {
        LocationObject[["groupingId"]] <-
          self$`groupingId`
      }
      if (!is.null(self$`destination`)) {
        LocationObject[["destination"]] <-
          self$`destination`
      }
      if (!is.null(self$`dockingTime`)) {
        LocationObject[["dockingTime"]] <-
          self$`dockingTime`
      }
      if (!is.null(self$`usageCount`)) {
        LocationObject[["usageCount"]] <-
          self$`usageCount`
      }
      if (!is.null(self$`timeFramesAllowed`)) {
        LocationObject[["timeFramesAllowed"]] <-
          self$`timeFramesAllowed`
      }
      if (!is.null(self$`likes`)) {
        LocationObject[["likes"]] <-
          self$extractSimpleType(self$`likes`)
      }
      if (!is.null(self$`likeCount`)) {
        LocationObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        LocationObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`ownerDisplay`)) {
        LocationObject[["ownerDisplay"]] <-
          self$`ownerDisplay`
      }
      if (!is.null(self$`contentName`)) {
        LocationObject[["contentName"]] <-
          self$`contentName`
      }
      return(LocationObject)
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
    #' Deserialize JSON string into an instance of Location
    #'
    #' @param input_json the JSON input
    #' @return the instance of Location
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
      if (!is.null(this_object$`territory`)) {
        `territory_object` <- Territory$new()
        `territory_object`$fromJSON(jsonlite::toJSON(this_object$`territory`, auto_unbox = TRUE, digits = NA))
        self$`territory` <- `territory_object`
      }
      if (!is.null(this_object$`hub`)) {
        `hub_object` <- ServiceHub$new()
        `hub_object`$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
        self$`hub` <- `hub_object`
      }
      if (!is.null(this_object$`picture`)) {
        `picture_object` <- Asset$new()
        `picture_object`$fromJSON(jsonlite::toJSON(this_object$`picture`, auto_unbox = TRUE, digits = NA))
        self$`picture` <- `picture_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`noteCount`)) {
        self$`noteCount` <- this_object$`noteCount`
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
      if (!is.null(this_object$`program`)) {
        `program_object` <- Program$new()
        `program_object`$fromJSON(jsonlite::toJSON(this_object$`program`, auto_unbox = TRUE, digits = NA))
        self$`program` <- `program_object`
      }
      if (!is.null(this_object$`visibility`)) {
        if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`groupingId`)) {
        self$`groupingId` <- this_object$`groupingId`
      }
      if (!is.null(this_object$`destination`)) {
        self$`destination` <- this_object$`destination`
      }
      if (!is.null(this_object$`dockingTime`)) {
        self$`dockingTime` <- this_object$`dockingTime`
      }
      if (!is.null(this_object$`usageCount`)) {
        self$`usageCount` <- this_object$`usageCount`
      }
      if (!is.null(this_object$`timeFramesAllowed`)) {
        self$`timeFramesAllowed` <- this_object$`timeFramesAllowed`
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
      if (!is.null(this_object$`ownerDisplay`)) {
        self$`ownerDisplay` <- this_object$`ownerDisplay`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Location in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Location
    #'
    #' @param input_json the JSON input
    #' @return the instance of Location
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`name` <- this_object$`name`
      self$`territory` <- Territory$new()$fromJSON(jsonlite::toJSON(this_object$`territory`, auto_unbox = TRUE, digits = NA))
      self$`hub` <- ServiceHub$new()$fromJSON(jsonlite::toJSON(this_object$`hub`, auto_unbox = TRUE, digits = NA))
      self$`picture` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`picture`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[Note]", loadNamespace("openapi"))
      self$`noteCount` <- this_object$`noteCount`
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
      self$`program` <- Program$new()$fromJSON(jsonlite::toJSON(this_object$`program`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`visibility`) && !(this_object$`visibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`visibility`, "\" cannot be assigned to `visibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`visibility` <- this_object$`visibility`
      self$`groupingId` <- this_object$`groupingId`
      self$`destination` <- this_object$`destination`
      self$`dockingTime` <- this_object$`dockingTime`
      self$`usageCount` <- this_object$`usageCount`
      self$`timeFramesAllowed` <- this_object$`timeFramesAllowed`
      self$`likes` <- ApiClient$new()$deserializeObj(this_object$`likes`, "array[YayOrNay]", loadNamespace("openapi"))
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`ownerDisplay` <- this_object$`ownerDisplay`
      self$`contentName` <- this_object$`contentName`
      self
    },

    #' @description
    #' Validate JSON input with respect to Location and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Location
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
# Location$unlock()
#
## Below is an example to define the print function
# Location$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Location$lock()

