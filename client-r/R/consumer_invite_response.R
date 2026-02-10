#' Create a new ConsumerInviteResponse
#'
#' @description
#' ConsumerInviteResponse Class
#'
#' @docType class
#' @title ConsumerInviteResponse
#' @description ConsumerInviteResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field inviterId  integer [optional]
#' @field inviter  \link{AccountShortResponse} [optional]
#' @field connection  \link{ConnectionResponse} [optional]
#' @field inviteText  character [optional]
#' @field token  character [optional]
#' @field albumCoverUrl  character [optional]
#' @field albumTitle  character [optional]
#' @field appName  character [optional]
#' @field welcomeText  character [optional]
#' @field application  \link{ApplicationShortResponse} [optional]
#' @field retailerLocation  \link{RetailerLocationResponse} [optional]
#' @field offer  \link{OfferShortResponse} [optional]
#' @field album  \link{AlbumResponse} [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConsumerInviteResponse <- R6::R6Class(
  "ConsumerInviteResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `inviterId` = NULL,
    `inviter` = NULL,
    `connection` = NULL,
    `inviteText` = NULL,
    `token` = NULL,
    `albumCoverUrl` = NULL,
    `albumTitle` = NULL,
    `appName` = NULL,
    `welcomeText` = NULL,
    `application` = NULL,
    `retailerLocation` = NULL,
    `offer` = NULL,
    `album` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ConsumerInviteResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param inviterId inviterId
    #' @param inviter inviter
    #' @param connection connection
    #' @param inviteText inviteText
    #' @param token token
    #' @param albumCoverUrl albumCoverUrl
    #' @param albumTitle albumTitle
    #' @param appName appName
    #' @param welcomeText welcomeText
    #' @param application application
    #' @param retailerLocation retailerLocation
    #' @param offer offer
    #' @param album album
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `inviterId` = NULL, `inviter` = NULL, `connection` = NULL, `inviteText` = NULL, `token` = NULL, `albumCoverUrl` = NULL, `albumTitle` = NULL, `appName` = NULL, `welcomeText` = NULL, `application` = NULL, `retailerLocation` = NULL, `offer` = NULL, `album` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`inviterId`)) {
        if (!(is.numeric(`inviterId`) && length(`inviterId`) == 1)) {
          stop(paste("Error! Invalid data for `inviterId`. Must be an integer:", `inviterId`))
        }
        self$`inviterId` <- `inviterId`
      }
      if (!is.null(`inviter`)) {
        stopifnot(R6::is.R6(`inviter`))
        self$`inviter` <- `inviter`
      }
      if (!is.null(`connection`)) {
        stopifnot(R6::is.R6(`connection`))
        self$`connection` <- `connection`
      }
      if (!is.null(`inviteText`)) {
        if (!(is.character(`inviteText`) && length(`inviteText`) == 1)) {
          stop(paste("Error! Invalid data for `inviteText`. Must be a string:", `inviteText`))
        }
        self$`inviteText` <- `inviteText`
      }
      if (!is.null(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
      if (!is.null(`albumCoverUrl`)) {
        if (!(is.character(`albumCoverUrl`) && length(`albumCoverUrl`) == 1)) {
          stop(paste("Error! Invalid data for `albumCoverUrl`. Must be a string:", `albumCoverUrl`))
        }
        self$`albumCoverUrl` <- `albumCoverUrl`
      }
      if (!is.null(`albumTitle`)) {
        if (!(is.character(`albumTitle`) && length(`albumTitle`) == 1)) {
          stop(paste("Error! Invalid data for `albumTitle`. Must be a string:", `albumTitle`))
        }
        self$`albumTitle` <- `albumTitle`
      }
      if (!is.null(`appName`)) {
        if (!(is.character(`appName`) && length(`appName`) == 1)) {
          stop(paste("Error! Invalid data for `appName`. Must be a string:", `appName`))
        }
        self$`appName` <- `appName`
      }
      if (!is.null(`welcomeText`)) {
        if (!(is.character(`welcomeText`) && length(`welcomeText`) == 1)) {
          stop(paste("Error! Invalid data for `welcomeText`. Must be a string:", `welcomeText`))
        }
        self$`welcomeText` <- `welcomeText`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`retailerLocation`)) {
        stopifnot(R6::is.R6(`retailerLocation`))
        self$`retailerLocation` <- `retailerLocation`
      }
      if (!is.null(`offer`)) {
        stopifnot(R6::is.R6(`offer`))
        self$`offer` <- `offer`
      }
      if (!is.null(`album`)) {
        stopifnot(R6::is.R6(`album`))
        self$`album` <- `album`
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
    #' @return ConsumerInviteResponse as a base R list.
    #' @examples
    #' # convert array of ConsumerInviteResponse (x) to a data frame
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
    #' Convert ConsumerInviteResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConsumerInviteResponseObject <- list()
      if (!is.null(self$`valid`)) {
        ConsumerInviteResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ConsumerInviteResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ConsumerInviteResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ConsumerInviteResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ConsumerInviteResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ConsumerInviteResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ConsumerInviteResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`inviterId`)) {
        ConsumerInviteResponseObject[["inviterId"]] <-
          self$`inviterId`
      }
      if (!is.null(self$`inviter`)) {
        ConsumerInviteResponseObject[["inviter"]] <-
          self$extractSimpleType(self$`inviter`)
      }
      if (!is.null(self$`connection`)) {
        ConsumerInviteResponseObject[["connection"]] <-
          self$extractSimpleType(self$`connection`)
      }
      if (!is.null(self$`inviteText`)) {
        ConsumerInviteResponseObject[["inviteText"]] <-
          self$`inviteText`
      }
      if (!is.null(self$`token`)) {
        ConsumerInviteResponseObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`albumCoverUrl`)) {
        ConsumerInviteResponseObject[["albumCoverUrl"]] <-
          self$`albumCoverUrl`
      }
      if (!is.null(self$`albumTitle`)) {
        ConsumerInviteResponseObject[["albumTitle"]] <-
          self$`albumTitle`
      }
      if (!is.null(self$`appName`)) {
        ConsumerInviteResponseObject[["appName"]] <-
          self$`appName`
      }
      if (!is.null(self$`welcomeText`)) {
        ConsumerInviteResponseObject[["welcomeText"]] <-
          self$`welcomeText`
      }
      if (!is.null(self$`application`)) {
        ConsumerInviteResponseObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`retailerLocation`)) {
        ConsumerInviteResponseObject[["retailerLocation"]] <-
          self$extractSimpleType(self$`retailerLocation`)
      }
      if (!is.null(self$`offer`)) {
        ConsumerInviteResponseObject[["offer"]] <-
          self$extractSimpleType(self$`offer`)
      }
      if (!is.null(self$`album`)) {
        ConsumerInviteResponseObject[["album"]] <-
          self$extractSimpleType(self$`album`)
      }
      if (!is.null(self$`returning`)) {
        ConsumerInviteResponseObject[["returning"]] <-
          self$`returning`
      }
      return(ConsumerInviteResponseObject)
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
    #' Deserialize JSON string into an instance of ConsumerInviteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsumerInviteResponse
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
      if (!is.null(this_object$`inviterId`)) {
        self$`inviterId` <- this_object$`inviterId`
      }
      if (!is.null(this_object$`inviter`)) {
        `inviter_object` <- AccountShortResponse$new()
        `inviter_object`$fromJSON(jsonlite::toJSON(this_object$`inviter`, auto_unbox = TRUE, digits = NA))
        self$`inviter` <- `inviter_object`
      }
      if (!is.null(this_object$`connection`)) {
        `connection_object` <- ConnectionResponse$new()
        `connection_object`$fromJSON(jsonlite::toJSON(this_object$`connection`, auto_unbox = TRUE, digits = NA))
        self$`connection` <- `connection_object`
      }
      if (!is.null(this_object$`inviteText`)) {
        self$`inviteText` <- this_object$`inviteText`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`albumCoverUrl`)) {
        self$`albumCoverUrl` <- this_object$`albumCoverUrl`
      }
      if (!is.null(this_object$`albumTitle`)) {
        self$`albumTitle` <- this_object$`albumTitle`
      }
      if (!is.null(this_object$`appName`)) {
        self$`appName` <- this_object$`appName`
      }
      if (!is.null(this_object$`welcomeText`)) {
        self$`welcomeText` <- this_object$`welcomeText`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- ApplicationShortResponse$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`retailerLocation`)) {
        `retailerlocation_object` <- RetailerLocationResponse$new()
        `retailerlocation_object`$fromJSON(jsonlite::toJSON(this_object$`retailerLocation`, auto_unbox = TRUE, digits = NA))
        self$`retailerLocation` <- `retailerlocation_object`
      }
      if (!is.null(this_object$`offer`)) {
        `offer_object` <- OfferShortResponse$new()
        `offer_object`$fromJSON(jsonlite::toJSON(this_object$`offer`, auto_unbox = TRUE, digits = NA))
        self$`offer` <- `offer_object`
      }
      if (!is.null(this_object$`album`)) {
        `album_object` <- AlbumResponse$new()
        `album_object`$fromJSON(jsonlite::toJSON(this_object$`album`, auto_unbox = TRUE, digits = NA))
        self$`album` <- `album_object`
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
    #' @return ConsumerInviteResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConsumerInviteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConsumerInviteResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`inviterId` <- this_object$`inviterId`
      self$`inviter` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`inviter`, auto_unbox = TRUE, digits = NA))
      self$`connection` <- ConnectionResponse$new()$fromJSON(jsonlite::toJSON(this_object$`connection`, auto_unbox = TRUE, digits = NA))
      self$`inviteText` <- this_object$`inviteText`
      self$`token` <- this_object$`token`
      self$`albumCoverUrl` <- this_object$`albumCoverUrl`
      self$`albumTitle` <- this_object$`albumTitle`
      self$`appName` <- this_object$`appName`
      self$`welcomeText` <- this_object$`welcomeText`
      self$`application` <- ApplicationShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`retailerLocation` <- RetailerLocationResponse$new()$fromJSON(jsonlite::toJSON(this_object$`retailerLocation`, auto_unbox = TRUE, digits = NA))
      self$`offer` <- OfferShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`offer`, auto_unbox = TRUE, digits = NA))
      self$`album` <- AlbumResponse$new()$fromJSON(jsonlite::toJSON(this_object$`album`, auto_unbox = TRUE, digits = NA))
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConsumerInviteResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConsumerInviteResponse
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
# ConsumerInviteResponse$unlock()
#
## Below is an example to define the print function
# ConsumerInviteResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConsumerInviteResponse$lock()

