#' Create a new UserActivityResponse
#'
#' @description
#' UserActivityResponse Class
#'
#' @docType class
#' @title UserActivityResponse
#' @description UserActivityResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field created  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field tag  character [optional]
#' @field customId  integer [optional]
#' @field customType  character [optional]
#' @field userId  integer [optional]
#' @field username  character [optional]
#' @field appTitle  character [optional]
#' @field appId  integer [optional]
#' @field appUrl  character [optional]
#' @field appDescription  character [optional]
#' @field imageURL  character [optional]
#' @field profileImage  character [optional]
#' @field fields  character [optional]
#' @field id  integer [optional]
#' @field customText  character [optional]
#' @field customValue  numeric [optional]
#' @field customMessage  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserActivityResponse <- R6::R6Class(
  "UserActivityResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `created` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `tag` = NULL,
    `customId` = NULL,
    `customType` = NULL,
    `userId` = NULL,
    `username` = NULL,
    `appTitle` = NULL,
    `appId` = NULL,
    `appUrl` = NULL,
    `appDescription` = NULL,
    `imageURL` = NULL,
    `profileImage` = NULL,
    `fields` = NULL,
    `id` = NULL,
    `customText` = NULL,
    `customValue` = NULL,
    `customMessage` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new UserActivityResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param created created
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param tag tag
    #' @param customId customId
    #' @param customType customType
    #' @param userId userId
    #' @param username username
    #' @param appTitle appTitle
    #' @param appId appId
    #' @param appUrl appUrl
    #' @param appDescription appDescription
    #' @param imageURL imageURL
    #' @param profileImage profileImage
    #' @param fields fields
    #' @param id id
    #' @param customText customText
    #' @param customValue customValue
    #' @param customMessage customMessage
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `created` = NULL, `latitude` = NULL, `longitude` = NULL, `tag` = NULL, `customId` = NULL, `customType` = NULL, `userId` = NULL, `username` = NULL, `appTitle` = NULL, `appId` = NULL, `appUrl` = NULL, `appDescription` = NULL, `imageURL` = NULL, `profileImage` = NULL, `fields` = NULL, `id` = NULL, `customText` = NULL, `customValue` = NULL, `customMessage` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`created`)) {
        if (!is.character(`created`)) {
          stop(paste("Error! Invalid data for `created`. Must be a string:", `created`))
        }
        self$`created` <- `created`
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
      if (!is.null(`tag`)) {
        if (!(is.character(`tag`) && length(`tag`) == 1)) {
          stop(paste("Error! Invalid data for `tag`. Must be a string:", `tag`))
        }
        self$`tag` <- `tag`
      }
      if (!is.null(`customId`)) {
        if (!(is.numeric(`customId`) && length(`customId`) == 1)) {
          stop(paste("Error! Invalid data for `customId`. Must be an integer:", `customId`))
        }
        self$`customId` <- `customId`
      }
      if (!is.null(`customType`)) {
        if (!(is.character(`customType`) && length(`customType`) == 1)) {
          stop(paste("Error! Invalid data for `customType`. Must be a string:", `customType`))
        }
        self$`customType` <- `customType`
      }
      if (!is.null(`userId`)) {
        if (!(is.numeric(`userId`) && length(`userId`) == 1)) {
          stop(paste("Error! Invalid data for `userId`. Must be an integer:", `userId`))
        }
        self$`userId` <- `userId`
      }
      if (!is.null(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!is.null(`appTitle`)) {
        if (!(is.character(`appTitle`) && length(`appTitle`) == 1)) {
          stop(paste("Error! Invalid data for `appTitle`. Must be a string:", `appTitle`))
        }
        self$`appTitle` <- `appTitle`
      }
      if (!is.null(`appId`)) {
        if (!(is.numeric(`appId`) && length(`appId`) == 1)) {
          stop(paste("Error! Invalid data for `appId`. Must be an integer:", `appId`))
        }
        self$`appId` <- `appId`
      }
      if (!is.null(`appUrl`)) {
        if (!(is.character(`appUrl`) && length(`appUrl`) == 1)) {
          stop(paste("Error! Invalid data for `appUrl`. Must be a string:", `appUrl`))
        }
        self$`appUrl` <- `appUrl`
      }
      if (!is.null(`appDescription`)) {
        if (!(is.character(`appDescription`) && length(`appDescription`) == 1)) {
          stop(paste("Error! Invalid data for `appDescription`. Must be a string:", `appDescription`))
        }
        self$`appDescription` <- `appDescription`
      }
      if (!is.null(`imageURL`)) {
        if (!(is.character(`imageURL`) && length(`imageURL`) == 1)) {
          stop(paste("Error! Invalid data for `imageURL`. Must be a string:", `imageURL`))
        }
        self$`imageURL` <- `imageURL`
      }
      if (!is.null(`profileImage`)) {
        if (!(is.character(`profileImage`) && length(`profileImage`) == 1)) {
          stop(paste("Error! Invalid data for `profileImage`. Must be a string:", `profileImage`))
        }
        self$`profileImage` <- `profileImage`
      }
      if (!is.null(`fields`)) {
        if (!(is.character(`fields`) && length(`fields`) == 1)) {
          stop(paste("Error! Invalid data for `fields`. Must be a string:", `fields`))
        }
        self$`fields` <- `fields`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`customText`)) {
        if (!(is.character(`customText`) && length(`customText`) == 1)) {
          stop(paste("Error! Invalid data for `customText`. Must be a string:", `customText`))
        }
        self$`customText` <- `customText`
      }
      if (!is.null(`customValue`)) {
        if (!(is.numeric(`customValue`) && length(`customValue`) == 1)) {
          stop(paste("Error! Invalid data for `customValue`. Must be a number:", `customValue`))
        }
        self$`customValue` <- `customValue`
      }
      if (!is.null(`customMessage`)) {
        if (!(is.character(`customMessage`) && length(`customMessage`) == 1)) {
          stop(paste("Error! Invalid data for `customMessage`. Must be a string:", `customMessage`))
        }
        self$`customMessage` <- `customMessage`
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
    #' @return UserActivityResponse as a base R list.
    #' @examples
    #' # convert array of UserActivityResponse (x) to a data frame
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
    #' Convert UserActivityResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserActivityResponseObject <- list()
      if (!is.null(self$`valid`)) {
        UserActivityResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        UserActivityResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        UserActivityResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        UserActivityResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        UserActivityResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        UserActivityResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        UserActivityResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`created`)) {
        UserActivityResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`latitude`)) {
        UserActivityResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        UserActivityResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`tag`)) {
        UserActivityResponseObject[["tag"]] <-
          self$`tag`
      }
      if (!is.null(self$`customId`)) {
        UserActivityResponseObject[["customId"]] <-
          self$`customId`
      }
      if (!is.null(self$`customType`)) {
        UserActivityResponseObject[["customType"]] <-
          self$`customType`
      }
      if (!is.null(self$`userId`)) {
        UserActivityResponseObject[["userId"]] <-
          self$`userId`
      }
      if (!is.null(self$`username`)) {
        UserActivityResponseObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`appTitle`)) {
        UserActivityResponseObject[["appTitle"]] <-
          self$`appTitle`
      }
      if (!is.null(self$`appId`)) {
        UserActivityResponseObject[["appId"]] <-
          self$`appId`
      }
      if (!is.null(self$`appUrl`)) {
        UserActivityResponseObject[["appUrl"]] <-
          self$`appUrl`
      }
      if (!is.null(self$`appDescription`)) {
        UserActivityResponseObject[["appDescription"]] <-
          self$`appDescription`
      }
      if (!is.null(self$`imageURL`)) {
        UserActivityResponseObject[["imageURL"]] <-
          self$`imageURL`
      }
      if (!is.null(self$`profileImage`)) {
        UserActivityResponseObject[["profileImage"]] <-
          self$`profileImage`
      }
      if (!is.null(self$`fields`)) {
        UserActivityResponseObject[["fields"]] <-
          self$`fields`
      }
      if (!is.null(self$`id`)) {
        UserActivityResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`customText`)) {
        UserActivityResponseObject[["customText"]] <-
          self$`customText`
      }
      if (!is.null(self$`customValue`)) {
        UserActivityResponseObject[["customValue"]] <-
          self$`customValue`
      }
      if (!is.null(self$`customMessage`)) {
        UserActivityResponseObject[["customMessage"]] <-
          self$`customMessage`
      }
      if (!is.null(self$`returning`)) {
        UserActivityResponseObject[["returning"]] <-
          self$`returning`
      }
      return(UserActivityResponseObject)
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
    #' Deserialize JSON string into an instance of UserActivityResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserActivityResponse
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
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`tag`)) {
        self$`tag` <- this_object$`tag`
      }
      if (!is.null(this_object$`customId`)) {
        self$`customId` <- this_object$`customId`
      }
      if (!is.null(this_object$`customType`)) {
        self$`customType` <- this_object$`customType`
      }
      if (!is.null(this_object$`userId`)) {
        self$`userId` <- this_object$`userId`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`appTitle`)) {
        self$`appTitle` <- this_object$`appTitle`
      }
      if (!is.null(this_object$`appId`)) {
        self$`appId` <- this_object$`appId`
      }
      if (!is.null(this_object$`appUrl`)) {
        self$`appUrl` <- this_object$`appUrl`
      }
      if (!is.null(this_object$`appDescription`)) {
        self$`appDescription` <- this_object$`appDescription`
      }
      if (!is.null(this_object$`imageURL`)) {
        self$`imageURL` <- this_object$`imageURL`
      }
      if (!is.null(this_object$`profileImage`)) {
        self$`profileImage` <- this_object$`profileImage`
      }
      if (!is.null(this_object$`fields`)) {
        self$`fields` <- this_object$`fields`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`customText`)) {
        self$`customText` <- this_object$`customText`
      }
      if (!is.null(this_object$`customValue`)) {
        self$`customValue` <- this_object$`customValue`
      }
      if (!is.null(this_object$`customMessage`)) {
        self$`customMessage` <- this_object$`customMessage`
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
    #' @return UserActivityResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserActivityResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserActivityResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`created` <- this_object$`created`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`tag` <- this_object$`tag`
      self$`customId` <- this_object$`customId`
      self$`customType` <- this_object$`customType`
      self$`userId` <- this_object$`userId`
      self$`username` <- this_object$`username`
      self$`appTitle` <- this_object$`appTitle`
      self$`appId` <- this_object$`appId`
      self$`appUrl` <- this_object$`appUrl`
      self$`appDescription` <- this_object$`appDescription`
      self$`imageURL` <- this_object$`imageURL`
      self$`profileImage` <- this_object$`profileImage`
      self$`fields` <- this_object$`fields`
      self$`id` <- this_object$`id`
      self$`customText` <- this_object$`customText`
      self$`customValue` <- this_object$`customValue`
      self$`customMessage` <- this_object$`customMessage`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to UserActivityResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserActivityResponse
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
# UserActivityResponse$unlock()
#
## Below is an example to define the print function
# UserActivityResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserActivityResponse$lock()

