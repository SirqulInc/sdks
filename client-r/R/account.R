#' Create a new Account
#'
#' @description
#' Account Class
#'
#' @docType class
#' @title Account
#' @description Account Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field created  character [optional]
#' @field updated  character [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field locationDescription  character [optional]
#' @field currentRegion  \link{Region} [optional]
#' @field locationLastUpdated  character [optional]
#' @field currentPostalCode  character [optional]
#' @field currentPostalCodeLatitude  numeric [optional]
#' @field currentPostalCodeLongitude  numeric [optional]
#' @field locationUpdated  character [optional]
#' @field premigrationId  integer [optional]
#' @field username  character [optional]
#' @field locale  character [optional]
#' @field inviteCode  character [optional]
#' @field retailerInviteCode  character [optional]
#' @field aboutUs  character [optional]
#' @field businessName  character [optional]
#' @field likeCount  integer [optional]
#' @field dislikeCount  integer [optional]
#' @field thirdPartyCredentials  list(\link{ThirdPartyCredentials}) [optional]
#' @field partnerActive  character [optional]
#' @field resetToken  character [optional]
#' @field profileImage  character [optional]
#' @field accountType  character [optional]
#' @field media  list(\link{Asset}) [optional]
#' @field picture  \link{Asset} [optional]
#' @field firstName  character [optional]
#' @field middleName  character [optional]
#' @field lastName  character [optional]
#' @field prefix  character [optional]
#' @field suffix  character [optional]
#' @field title  character [optional]
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
#' @field display  character [optional]
#' @field website  character [optional]
#' @field consumersNotes  character [optional]
#' @field consumersAboutUs  character [optional]
#' @field accountProfile  \link{AccountProfileInfo} [optional]
#' @field retailerLocations  list(\link{RetailerLocation}) [optional]
#' @field executive  character [optional]
#' @field contentName  character [optional]
#' @field defaultThreshold  integer [optional]
#' @field audienceInfo_gender  character [optional]
#' @field flagThreshold_id  integer [optional]
#' @field contentType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Account <- R6::R6Class(
  "Account",
  public = list(
    `id` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `locationDescription` = NULL,
    `currentRegion` = NULL,
    `locationLastUpdated` = NULL,
    `currentPostalCode` = NULL,
    `currentPostalCodeLatitude` = NULL,
    `currentPostalCodeLongitude` = NULL,
    `locationUpdated` = NULL,
    `premigrationId` = NULL,
    `username` = NULL,
    `locale` = NULL,
    `inviteCode` = NULL,
    `retailerInviteCode` = NULL,
    `aboutUs` = NULL,
    `businessName` = NULL,
    `likeCount` = NULL,
    `dislikeCount` = NULL,
    `thirdPartyCredentials` = NULL,
    `partnerActive` = NULL,
    `resetToken` = NULL,
    `profileImage` = NULL,
    `accountType` = NULL,
    `media` = NULL,
    `picture` = NULL,
    `firstName` = NULL,
    `middleName` = NULL,
    `lastName` = NULL,
    `prefix` = NULL,
    `suffix` = NULL,
    `title` = NULL,
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
    `display` = NULL,
    `website` = NULL,
    `consumersNotes` = NULL,
    `consumersAboutUs` = NULL,
    `accountProfile` = NULL,
    `retailerLocations` = NULL,
    `executive` = NULL,
    `contentName` = NULL,
    `defaultThreshold` = NULL,
    `audienceInfo_gender` = NULL,
    `flagThreshold_id` = NULL,
    `contentType` = NULL,

    #' @description
    #' Initialize a new Account class.
    #'
    #' @param id id
    #' @param created created
    #' @param updated updated
    #' @param active active
    #' @param valid valid
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param locationDescription locationDescription
    #' @param currentRegion currentRegion
    #' @param locationLastUpdated locationLastUpdated
    #' @param currentPostalCode currentPostalCode
    #' @param currentPostalCodeLatitude currentPostalCodeLatitude
    #' @param currentPostalCodeLongitude currentPostalCodeLongitude
    #' @param locationUpdated locationUpdated
    #' @param premigrationId premigrationId
    #' @param username username
    #' @param locale locale
    #' @param inviteCode inviteCode
    #' @param retailerInviteCode retailerInviteCode
    #' @param aboutUs aboutUs
    #' @param businessName businessName
    #' @param likeCount likeCount
    #' @param dislikeCount dislikeCount
    #' @param thirdPartyCredentials thirdPartyCredentials
    #' @param partnerActive partnerActive
    #' @param resetToken resetToken
    #' @param profileImage profileImage
    #' @param accountType accountType
    #' @param media media
    #' @param picture picture
    #' @param firstName firstName
    #' @param middleName middleName
    #' @param lastName lastName
    #' @param prefix prefix
    #' @param suffix suffix
    #' @param title title
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
    #' @param display display
    #' @param website website
    #' @param consumersNotes consumersNotes
    #' @param consumersAboutUs consumersAboutUs
    #' @param accountProfile accountProfile
    #' @param retailerLocations retailerLocations
    #' @param executive executive
    #' @param contentName contentName
    #' @param defaultThreshold defaultThreshold
    #' @param audienceInfo_gender audienceInfo_gender
    #' @param flagThreshold_id flagThreshold_id
    #' @param contentType contentType
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `created` = NULL, `updated` = NULL, `active` = NULL, `valid` = NULL, `latitude` = NULL, `longitude` = NULL, `locationDescription` = NULL, `currentRegion` = NULL, `locationLastUpdated` = NULL, `currentPostalCode` = NULL, `currentPostalCodeLatitude` = NULL, `currentPostalCodeLongitude` = NULL, `locationUpdated` = NULL, `premigrationId` = NULL, `username` = NULL, `locale` = NULL, `inviteCode` = NULL, `retailerInviteCode` = NULL, `aboutUs` = NULL, `businessName` = NULL, `likeCount` = NULL, `dislikeCount` = NULL, `thirdPartyCredentials` = NULL, `partnerActive` = NULL, `resetToken` = NULL, `profileImage` = NULL, `accountType` = NULL, `media` = NULL, `picture` = NULL, `firstName` = NULL, `middleName` = NULL, `lastName` = NULL, `prefix` = NULL, `suffix` = NULL, `title` = NULL, `homePhone` = NULL, `cellPhone` = NULL, `cellCarrier` = NULL, `businessPhone` = NULL, `businessPhoneExt` = NULL, `faxNumber` = NULL, `timeZone` = NULL, `utcOffset` = NULL, `code501c3` = NULL, `emailAddress` = NULL, `address` = NULL, `web` = NULL, `display` = NULL, `website` = NULL, `consumersNotes` = NULL, `consumersAboutUs` = NULL, `accountProfile` = NULL, `retailerLocations` = NULL, `executive` = NULL, `contentName` = NULL, `defaultThreshold` = NULL, `audienceInfo_gender` = NULL, `flagThreshold_id` = NULL, `contentType` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`created`)) {
        if (!is.character(`created`)) {
          stop(paste("Error! Invalid data for `created`. Must be a string:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`updated`)) {
        if (!is.character(`updated`)) {
          stop(paste("Error! Invalid data for `updated`. Must be a string:", `updated`))
        }
        self$`updated` <- `updated`
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
      if (!is.null(`currentRegion`)) {
        stopifnot(R6::is.R6(`currentRegion`))
        self$`currentRegion` <- `currentRegion`
      }
      if (!is.null(`locationLastUpdated`)) {
        if (!is.character(`locationLastUpdated`)) {
          stop(paste("Error! Invalid data for `locationLastUpdated`. Must be a string:", `locationLastUpdated`))
        }
        self$`locationLastUpdated` <- `locationLastUpdated`
      }
      if (!is.null(`currentPostalCode`)) {
        if (!(is.character(`currentPostalCode`) && length(`currentPostalCode`) == 1)) {
          stop(paste("Error! Invalid data for `currentPostalCode`. Must be a string:", `currentPostalCode`))
        }
        self$`currentPostalCode` <- `currentPostalCode`
      }
      if (!is.null(`currentPostalCodeLatitude`)) {
        if (!(is.numeric(`currentPostalCodeLatitude`) && length(`currentPostalCodeLatitude`) == 1)) {
          stop(paste("Error! Invalid data for `currentPostalCodeLatitude`. Must be a number:", `currentPostalCodeLatitude`))
        }
        self$`currentPostalCodeLatitude` <- `currentPostalCodeLatitude`
      }
      if (!is.null(`currentPostalCodeLongitude`)) {
        if (!(is.numeric(`currentPostalCodeLongitude`) && length(`currentPostalCodeLongitude`) == 1)) {
          stop(paste("Error! Invalid data for `currentPostalCodeLongitude`. Must be a number:", `currentPostalCodeLongitude`))
        }
        self$`currentPostalCodeLongitude` <- `currentPostalCodeLongitude`
      }
      if (!is.null(`locationUpdated`)) {
        if (!(is.logical(`locationUpdated`) && length(`locationUpdated`) == 1)) {
          stop(paste("Error! Invalid data for `locationUpdated`. Must be a boolean:", `locationUpdated`))
        }
        self$`locationUpdated` <- `locationUpdated`
      }
      if (!is.null(`premigrationId`)) {
        if (!(is.numeric(`premigrationId`) && length(`premigrationId`) == 1)) {
          stop(paste("Error! Invalid data for `premigrationId`. Must be an integer:", `premigrationId`))
        }
        self$`premigrationId` <- `premigrationId`
      }
      if (!is.null(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!is.null(`locale`)) {
        if (!(is.character(`locale`) && length(`locale`) == 1)) {
          stop(paste("Error! Invalid data for `locale`. Must be a string:", `locale`))
        }
        self$`locale` <- `locale`
      }
      if (!is.null(`inviteCode`)) {
        if (!(is.character(`inviteCode`) && length(`inviteCode`) == 1)) {
          stop(paste("Error! Invalid data for `inviteCode`. Must be a string:", `inviteCode`))
        }
        self$`inviteCode` <- `inviteCode`
      }
      if (!is.null(`retailerInviteCode`)) {
        if (!(is.character(`retailerInviteCode`) && length(`retailerInviteCode`) == 1)) {
          stop(paste("Error! Invalid data for `retailerInviteCode`. Must be a string:", `retailerInviteCode`))
        }
        self$`retailerInviteCode` <- `retailerInviteCode`
      }
      if (!is.null(`aboutUs`)) {
        if (!(is.character(`aboutUs`) && length(`aboutUs`) == 1)) {
          stop(paste("Error! Invalid data for `aboutUs`. Must be a string:", `aboutUs`))
        }
        self$`aboutUs` <- `aboutUs`
      }
      if (!is.null(`businessName`)) {
        if (!(is.character(`businessName`) && length(`businessName`) == 1)) {
          stop(paste("Error! Invalid data for `businessName`. Must be a string:", `businessName`))
        }
        self$`businessName` <- `businessName`
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
      if (!is.null(`thirdPartyCredentials`)) {
        stopifnot(is.vector(`thirdPartyCredentials`), length(`thirdPartyCredentials`) != 0)
        sapply(`thirdPartyCredentials`, function(x) stopifnot(R6::is.R6(x)))
        self$`thirdPartyCredentials` <- `thirdPartyCredentials`
      }
      if (!is.null(`partnerActive`)) {
        if (!(is.logical(`partnerActive`) && length(`partnerActive`) == 1)) {
          stop(paste("Error! Invalid data for `partnerActive`. Must be a boolean:", `partnerActive`))
        }
        self$`partnerActive` <- `partnerActive`
      }
      if (!is.null(`resetToken`)) {
        if (!(is.character(`resetToken`) && length(`resetToken`) == 1)) {
          stop(paste("Error! Invalid data for `resetToken`. Must be a string:", `resetToken`))
        }
        self$`resetToken` <- `resetToken`
      }
      if (!is.null(`profileImage`)) {
        if (!(is.character(`profileImage`) && length(`profileImage`) == 1)) {
          stop(paste("Error! Invalid data for `profileImage`. Must be a string:", `profileImage`))
        }
        self$`profileImage` <- `profileImage`
      }
      if (!is.null(`accountType`)) {
        if (!(is.character(`accountType`) && length(`accountType`) == 1)) {
          stop(paste("Error! Invalid data for `accountType`. Must be a string:", `accountType`))
        }
        self$`accountType` <- `accountType`
      }
      if (!is.null(`media`)) {
        stopifnot(is.vector(`media`), length(`media`) != 0)
        sapply(`media`, function(x) stopifnot(R6::is.R6(x)))
        self$`media` <- `media`
      }
      if (!is.null(`picture`)) {
        stopifnot(R6::is.R6(`picture`))
        self$`picture` <- `picture`
      }
      if (!is.null(`firstName`)) {
        if (!(is.character(`firstName`) && length(`firstName`) == 1)) {
          stop(paste("Error! Invalid data for `firstName`. Must be a string:", `firstName`))
        }
        self$`firstName` <- `firstName`
      }
      if (!is.null(`middleName`)) {
        if (!(is.character(`middleName`) && length(`middleName`) == 1)) {
          stop(paste("Error! Invalid data for `middleName`. Must be a string:", `middleName`))
        }
        self$`middleName` <- `middleName`
      }
      if (!is.null(`lastName`)) {
        if (!(is.character(`lastName`) && length(`lastName`) == 1)) {
          stop(paste("Error! Invalid data for `lastName`. Must be a string:", `lastName`))
        }
        self$`lastName` <- `lastName`
      }
      if (!is.null(`prefix`)) {
        if (!(is.character(`prefix`) && length(`prefix`) == 1)) {
          stop(paste("Error! Invalid data for `prefix`. Must be a string:", `prefix`))
        }
        self$`prefix` <- `prefix`
      }
      if (!is.null(`suffix`)) {
        if (!(is.character(`suffix`) && length(`suffix`) == 1)) {
          stop(paste("Error! Invalid data for `suffix`. Must be a string:", `suffix`))
        }
        self$`suffix` <- `suffix`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
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
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`website`)) {
        if (!(is.character(`website`) && length(`website`) == 1)) {
          stop(paste("Error! Invalid data for `website`. Must be a string:", `website`))
        }
        self$`website` <- `website`
      }
      if (!is.null(`consumersNotes`)) {
        if (!(is.character(`consumersNotes`) && length(`consumersNotes`) == 1)) {
          stop(paste("Error! Invalid data for `consumersNotes`. Must be a string:", `consumersNotes`))
        }
        self$`consumersNotes` <- `consumersNotes`
      }
      if (!is.null(`consumersAboutUs`)) {
        if (!(is.character(`consumersAboutUs`) && length(`consumersAboutUs`) == 1)) {
          stop(paste("Error! Invalid data for `consumersAboutUs`. Must be a string:", `consumersAboutUs`))
        }
        self$`consumersAboutUs` <- `consumersAboutUs`
      }
      if (!is.null(`accountProfile`)) {
        stopifnot(R6::is.R6(`accountProfile`))
        self$`accountProfile` <- `accountProfile`
      }
      if (!is.null(`retailerLocations`)) {
        stopifnot(is.vector(`retailerLocations`), length(`retailerLocations`) != 0)
        sapply(`retailerLocations`, function(x) stopifnot(R6::is.R6(x)))
        self$`retailerLocations` <- `retailerLocations`
      }
      if (!is.null(`executive`)) {
        if (!(is.logical(`executive`) && length(`executive`) == 1)) {
          stop(paste("Error! Invalid data for `executive`. Must be a boolean:", `executive`))
        }
        self$`executive` <- `executive`
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
      if (!is.null(`audienceInfo_gender`)) {
        if (!(`audienceInfo_gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", `audienceInfo_gender`, "\" cannot be assigned to `audienceInfo_gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        if (!(is.character(`audienceInfo_gender`) && length(`audienceInfo_gender`) == 1)) {
          stop(paste("Error! Invalid data for `audienceInfo_gender`. Must be a string:", `audienceInfo_gender`))
        }
        self$`audienceInfo_gender` <- `audienceInfo_gender`
      }
      if (!is.null(`flagThreshold_id`)) {
        if (!(is.numeric(`flagThreshold_id`) && length(`flagThreshold_id`) == 1)) {
          stop(paste("Error! Invalid data for `flagThreshold_id`. Must be an integer:", `flagThreshold_id`))
        }
        self$`flagThreshold_id` <- `flagThreshold_id`
      }
      if (!is.null(`contentType`)) {
        if (!(is.character(`contentType`) && length(`contentType`) == 1)) {
          stop(paste("Error! Invalid data for `contentType`. Must be a string:", `contentType`))
        }
        self$`contentType` <- `contentType`
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
    #' @return Account as a base R list.
    #' @examples
    #' # convert array of Account (x) to a data frame
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
    #' Convert Account to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountObject <- list()
      if (!is.null(self$`id`)) {
        AccountObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`created`)) {
        AccountObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        AccountObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`active`)) {
        AccountObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        AccountObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`latitude`)) {
        AccountObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        AccountObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`locationDescription`)) {
        AccountObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      if (!is.null(self$`currentRegion`)) {
        AccountObject[["currentRegion"]] <-
          self$extractSimpleType(self$`currentRegion`)
      }
      if (!is.null(self$`locationLastUpdated`)) {
        AccountObject[["locationLastUpdated"]] <-
          self$`locationLastUpdated`
      }
      if (!is.null(self$`currentPostalCode`)) {
        AccountObject[["currentPostalCode"]] <-
          self$`currentPostalCode`
      }
      if (!is.null(self$`currentPostalCodeLatitude`)) {
        AccountObject[["currentPostalCodeLatitude"]] <-
          self$`currentPostalCodeLatitude`
      }
      if (!is.null(self$`currentPostalCodeLongitude`)) {
        AccountObject[["currentPostalCodeLongitude"]] <-
          self$`currentPostalCodeLongitude`
      }
      if (!is.null(self$`locationUpdated`)) {
        AccountObject[["locationUpdated"]] <-
          self$`locationUpdated`
      }
      if (!is.null(self$`premigrationId`)) {
        AccountObject[["premigrationId"]] <-
          self$`premigrationId`
      }
      if (!is.null(self$`username`)) {
        AccountObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`locale`)) {
        AccountObject[["locale"]] <-
          self$`locale`
      }
      if (!is.null(self$`inviteCode`)) {
        AccountObject[["inviteCode"]] <-
          self$`inviteCode`
      }
      if (!is.null(self$`retailerInviteCode`)) {
        AccountObject[["retailerInviteCode"]] <-
          self$`retailerInviteCode`
      }
      if (!is.null(self$`aboutUs`)) {
        AccountObject[["aboutUs"]] <-
          self$`aboutUs`
      }
      if (!is.null(self$`businessName`)) {
        AccountObject[["businessName"]] <-
          self$`businessName`
      }
      if (!is.null(self$`likeCount`)) {
        AccountObject[["likeCount"]] <-
          self$`likeCount`
      }
      if (!is.null(self$`dislikeCount`)) {
        AccountObject[["dislikeCount"]] <-
          self$`dislikeCount`
      }
      if (!is.null(self$`thirdPartyCredentials`)) {
        AccountObject[["thirdPartyCredentials"]] <-
          self$extractSimpleType(self$`thirdPartyCredentials`)
      }
      if (!is.null(self$`partnerActive`)) {
        AccountObject[["partnerActive"]] <-
          self$`partnerActive`
      }
      if (!is.null(self$`resetToken`)) {
        AccountObject[["resetToken"]] <-
          self$`resetToken`
      }
      if (!is.null(self$`profileImage`)) {
        AccountObject[["profileImage"]] <-
          self$`profileImage`
      }
      if (!is.null(self$`accountType`)) {
        AccountObject[["accountType"]] <-
          self$`accountType`
      }
      if (!is.null(self$`media`)) {
        AccountObject[["media"]] <-
          self$extractSimpleType(self$`media`)
      }
      if (!is.null(self$`picture`)) {
        AccountObject[["picture"]] <-
          self$extractSimpleType(self$`picture`)
      }
      if (!is.null(self$`firstName`)) {
        AccountObject[["firstName"]] <-
          self$`firstName`
      }
      if (!is.null(self$`middleName`)) {
        AccountObject[["middleName"]] <-
          self$`middleName`
      }
      if (!is.null(self$`lastName`)) {
        AccountObject[["lastName"]] <-
          self$`lastName`
      }
      if (!is.null(self$`prefix`)) {
        AccountObject[["prefix"]] <-
          self$`prefix`
      }
      if (!is.null(self$`suffix`)) {
        AccountObject[["suffix"]] <-
          self$`suffix`
      }
      if (!is.null(self$`title`)) {
        AccountObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`homePhone`)) {
        AccountObject[["homePhone"]] <-
          self$`homePhone`
      }
      if (!is.null(self$`cellPhone`)) {
        AccountObject[["cellPhone"]] <-
          self$`cellPhone`
      }
      if (!is.null(self$`cellCarrier`)) {
        AccountObject[["cellCarrier"]] <-
          self$extractSimpleType(self$`cellCarrier`)
      }
      if (!is.null(self$`businessPhone`)) {
        AccountObject[["businessPhone"]] <-
          self$`businessPhone`
      }
      if (!is.null(self$`businessPhoneExt`)) {
        AccountObject[["businessPhoneExt"]] <-
          self$`businessPhoneExt`
      }
      if (!is.null(self$`faxNumber`)) {
        AccountObject[["faxNumber"]] <-
          self$`faxNumber`
      }
      if (!is.null(self$`timeZone`)) {
        AccountObject[["timeZone"]] <-
          self$`timeZone`
      }
      if (!is.null(self$`utcOffset`)) {
        AccountObject[["utcOffset"]] <-
          self$`utcOffset`
      }
      if (!is.null(self$`code501c3`)) {
        AccountObject[["code501c3"]] <-
          self$`code501c3`
      }
      if (!is.null(self$`emailAddress`)) {
        AccountObject[["emailAddress"]] <-
          self$`emailAddress`
      }
      if (!is.null(self$`address`)) {
        AccountObject[["address"]] <-
          self$extractSimpleType(self$`address`)
      }
      if (!is.null(self$`web`)) {
        AccountObject[["web"]] <-
          self$`web`
      }
      if (!is.null(self$`display`)) {
        AccountObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`website`)) {
        AccountObject[["website"]] <-
          self$`website`
      }
      if (!is.null(self$`consumersNotes`)) {
        AccountObject[["consumersNotes"]] <-
          self$`consumersNotes`
      }
      if (!is.null(self$`consumersAboutUs`)) {
        AccountObject[["consumersAboutUs"]] <-
          self$`consumersAboutUs`
      }
      if (!is.null(self$`accountProfile`)) {
        AccountObject[["accountProfile"]] <-
          self$extractSimpleType(self$`accountProfile`)
      }
      if (!is.null(self$`retailerLocations`)) {
        AccountObject[["retailerLocations"]] <-
          self$extractSimpleType(self$`retailerLocations`)
      }
      if (!is.null(self$`executive`)) {
        AccountObject[["executive"]] <-
          self$`executive`
      }
      if (!is.null(self$`contentName`)) {
        AccountObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`defaultThreshold`)) {
        AccountObject[["defaultThreshold"]] <-
          self$`defaultThreshold`
      }
      if (!is.null(self$`audienceInfo_gender`)) {
        AccountObject[["audienceInfo_gender"]] <-
          self$`audienceInfo_gender`
      }
      if (!is.null(self$`flagThreshold_id`)) {
        AccountObject[["flagThreshold_id"]] <-
          self$`flagThreshold_id`
      }
      if (!is.null(self$`contentType`)) {
        AccountObject[["contentType"]] <-
          self$`contentType`
      }
      return(AccountObject)
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
    #' Deserialize JSON string into an instance of Account
    #'
    #' @param input_json the JSON input
    #' @return the instance of Account
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
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
      if (!is.null(this_object$`currentRegion`)) {
        `currentregion_object` <- Region$new()
        `currentregion_object`$fromJSON(jsonlite::toJSON(this_object$`currentRegion`, auto_unbox = TRUE, digits = NA))
        self$`currentRegion` <- `currentregion_object`
      }
      if (!is.null(this_object$`locationLastUpdated`)) {
        self$`locationLastUpdated` <- this_object$`locationLastUpdated`
      }
      if (!is.null(this_object$`currentPostalCode`)) {
        self$`currentPostalCode` <- this_object$`currentPostalCode`
      }
      if (!is.null(this_object$`currentPostalCodeLatitude`)) {
        self$`currentPostalCodeLatitude` <- this_object$`currentPostalCodeLatitude`
      }
      if (!is.null(this_object$`currentPostalCodeLongitude`)) {
        self$`currentPostalCodeLongitude` <- this_object$`currentPostalCodeLongitude`
      }
      if (!is.null(this_object$`locationUpdated`)) {
        self$`locationUpdated` <- this_object$`locationUpdated`
      }
      if (!is.null(this_object$`premigrationId`)) {
        self$`premigrationId` <- this_object$`premigrationId`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`locale`)) {
        self$`locale` <- this_object$`locale`
      }
      if (!is.null(this_object$`inviteCode`)) {
        self$`inviteCode` <- this_object$`inviteCode`
      }
      if (!is.null(this_object$`retailerInviteCode`)) {
        self$`retailerInviteCode` <- this_object$`retailerInviteCode`
      }
      if (!is.null(this_object$`aboutUs`)) {
        self$`aboutUs` <- this_object$`aboutUs`
      }
      if (!is.null(this_object$`businessName`)) {
        self$`businessName` <- this_object$`businessName`
      }
      if (!is.null(this_object$`likeCount`)) {
        self$`likeCount` <- this_object$`likeCount`
      }
      if (!is.null(this_object$`dislikeCount`)) {
        self$`dislikeCount` <- this_object$`dislikeCount`
      }
      if (!is.null(this_object$`thirdPartyCredentials`)) {
        self$`thirdPartyCredentials` <- ApiClient$new()$deserializeObj(this_object$`thirdPartyCredentials`, "array[ThirdPartyCredentials]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`partnerActive`)) {
        self$`partnerActive` <- this_object$`partnerActive`
      }
      if (!is.null(this_object$`resetToken`)) {
        self$`resetToken` <- this_object$`resetToken`
      }
      if (!is.null(this_object$`profileImage`)) {
        self$`profileImage` <- this_object$`profileImage`
      }
      if (!is.null(this_object$`accountType`)) {
        self$`accountType` <- this_object$`accountType`
      }
      if (!is.null(this_object$`media`)) {
        self$`media` <- ApiClient$new()$deserializeObj(this_object$`media`, "array[Asset]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`picture`)) {
        `picture_object` <- Asset$new()
        `picture_object`$fromJSON(jsonlite::toJSON(this_object$`picture`, auto_unbox = TRUE, digits = NA))
        self$`picture` <- `picture_object`
      }
      if (!is.null(this_object$`firstName`)) {
        self$`firstName` <- this_object$`firstName`
      }
      if (!is.null(this_object$`middleName`)) {
        self$`middleName` <- this_object$`middleName`
      }
      if (!is.null(this_object$`lastName`)) {
        self$`lastName` <- this_object$`lastName`
      }
      if (!is.null(this_object$`prefix`)) {
        self$`prefix` <- this_object$`prefix`
      }
      if (!is.null(this_object$`suffix`)) {
        self$`suffix` <- this_object$`suffix`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
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
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`website`)) {
        self$`website` <- this_object$`website`
      }
      if (!is.null(this_object$`consumersNotes`)) {
        self$`consumersNotes` <- this_object$`consumersNotes`
      }
      if (!is.null(this_object$`consumersAboutUs`)) {
        self$`consumersAboutUs` <- this_object$`consumersAboutUs`
      }
      if (!is.null(this_object$`accountProfile`)) {
        `accountprofile_object` <- AccountProfileInfo$new()
        `accountprofile_object`$fromJSON(jsonlite::toJSON(this_object$`accountProfile`, auto_unbox = TRUE, digits = NA))
        self$`accountProfile` <- `accountprofile_object`
      }
      if (!is.null(this_object$`retailerLocations`)) {
        self$`retailerLocations` <- ApiClient$new()$deserializeObj(this_object$`retailerLocations`, "array[RetailerLocation]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`executive`)) {
        self$`executive` <- this_object$`executive`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`defaultThreshold`)) {
        self$`defaultThreshold` <- this_object$`defaultThreshold`
      }
      if (!is.null(this_object$`audienceInfo_gender`)) {
        if (!is.null(this_object$`audienceInfo_gender`) && !(this_object$`audienceInfo_gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", this_object$`audienceInfo_gender`, "\" cannot be assigned to `audienceInfo_gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        self$`audienceInfo_gender` <- this_object$`audienceInfo_gender`
      }
      if (!is.null(this_object$`flagThreshold_id`)) {
        self$`flagThreshold_id` <- this_object$`flagThreshold_id`
      }
      if (!is.null(this_object$`contentType`)) {
        self$`contentType` <- this_object$`contentType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Account in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Account
    #'
    #' @param input_json the JSON input
    #' @return the instance of Account
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`locationDescription` <- this_object$`locationDescription`
      self$`currentRegion` <- Region$new()$fromJSON(jsonlite::toJSON(this_object$`currentRegion`, auto_unbox = TRUE, digits = NA))
      self$`locationLastUpdated` <- this_object$`locationLastUpdated`
      self$`currentPostalCode` <- this_object$`currentPostalCode`
      self$`currentPostalCodeLatitude` <- this_object$`currentPostalCodeLatitude`
      self$`currentPostalCodeLongitude` <- this_object$`currentPostalCodeLongitude`
      self$`locationUpdated` <- this_object$`locationUpdated`
      self$`premigrationId` <- this_object$`premigrationId`
      self$`username` <- this_object$`username`
      self$`locale` <- this_object$`locale`
      self$`inviteCode` <- this_object$`inviteCode`
      self$`retailerInviteCode` <- this_object$`retailerInviteCode`
      self$`aboutUs` <- this_object$`aboutUs`
      self$`businessName` <- this_object$`businessName`
      self$`likeCount` <- this_object$`likeCount`
      self$`dislikeCount` <- this_object$`dislikeCount`
      self$`thirdPartyCredentials` <- ApiClient$new()$deserializeObj(this_object$`thirdPartyCredentials`, "array[ThirdPartyCredentials]", loadNamespace("openapi"))
      self$`partnerActive` <- this_object$`partnerActive`
      self$`resetToken` <- this_object$`resetToken`
      self$`profileImage` <- this_object$`profileImage`
      self$`accountType` <- this_object$`accountType`
      self$`media` <- ApiClient$new()$deserializeObj(this_object$`media`, "array[Asset]", loadNamespace("openapi"))
      self$`picture` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`picture`, auto_unbox = TRUE, digits = NA))
      self$`firstName` <- this_object$`firstName`
      self$`middleName` <- this_object$`middleName`
      self$`lastName` <- this_object$`lastName`
      self$`prefix` <- this_object$`prefix`
      self$`suffix` <- this_object$`suffix`
      self$`title` <- this_object$`title`
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
      self$`display` <- this_object$`display`
      self$`website` <- this_object$`website`
      self$`consumersNotes` <- this_object$`consumersNotes`
      self$`consumersAboutUs` <- this_object$`consumersAboutUs`
      self$`accountProfile` <- AccountProfileInfo$new()$fromJSON(jsonlite::toJSON(this_object$`accountProfile`, auto_unbox = TRUE, digits = NA))
      self$`retailerLocations` <- ApiClient$new()$deserializeObj(this_object$`retailerLocations`, "array[RetailerLocation]", loadNamespace("openapi"))
      self$`executive` <- this_object$`executive`
      self$`contentName` <- this_object$`contentName`
      self$`defaultThreshold` <- this_object$`defaultThreshold`
      if (!is.null(this_object$`audienceInfo_gender`) && !(this_object$`audienceInfo_gender` %in% c("MALE", "FEMALE", "ANY"))) {
        stop(paste("Error! \"", this_object$`audienceInfo_gender`, "\" cannot be assigned to `audienceInfo_gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
      }
      self$`audienceInfo_gender` <- this_object$`audienceInfo_gender`
      self$`flagThreshold_id` <- this_object$`flagThreshold_id`
      self$`contentType` <- this_object$`contentType`
      self
    },

    #' @description
    #' Validate JSON input with respect to Account and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Account
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
# Account$unlock()
#
## Below is an example to define the print function
# Account$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Account$lock()

