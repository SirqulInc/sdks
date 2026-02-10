#' Create a new ActivityResponse
#'
#' @description
#' ActivityResponse Class
#'
#' @docType class
#' @title ActivityResponse
#' @description ActivityResponse Class
#' @format An \code{R6Class} generator object
#' @field activityId  integer [optional]
#' @field created  integer [optional]
#' @field appKey  character [optional]
#' @field targetId  integer [optional]
#' @field targetType  character [optional]
#' @field targetLegacyId  character [optional]
#' @field targetDescription  character [optional]
#' @field targetActive  character [optional]
#' @field action  character [optional]
#' @field slaveEntityId  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ActivityResponse <- R6::R6Class(
  "ActivityResponse",
  public = list(
    `activityId` = NULL,
    `created` = NULL,
    `appKey` = NULL,
    `targetId` = NULL,
    `targetType` = NULL,
    `targetLegacyId` = NULL,
    `targetDescription` = NULL,
    `targetActive` = NULL,
    `action` = NULL,
    `slaveEntityId` = NULL,

    #' @description
    #' Initialize a new ActivityResponse class.
    #'
    #' @param activityId activityId
    #' @param created created
    #' @param appKey appKey
    #' @param targetId targetId
    #' @param targetType targetType
    #' @param targetLegacyId targetLegacyId
    #' @param targetDescription targetDescription
    #' @param targetActive targetActive
    #' @param action action
    #' @param slaveEntityId slaveEntityId
    #' @param ... Other optional arguments.
    initialize = function(`activityId` = NULL, `created` = NULL, `appKey` = NULL, `targetId` = NULL, `targetType` = NULL, `targetLegacyId` = NULL, `targetDescription` = NULL, `targetActive` = NULL, `action` = NULL, `slaveEntityId` = NULL, ...) {
      if (!is.null(`activityId`)) {
        if (!(is.numeric(`activityId`) && length(`activityId`) == 1)) {
          stop(paste("Error! Invalid data for `activityId`. Must be an integer:", `activityId`))
        }
        self$`activityId` <- `activityId`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
      }
      if (!is.null(`targetId`)) {
        if (!(is.numeric(`targetId`) && length(`targetId`) == 1)) {
          stop(paste("Error! Invalid data for `targetId`. Must be an integer:", `targetId`))
        }
        self$`targetId` <- `targetId`
      }
      if (!is.null(`targetType`)) {
        if (!(is.character(`targetType`) && length(`targetType`) == 1)) {
          stop(paste("Error! Invalid data for `targetType`. Must be a string:", `targetType`))
        }
        self$`targetType` <- `targetType`
      }
      if (!is.null(`targetLegacyId`)) {
        if (!(is.character(`targetLegacyId`) && length(`targetLegacyId`) == 1)) {
          stop(paste("Error! Invalid data for `targetLegacyId`. Must be a string:", `targetLegacyId`))
        }
        self$`targetLegacyId` <- `targetLegacyId`
      }
      if (!is.null(`targetDescription`)) {
        if (!(is.character(`targetDescription`) && length(`targetDescription`) == 1)) {
          stop(paste("Error! Invalid data for `targetDescription`. Must be a string:", `targetDescription`))
        }
        self$`targetDescription` <- `targetDescription`
      }
      if (!is.null(`targetActive`)) {
        if (!(is.logical(`targetActive`) && length(`targetActive`) == 1)) {
          stop(paste("Error! Invalid data for `targetActive`. Must be a boolean:", `targetActive`))
        }
        self$`targetActive` <- `targetActive`
      }
      if (!is.null(`action`)) {
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`slaveEntityId`)) {
        if (!(is.numeric(`slaveEntityId`) && length(`slaveEntityId`) == 1)) {
          stop(paste("Error! Invalid data for `slaveEntityId`. Must be an integer:", `slaveEntityId`))
        }
        self$`slaveEntityId` <- `slaveEntityId`
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
    #' @return ActivityResponse as a base R list.
    #' @examples
    #' # convert array of ActivityResponse (x) to a data frame
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
    #' Convert ActivityResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ActivityResponseObject <- list()
      if (!is.null(self$`activityId`)) {
        ActivityResponseObject[["activityId"]] <-
          self$`activityId`
      }
      if (!is.null(self$`created`)) {
        ActivityResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`appKey`)) {
        ActivityResponseObject[["appKey"]] <-
          self$`appKey`
      }
      if (!is.null(self$`targetId`)) {
        ActivityResponseObject[["targetId"]] <-
          self$`targetId`
      }
      if (!is.null(self$`targetType`)) {
        ActivityResponseObject[["targetType"]] <-
          self$`targetType`
      }
      if (!is.null(self$`targetLegacyId`)) {
        ActivityResponseObject[["targetLegacyId"]] <-
          self$`targetLegacyId`
      }
      if (!is.null(self$`targetDescription`)) {
        ActivityResponseObject[["targetDescription"]] <-
          self$`targetDescription`
      }
      if (!is.null(self$`targetActive`)) {
        ActivityResponseObject[["targetActive"]] <-
          self$`targetActive`
      }
      if (!is.null(self$`action`)) {
        ActivityResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`slaveEntityId`)) {
        ActivityResponseObject[["slaveEntityId"]] <-
          self$`slaveEntityId`
      }
      return(ActivityResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ActivityResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ActivityResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`activityId`)) {
        self$`activityId` <- this_object$`activityId`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      if (!is.null(this_object$`targetId`)) {
        self$`targetId` <- this_object$`targetId`
      }
      if (!is.null(this_object$`targetType`)) {
        self$`targetType` <- this_object$`targetType`
      }
      if (!is.null(this_object$`targetLegacyId`)) {
        self$`targetLegacyId` <- this_object$`targetLegacyId`
      }
      if (!is.null(this_object$`targetDescription`)) {
        self$`targetDescription` <- this_object$`targetDescription`
      }
      if (!is.null(this_object$`targetActive`)) {
        self$`targetActive` <- this_object$`targetActive`
      }
      if (!is.null(this_object$`action`)) {
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`slaveEntityId`)) {
        self$`slaveEntityId` <- this_object$`slaveEntityId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ActivityResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ActivityResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ActivityResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`activityId` <- this_object$`activityId`
      self$`created` <- this_object$`created`
      self$`appKey` <- this_object$`appKey`
      self$`targetId` <- this_object$`targetId`
      self$`targetType` <- this_object$`targetType`
      self$`targetLegacyId` <- this_object$`targetLegacyId`
      self$`targetDescription` <- this_object$`targetDescription`
      self$`targetActive` <- this_object$`targetActive`
      self$`action` <- this_object$`action`
      self$`slaveEntityId` <- this_object$`slaveEntityId`
      self
    },

    #' @description
    #' Validate JSON input with respect to ActivityResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ActivityResponse
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
# ActivityResponse$unlock()
#
## Below is an example to define the print function
# ActivityResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ActivityResponse$lock()

