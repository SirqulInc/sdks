#' Create a new ApplicationMiniResponse
#'
#' @description
#' ApplicationMiniResponse Class
#'
#' @docType class
#' @title ApplicationMiniResponse
#' @description ApplicationMiniResponse Class
#' @format An \code{R6Class} generator object
#' @field valid  character [optional]
#' @field message  character [optional]
#' @field version  numeric [optional]
#' @field serializeNulls  character [optional]
#' @field startTimeLog  integer [optional]
#' @field errorCode  character [optional]
#' @field request  list(\link{NameStringValueResponse}) [optional]
#' @field applicationId  integer [optional]
#' @field appKey  character [optional]
#' @field title  character [optional]
#' @field currentBuildVersion  character [optional]
#' @field currentApiVersion  character [optional]
#' @field appIcon  \link{AssetShortResponse} [optional]
#' @field appLogo  \link{AssetShortResponse} [optional]
#' @field active  character [optional]
#' @field returning  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationMiniResponse <- R6::R6Class(
  "ApplicationMiniResponse",
  public = list(
    `valid` = NULL,
    `message` = NULL,
    `version` = NULL,
    `serializeNulls` = NULL,
    `startTimeLog` = NULL,
    `errorCode` = NULL,
    `request` = NULL,
    `applicationId` = NULL,
    `appKey` = NULL,
    `title` = NULL,
    `currentBuildVersion` = NULL,
    `currentApiVersion` = NULL,
    `appIcon` = NULL,
    `appLogo` = NULL,
    `active` = NULL,
    `returning` = NULL,

    #' @description
    #' Initialize a new ApplicationMiniResponse class.
    #'
    #' @param valid valid
    #' @param message message
    #' @param version version
    #' @param serializeNulls serializeNulls
    #' @param startTimeLog startTimeLog
    #' @param errorCode errorCode
    #' @param request request
    #' @param applicationId applicationId
    #' @param appKey appKey
    #' @param title title
    #' @param currentBuildVersion currentBuildVersion
    #' @param currentApiVersion currentApiVersion
    #' @param appIcon appIcon
    #' @param appLogo appLogo
    #' @param active active
    #' @param returning returning
    #' @param ... Other optional arguments.
    initialize = function(`valid` = NULL, `message` = NULL, `version` = NULL, `serializeNulls` = NULL, `startTimeLog` = NULL, `errorCode` = NULL, `request` = NULL, `applicationId` = NULL, `appKey` = NULL, `title` = NULL, `currentBuildVersion` = NULL, `currentApiVersion` = NULL, `appIcon` = NULL, `appLogo` = NULL, `active` = NULL, `returning` = NULL, ...) {
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
      if (!is.null(`applicationId`)) {
        if (!(is.numeric(`applicationId`) && length(`applicationId`) == 1)) {
          stop(paste("Error! Invalid data for `applicationId`. Must be an integer:", `applicationId`))
        }
        self$`applicationId` <- `applicationId`
      }
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`currentBuildVersion`)) {
        if (!(is.character(`currentBuildVersion`) && length(`currentBuildVersion`) == 1)) {
          stop(paste("Error! Invalid data for `currentBuildVersion`. Must be a string:", `currentBuildVersion`))
        }
        self$`currentBuildVersion` <- `currentBuildVersion`
      }
      if (!is.null(`currentApiVersion`)) {
        if (!(is.character(`currentApiVersion`) && length(`currentApiVersion`) == 1)) {
          stop(paste("Error! Invalid data for `currentApiVersion`. Must be a string:", `currentApiVersion`))
        }
        self$`currentApiVersion` <- `currentApiVersion`
      }
      if (!is.null(`appIcon`)) {
        stopifnot(R6::is.R6(`appIcon`))
        self$`appIcon` <- `appIcon`
      }
      if (!is.null(`appLogo`)) {
        stopifnot(R6::is.R6(`appLogo`))
        self$`appLogo` <- `appLogo`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
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
    #' @return ApplicationMiniResponse as a base R list.
    #' @examples
    #' # convert array of ApplicationMiniResponse (x) to a data frame
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
    #' Convert ApplicationMiniResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApplicationMiniResponseObject <- list()
      if (!is.null(self$`valid`)) {
        ApplicationMiniResponseObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`message`)) {
        ApplicationMiniResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`version`)) {
        ApplicationMiniResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`serializeNulls`)) {
        ApplicationMiniResponseObject[["serializeNulls"]] <-
          self$`serializeNulls`
      }
      if (!is.null(self$`startTimeLog`)) {
        ApplicationMiniResponseObject[["startTimeLog"]] <-
          self$`startTimeLog`
      }
      if (!is.null(self$`errorCode`)) {
        ApplicationMiniResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`request`)) {
        ApplicationMiniResponseObject[["request"]] <-
          self$extractSimpleType(self$`request`)
      }
      if (!is.null(self$`applicationId`)) {
        ApplicationMiniResponseObject[["applicationId"]] <-
          self$`applicationId`
      }
      if (!is.null(self$`appKey`)) {
        ApplicationMiniResponseObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`title`)) {
        ApplicationMiniResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`currentBuildVersion`)) {
        ApplicationMiniResponseObject[["currentBuildVersion"]] <-
          self$`currentBuildVersion`
      }
      if (!is.null(self$`currentApiVersion`)) {
        ApplicationMiniResponseObject[["currentApiVersion"]] <-
          self$`currentApiVersion`
      }
      if (!is.null(self$`appIcon`)) {
        ApplicationMiniResponseObject[["appIcon"]] <-
          self$extractSimpleType(self$`appIcon`)
      }
      if (!is.null(self$`appLogo`)) {
        ApplicationMiniResponseObject[["appLogo"]] <-
          self$extractSimpleType(self$`appLogo`)
      }
      if (!is.null(self$`active`)) {
        ApplicationMiniResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`returning`)) {
        ApplicationMiniResponseObject[["returning"]] <-
          self$`returning`
      }
      return(ApplicationMiniResponseObject)
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
    #' Deserialize JSON string into an instance of ApplicationMiniResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationMiniResponse
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
      if (!is.null(this_object$`applicationId`)) {
        self$`applicationId` <- this_object$`applicationId`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`currentBuildVersion`)) {
        self$`currentBuildVersion` <- this_object$`currentBuildVersion`
      }
      if (!is.null(this_object$`currentApiVersion`)) {
        self$`currentApiVersion` <- this_object$`currentApiVersion`
      }
      if (!is.null(this_object$`appIcon`)) {
        `appicon_object` <- AssetShortResponse$new()
        `appicon_object`$fromJSON(jsonlite::toJSON(this_object$`appIcon`, auto_unbox = TRUE, digits = NA))
        self$`appIcon` <- `appicon_object`
      }
      if (!is.null(this_object$`appLogo`)) {
        `applogo_object` <- AssetShortResponse$new()
        `applogo_object`$fromJSON(jsonlite::toJSON(this_object$`appLogo`, auto_unbox = TRUE, digits = NA))
        self$`appLogo` <- `applogo_object`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
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
    #' @return ApplicationMiniResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationMiniResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationMiniResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid` <- this_object$`valid`
      self$`message` <- this_object$`message`
      self$`version` <- this_object$`version`
      self$`serializeNulls` <- this_object$`serializeNulls`
      self$`startTimeLog` <- this_object$`startTimeLog`
      self$`errorCode` <- this_object$`errorCode`
      self$`request` <- ApiClient$new()$deserializeObj(this_object$`request`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`applicationId` <- this_object$`applicationId`
      self$`appKey` <- this_object$`appKey`
      self$`title` <- this_object$`title`
      self$`currentBuildVersion` <- this_object$`currentBuildVersion`
      self$`currentApiVersion` <- this_object$`currentApiVersion`
      self$`appIcon` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`appIcon`, auto_unbox = TRUE, digits = NA))
      self$`appLogo` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`appLogo`, auto_unbox = TRUE, digits = NA))
      self$`active` <- this_object$`active`
      self$`returning` <- this_object$`returning`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApplicationMiniResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApplicationMiniResponse
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
# ApplicationMiniResponse$unlock()
#
## Below is an example to define the print function
# ApplicationMiniResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApplicationMiniResponse$lock()

