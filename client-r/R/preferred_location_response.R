#' Create a new PreferredLocationResponse
#'
#' @description
#' PreferredLocationResponse Class
#'
#' @docType class
#' @title PreferredLocationResponse
#' @description PreferredLocationResponse Class
#' @format An \code{R6Class} generator object
#' @field ownerId  integer [optional]
#' @field onDate  character [optional]
#' @field onDateMilli  integer [optional]
#' @field hour  integer [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field distance  numeric [optional]
#' @field duration  integer [optional]
#' @field startStepId  integer [optional]
#' @field endStepId  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PreferredLocationResponse <- R6::R6Class(
  "PreferredLocationResponse",
  public = list(
    `ownerId` = NULL,
    `onDate` = NULL,
    `onDateMilli` = NULL,
    `hour` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `distance` = NULL,
    `duration` = NULL,
    `startStepId` = NULL,
    `endStepId` = NULL,

    #' @description
    #' Initialize a new PreferredLocationResponse class.
    #'
    #' @param ownerId ownerId
    #' @param onDate onDate
    #' @param onDateMilli onDateMilli
    #' @param hour hour
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param distance distance
    #' @param duration duration
    #' @param startStepId startStepId
    #' @param endStepId endStepId
    #' @param ... Other optional arguments.
    initialize = function(`ownerId` = NULL, `onDate` = NULL, `onDateMilli` = NULL, `hour` = NULL, `latitude` = NULL, `longitude` = NULL, `distance` = NULL, `duration` = NULL, `startStepId` = NULL, `endStepId` = NULL, ...) {
      if (!is.null(`ownerId`)) {
        if (!(is.numeric(`ownerId`) && length(`ownerId`) == 1)) {
          stop(paste("Error! Invalid data for `ownerId`. Must be an integer:", `ownerId`))
        }
        self$`ownerId` <- `ownerId`
      }
      if (!is.null(`onDate`)) {
        if (!(is.character(`onDate`) && length(`onDate`) == 1)) {
          stop(paste("Error! Invalid data for `onDate`. Must be a string:", `onDate`))
        }
        self$`onDate` <- `onDate`
      }
      if (!is.null(`onDateMilli`)) {
        if (!(is.numeric(`onDateMilli`) && length(`onDateMilli`) == 1)) {
          stop(paste("Error! Invalid data for `onDateMilli`. Must be an integer:", `onDateMilli`))
        }
        self$`onDateMilli` <- `onDateMilli`
      }
      if (!is.null(`hour`)) {
        if (!(is.numeric(`hour`) && length(`hour`) == 1)) {
          stop(paste("Error! Invalid data for `hour`. Must be an integer:", `hour`))
        }
        self$`hour` <- `hour`
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
      if (!is.null(`distance`)) {
        if (!(is.numeric(`distance`) && length(`distance`) == 1)) {
          stop(paste("Error! Invalid data for `distance`. Must be a number:", `distance`))
        }
        self$`distance` <- `distance`
      }
      if (!is.null(`duration`)) {
        if (!(is.numeric(`duration`) && length(`duration`) == 1)) {
          stop(paste("Error! Invalid data for `duration`. Must be an integer:", `duration`))
        }
        self$`duration` <- `duration`
      }
      if (!is.null(`startStepId`)) {
        if (!(is.numeric(`startStepId`) && length(`startStepId`) == 1)) {
          stop(paste("Error! Invalid data for `startStepId`. Must be an integer:", `startStepId`))
        }
        self$`startStepId` <- `startStepId`
      }
      if (!is.null(`endStepId`)) {
        if (!(is.numeric(`endStepId`) && length(`endStepId`) == 1)) {
          stop(paste("Error! Invalid data for `endStepId`. Must be an integer:", `endStepId`))
        }
        self$`endStepId` <- `endStepId`
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
    #' @return PreferredLocationResponse as a base R list.
    #' @examples
    #' # convert array of PreferredLocationResponse (x) to a data frame
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
    #' Convert PreferredLocationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PreferredLocationResponseObject <- list()
      if (!is.null(self$`ownerId`)) {
        PreferredLocationResponseObject[["ownerId"]] <-
          self$`ownerId`
      }
      if (!is.null(self$`onDate`)) {
        PreferredLocationResponseObject[["onDate"]] <-
          self$`onDate`
      }
      if (!is.null(self$`onDateMilli`)) {
        PreferredLocationResponseObject[["onDateMilli"]] <-
          self$`onDateMilli`
      }
      if (!is.null(self$`hour`)) {
        PreferredLocationResponseObject[["hour"]] <-
          self$`hour`
      }
      if (!is.null(self$`latitude`)) {
        PreferredLocationResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        PreferredLocationResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`distance`)) {
        PreferredLocationResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`duration`)) {
        PreferredLocationResponseObject[["duration"]] <-
          self$`duration`
      }
      if (!is.null(self$`startStepId`)) {
        PreferredLocationResponseObject[["startStepId"]] <-
          self$`startStepId`
      }
      if (!is.null(self$`endStepId`)) {
        PreferredLocationResponseObject[["endStepId"]] <-
          self$`endStepId`
      }
      return(PreferredLocationResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PreferredLocationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PreferredLocationResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ownerId`)) {
        self$`ownerId` <- this_object$`ownerId`
      }
      if (!is.null(this_object$`onDate`)) {
        self$`onDate` <- this_object$`onDate`
      }
      if (!is.null(this_object$`onDateMilli`)) {
        self$`onDateMilli` <- this_object$`onDateMilli`
      }
      if (!is.null(this_object$`hour`)) {
        self$`hour` <- this_object$`hour`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      if (!is.null(this_object$`distance`)) {
        self$`distance` <- this_object$`distance`
      }
      if (!is.null(this_object$`duration`)) {
        self$`duration` <- this_object$`duration`
      }
      if (!is.null(this_object$`startStepId`)) {
        self$`startStepId` <- this_object$`startStepId`
      }
      if (!is.null(this_object$`endStepId`)) {
        self$`endStepId` <- this_object$`endStepId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PreferredLocationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PreferredLocationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PreferredLocationResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ownerId` <- this_object$`ownerId`
      self$`onDate` <- this_object$`onDate`
      self$`onDateMilli` <- this_object$`onDateMilli`
      self$`hour` <- this_object$`hour`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`distance` <- this_object$`distance`
      self$`duration` <- this_object$`duration`
      self$`startStepId` <- this_object$`startStepId`
      self$`endStepId` <- this_object$`endStepId`
      self
    },

    #' @description
    #' Validate JSON input with respect to PreferredLocationResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PreferredLocationResponse
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
# PreferredLocationResponse$unlock()
#
## Below is an example to define the print function
# PreferredLocationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PreferredLocationResponse$lock()

