#' Create a new UserLocationResponse
#'
#' @description
#' UserLocationResponse Class
#'
#' @docType class
#' @title UserLocationResponse
#' @description UserLocationResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field accountId  integer [optional]
#' @field locationDisplay  character [optional]
#' @field display  character [optional]
#' @field username  character [optional]
#' @field profileImage  character [optional]
#' @field profileAvatar  \link{AssetShortResponse} [optional]
#' @field aboutUs  character [optional]
#' @field locale  character [optional]
#' @field summaryTitle  character [optional]
#' @field gender  character [optional]
#' @field age  character [optional]
#' @field gameExperience  character [optional]
#' @field contact  \link{ContactResponse} [optional]
#' @field categories  list(\link{CategoryResponse}) [optional]
#' @field personalProfile  \link{PersonalProfileResponse} [optional]
#' @field userSettings  \link{UserSettingsResponse} [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field currentPostalCode  \link{PostalCodeResponse} [optional]
#' @field accountType  character [optional]
#' @field premiumExpiration  integer [optional]
#' @field matchIndex  integer [optional]
#' @field tags  character [optional]
#' @field locationLastUpdated  integer [optional]
#' @field distanceFromMe  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserLocationResponse <- R6::R6Class(
  "UserLocationResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `accountId` = NULL,
    `locationDisplay` = NULL,
    `display` = NULL,
    `username` = NULL,
    `profileImage` = NULL,
    `profileAvatar` = NULL,
    `aboutUs` = NULL,
    `locale` = NULL,
    `summaryTitle` = NULL,
    `gender` = NULL,
    `age` = NULL,
    `gameExperience` = NULL,
    `contact` = NULL,
    `categories` = NULL,
    `personalProfile` = NULL,
    `userSettings` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `currentPostalCode` = NULL,
    `accountType` = NULL,
    `premiumExpiration` = NULL,
    `matchIndex` = NULL,
    `tags` = NULL,
    `locationLastUpdated` = NULL,
    `distanceFromMe` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new UserLocationResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param accountId accountId
    #' @param locationDisplay locationDisplay
    #' @param display display
    #' @param username username
    #' @param profileImage profileImage
    #' @param profileAvatar profileAvatar
    #' @param aboutUs aboutUs
    #' @param locale locale
    #' @param summaryTitle summaryTitle
    #' @param gender gender
    #' @param age age
    #' @param gameExperience gameExperience
    #' @param contact contact
    #' @param categories categories
    #' @param personalProfile personalProfile
    #' @param userSettings userSettings
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param currentPostalCode currentPostalCode
    #' @param accountType accountType
    #' @param premiumExpiration premiumExpiration
    #' @param matchIndex matchIndex
    #' @param tags tags
    #' @param locationLastUpdated locationLastUpdated
    #' @param distanceFromMe distanceFromMe
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `accountId` = NULL, `locationDisplay` = NULL, `display` = NULL, `username` = NULL, `profileImage` = NULL, `profileAvatar` = NULL, `aboutUs` = NULL, `locale` = NULL, `summaryTitle` = NULL, `gender` = NULL, `age` = NULL, `gameExperience` = NULL, `contact` = NULL, `categories` = NULL, `personalProfile` = NULL, `userSettings` = NULL, `latitude` = NULL, `longitude` = NULL, `currentPostalCode` = NULL, `accountType` = NULL, `premiumExpiration` = NULL, `matchIndex` = NULL, `tags` = NULL, `locationLastUpdated` = NULL, `distanceFromMe` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`accountId`)) {
        if (!(is.numeric(`accountId`) && length(`accountId`) == 1)) {
          stop(paste("Error! Invalid data for `accountId`. Must be an integer:", `accountId`))
        }
        self$`accountId` <- `accountId`
      }
      if (!is.null(`locationDisplay`)) {
        if (!(is.character(`locationDisplay`) && length(`locationDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `locationDisplay`. Must be a string:", `locationDisplay`))
        }
        self$`locationDisplay` <- `locationDisplay`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!is.null(`profileImage`)) {
        if (!(is.character(`profileImage`) && length(`profileImage`) == 1)) {
          stop(paste("Error! Invalid data for `profileImage`. Must be a string:", `profileImage`))
        }
        self$`profileImage` <- `profileImage`
      }
      if (!is.null(`profileAvatar`)) {
        stopifnot(R6::is.R6(`profileAvatar`))
        self$`profileAvatar` <- `profileAvatar`
      }
      if (!is.null(`aboutUs`)) {
        if (!(is.character(`aboutUs`) && length(`aboutUs`) == 1)) {
          stop(paste("Error! Invalid data for `aboutUs`. Must be a string:", `aboutUs`))
        }
        self$`aboutUs` <- `aboutUs`
      }
      if (!is.null(`locale`)) {
        if (!(is.character(`locale`) && length(`locale`) == 1)) {
          stop(paste("Error! Invalid data for `locale`. Must be a string:", `locale`))
        }
        self$`locale` <- `locale`
      }
      if (!is.null(`summaryTitle`)) {
        if (!(is.character(`summaryTitle`) && length(`summaryTitle`) == 1)) {
          stop(paste("Error! Invalid data for `summaryTitle`. Must be a string:", `summaryTitle`))
        }
        self$`summaryTitle` <- `summaryTitle`
      }
      if (!is.null(`gender`)) {
        if (!(`gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", `gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        if (!(is.character(`gender`) && length(`gender`) == 1)) {
          stop(paste("Error! Invalid data for `gender`. Must be a string:", `gender`))
        }
        self$`gender` <- `gender`
      }
      if (!is.null(`age`)) {
        if (!(is.character(`age`) && length(`age`) == 1)) {
          stop(paste("Error! Invalid data for `age`. Must be a string:", `age`))
        }
        self$`age` <- `age`
      }
      if (!is.null(`gameExperience`)) {
        if (!(`gameExperience` %in% c("ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT"))) {
          stop(paste("Error! \"", `gameExperience`, "\" cannot be assigned to `gameExperience`. Must be \"ANY\", \"NEW\", \"BEGINNER\", \"INTERMEDIATE\", \"EXPERT\".", sep = ""))
        }
        if (!(is.character(`gameExperience`) && length(`gameExperience`) == 1)) {
          stop(paste("Error! Invalid data for `gameExperience`. Must be a string:", `gameExperience`))
        }
        self$`gameExperience` <- `gameExperience`
      }
      if (!is.null(`contact`)) {
        stopifnot(R6::is.R6(`contact`))
        self$`contact` <- `contact`
      }
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(R6::is.R6(x)))
        self$`categories` <- `categories`
      }
      if (!is.null(`personalProfile`)) {
        stopifnot(R6::is.R6(`personalProfile`))
        self$`personalProfile` <- `personalProfile`
      }
      if (!is.null(`userSettings`)) {
        stopifnot(R6::is.R6(`userSettings`))
        self$`userSettings` <- `userSettings`
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
      if (!is.null(`currentPostalCode`)) {
        stopifnot(R6::is.R6(`currentPostalCode`))
        self$`currentPostalCode` <- `currentPostalCode`
      }
      if (!is.null(`accountType`)) {
        if (!(is.character(`accountType`) && length(`accountType`) == 1)) {
          stop(paste("Error! Invalid data for `accountType`. Must be a string:", `accountType`))
        }
        self$`accountType` <- `accountType`
      }
      if (!is.null(`premiumExpiration`)) {
        if (!(is.numeric(`premiumExpiration`) && length(`premiumExpiration`) == 1)) {
          stop(paste("Error! Invalid data for `premiumExpiration`. Must be an integer:", `premiumExpiration`))
        }
        self$`premiumExpiration` <- `premiumExpiration`
      }
      if (!is.null(`matchIndex`)) {
        if (!(is.numeric(`matchIndex`) && length(`matchIndex`) == 1)) {
          stop(paste("Error! Invalid data for `matchIndex`. Must be an integer:", `matchIndex`))
        }
        self$`matchIndex` <- `matchIndex`
      }
      if (!is.null(`tags`)) {
        if (!(is.character(`tags`) && length(`tags`) == 1)) {
          stop(paste("Error! Invalid data for `tags`. Must be a string:", `tags`))
        }
        self$`tags` <- `tags`
      }
      if (!is.null(`locationLastUpdated`)) {
        if (!(is.numeric(`locationLastUpdated`) && length(`locationLastUpdated`) == 1)) {
          stop(paste("Error! Invalid data for `locationLastUpdated`. Must be an integer:", `locationLastUpdated`))
        }
        self$`locationLastUpdated` <- `locationLastUpdated`
      }
      if (!is.null(`distanceFromMe`)) {
        if (!(is.character(`distanceFromMe`) && length(`distanceFromMe`) == 1)) {
          stop(paste("Error! Invalid data for `distanceFromMe`. Must be a string:", `distanceFromMe`))
        }
        self$`distanceFromMe` <- `distanceFromMe`
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
    #' @return UserLocationResponse as a base R list.
    #' @examples
    #' # convert array of UserLocationResponse (x) to a data frame
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
    #' Convert UserLocationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserLocationResponseObject <- list()
      if (!is.null(self$`valid`)) {
        UserLocationResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        UserLocationResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        UserLocationResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        UserLocationResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        UserLocationResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        UserLocationResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        UserLocationResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`accountId`)) {
        UserLocationResponseObject[["accountId"]] <-
          self$`accountId`
      }
      if (!is.null(self$`locationDisplay`)) {
        UserLocationResponseObject[["locationDisplay"]] <-
          self$`locationDisplay`
      }
      if (!is.null(self$`display`)) {
        UserLocationResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`username`)) {
        UserLocationResponseObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`profileImage`)) {
        UserLocationResponseObject[["profileImage"]] <-
          self$`profileImage`
      }
      if (!is.null(self$`profileAvatar`)) {
        UserLocationResponseObject[["profileAvatar"]] <-
          self$extractSimpleType(self$`profileAvatar`)
      }
      if (!is.null(self$`aboutUs`)) {
        UserLocationResponseObject[["aboutUs"]] <-
          self$`aboutUs`
      }
      if (!is.null(self$`locale`)) {
        UserLocationResponseObject[["locale"]] <-
          self$`locale`
      }
      if (!is.null(self$`summaryTitle`)) {
        UserLocationResponseObject[["summaryTitle"]] <-
          self$`summaryTitle`
      }
      if (!is.null(self$`gender`)) {
        UserLocationResponseObject[["gender"]] <-
          self$`gender`
      }
      if (!is.null(self$`age`)) {
        UserLocationResponseObject[["age"]] <-
          self$`age`
      }
      if (!is.null(self$`gameExperience`)) {
        UserLocationResponseObject[["gameExperience"]] <-
          self$`gameExperience`
      }
      if (!is.null(self$`contact`)) {
        UserLocationResponseObject[["contact"]] <-
          self$extractSimpleType(self$`contact`)
      }
      if (!is.null(self$`categories`)) {
        UserLocationResponseObject[["categories"]] <-
          self$extractSimpleType(self$`categories`)
      }
      if (!is.null(self$`personalProfile`)) {
        UserLocationResponseObject[["personalProfile"]] <-
          self$extractSimpleType(self$`personalProfile`)
      }
      if (!is.null(self$`userSettings`)) {
        UserLocationResponseObject[["userSettings"]] <-
          self$extractSimpleType(self$`userSettings`)
      }
      if (!is.null(self$`latitude`)) {
        UserLocationResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        UserLocationResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`currentPostalCode`)) {
        UserLocationResponseObject[["currentPostalCode"]] <-
          self$extractSimpleType(self$`currentPostalCode`)
      }
      if (!is.null(self$`accountType`)) {
        UserLocationResponseObject[["accountType"]] <-
          self$`accountType`
      }
      if (!is.null(self$`premiumExpiration`)) {
        UserLocationResponseObject[["premiumExpiration"]] <-
          self$`premiumExpiration`
      }
      if (!is.null(self$`matchIndex`)) {
        UserLocationResponseObject[["matchIndex"]] <-
          self$`matchIndex`
      }
      if (!is.null(self$`tags`)) {
        UserLocationResponseObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`locationLastUpdated`)) {
        UserLocationResponseObject[["locationLastUpdated"]] <-
          self$`locationLastUpdated`
      }
      if (!is.null(self$`distanceFromMe`)) {
        UserLocationResponseObject[["distanceFromMe"]] <-
          self$`distanceFromMe`
      }
      if (!is.null(self$`returning`)) {
        UserLocationResponseObject[["returning"]] <-
          self$`returning`
      }
      return(UserLocationResponseObject)
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
    #' Deserialize JSON string into an instance of UserLocationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserLocationResponse
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
      if (!is.null(this_object$`accountId`)) {
        self$`accountId` <- this_object$`accountId`
      }
      if (!is.null(this_object$`locationDisplay`)) {
        self$`locationDisplay` <- this_object$`locationDisplay`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`profileImage`)) {
        self$`profileImage` <- this_object$`profileImage`
      }
      if (!is.null(this_object$`profileAvatar`)) {
        `profileavatar_object` <- AssetShortResponse$new()
        `profileavatar_object`$fromJSON(jsonlite::toJSON(this_object$`profileAvatar`, auto_unbox = TRUE, digits = NA))
        self$`profileAvatar` <- `profileavatar_object`
      }
      if (!is.null(this_object$`aboutUs`)) {
        self$`aboutUs` <- this_object$`aboutUs`
      }
      if (!is.null(this_object$`locale`)) {
        self$`locale` <- this_object$`locale`
      }
      if (!is.null(this_object$`summaryTitle`)) {
        self$`summaryTitle` <- this_object$`summaryTitle`
      }
      if (!is.null(this_object$`gender`)) {
        if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
          stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
        }
        self$`gender` <- this_object$`gender`
      }
      if (!is.null(this_object$`age`)) {
        self$`age` <- this_object$`age`
      }
      if (!is.null(this_object$`gameExperience`)) {
        if (!is.null(this_object$`gameExperience`) && !(this_object$`gameExperience` %in% c("ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT"))) {
          stop(paste("Error! \"", this_object$`gameExperience`, "\" cannot be assigned to `gameExperience`. Must be \"ANY\", \"NEW\", \"BEGINNER\", \"INTERMEDIATE\", \"EXPERT\".", sep = ""))
        }
        self$`gameExperience` <- this_object$`gameExperience`
      }
      if (!is.null(this_object$`contact`)) {
        `contact_object` <- ContactResponse$new()
        `contact_object`$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
        self$`contact` <- `contact_object`
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`personalProfile`)) {
        `personalprofile_object` <- PersonalProfileResponse$new()
        `personalprofile_object`$fromJSON(jsonlite::toJSON(this_object$`personalProfile`, auto_unbox = TRUE, digits = NA))
        self$`personalProfile` <- `personalprofile_object`
      }
      if (!is.null(this_object$`userSettings`)) {
        `usersettings_object` <- UserSettingsResponse$new()
        `usersettings_object`$fromJSON(jsonlite::toJSON(this_object$`userSettings`, auto_unbox = TRUE, digits = NA))
        self$`userSettings` <- `usersettings_object`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`currentPostalCode`)) {
        `currentpostalcode_object` <- PostalCodeResponse$new()
        `currentpostalcode_object`$fromJSON(jsonlite::toJSON(this_object$`currentPostalCode`, auto_unbox = TRUE, digits = NA))
        self$`currentPostalCode` <- `currentpostalcode_object`
      }
      if (!is.null(this_object$`accountType`)) {
        self$`accountType` <- this_object$`accountType`
      }
      if (!is.null(this_object$`premiumExpiration`)) {
        self$`premiumExpiration` <- this_object$`premiumExpiration`
      }
      if (!is.null(this_object$`matchIndex`)) {
        self$`matchIndex` <- this_object$`matchIndex`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- this_object$`tags`
      }
      if (!is.null(this_object$`locationLastUpdated`)) {
        self$`locationLastUpdated` <- this_object$`locationLastUpdated`
      }
      if (!is.null(this_object$`distanceFromMe`)) {
        self$`distanceFromMe` <- this_object$`distanceFromMe`
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
    #' @return UserLocationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserLocationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserLocationResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`accountId` <- this_object$`accountId`
      self$`locationDisplay` <- this_object$`locationDisplay`
      self$`display` <- this_object$`display`
      self$`username` <- this_object$`username`
      self$`profileImage` <- this_object$`profileImage`
      self$`profileAvatar` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`profileAvatar`, auto_unbox = TRUE, digits = NA))
      self$`aboutUs` <- this_object$`aboutUs`
      self$`locale` <- this_object$`locale`
      self$`summaryTitle` <- this_object$`summaryTitle`
      if (!is.null(this_object$`gender`) && !(this_object$`gender` %in% c("MALE", "FEMALE", "ANY"))) {
        stop(paste("Error! \"", this_object$`gender`, "\" cannot be assigned to `gender`. Must be \"MALE\", \"FEMALE\", \"ANY\".", sep = ""))
      }
      self$`gender` <- this_object$`gender`
      self$`age` <- this_object$`age`
      if (!is.null(this_object$`gameExperience`) && !(this_object$`gameExperience` %in% c("ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT"))) {
        stop(paste("Error! \"", this_object$`gameExperience`, "\" cannot be assigned to `gameExperience`. Must be \"ANY\", \"NEW\", \"BEGINNER\", \"INTERMEDIATE\", \"EXPERT\".", sep = ""))
      }
      self$`gameExperience` <- this_object$`gameExperience`
      self$`contact` <- ContactResponse$new()$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[CategoryResponse]", loadNamespace("openapi"))
      self$`personalProfile` <- PersonalProfileResponse$new()$fromJSON(jsonlite::toJSON(this_object$`personalProfile`, auto_unbox = TRUE, digits = NA))
      self$`userSettings` <- UserSettingsResponse$new()$fromJSON(jsonlite::toJSON(this_object$`userSettings`, auto_unbox = TRUE, digits = NA))
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`currentPostalCode` <- PostalCodeResponse$new()$fromJSON(jsonlite::toJSON(this_object$`currentPostalCode`, auto_unbox = TRUE, digits = NA))
      self$`accountType` <- this_object$`accountType`
      self$`premiumExpiration` <- this_object$`premiumExpiration`
      self$`matchIndex` <- this_object$`matchIndex`
      self$`tags` <- this_object$`tags`
      self$`locationLastUpdated` <- this_object$`locationLastUpdated`
      self$`distanceFromMe` <- this_object$`distanceFromMe`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to UserLocationResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserLocationResponse
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
# UserLocationResponse$unlock()
#
## Below is an example to define the print function
# UserLocationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserLocationResponse$lock()

