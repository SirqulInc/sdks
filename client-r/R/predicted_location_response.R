#' Create a new PredictedLocationResponse
#'
#' @description
#' PredictedLocationResponse Class
#'
#' @docType class
#' @title PredictedLocationResponse
#' @description PredictedLocationResponse Class
#' @format An \code{R6Class} generator object
#' @field ownerId  integer [optional]
#' @field onDate  character [optional]
#' @field onDateMilli  integer [optional]
#' @field hour  integer [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @field distance  numeric [optional]
#' @field matches  integer [optional]
#' @field averageDuration  numeric [optional]
#' @field weightedScore  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PredictedLocationResponse <- R6::R6Class(
  "PredictedLocationResponse",
  public = list(
    `ownerId` = NULL,
    `onDate` = NULL,
    `onDateMilli` = NULL,
    `hour` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `distance` = NULL,
    `matches` = NULL,
    `averageDuration` = NULL,
    `weightedScore` = NULL,

    #' @description
    #' Initialize a new PredictedLocationResponse class.
    #'
    #' @param ownerId ownerId
    #' @param onDate onDate
    #' @param onDateMilli onDateMilli
    #' @param hour hour
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param distance distance
    #' @param matches matches
    #' @param averageDuration averageDuration
    #' @param weightedScore weightedScore
    #' @param ... Other optional arguments.
    initialize = function(`ownerId` = NULL, `onDate` = NULL, `onDateMilli` = NULL, `hour` = NULL, `latitude` = NULL, `longitude` = NULL, `distance` = NULL, `matches` = NULL, `averageDuration` = NULL, `weightedScore` = NULL, ...) {
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
      if (!is.null(`matches`)) {
        if (!(is.numeric(`matches`) && length(`matches`) == 1)) {
          stop(paste("Error! Invalid data for `matches`. Must be an integer:", `matches`))
        }
        self$`matches` <- `matches`
      }
      if (!is.null(`averageDuration`)) {
        if (!(is.numeric(`averageDuration`) && length(`averageDuration`) == 1)) {
          stop(paste("Error! Invalid data for `averageDuration`. Must be a number:", `averageDuration`))
        }
        self$`averageDuration` <- `averageDuration`
      }
      if (!is.null(`weightedScore`)) {
        if (!(is.numeric(`weightedScore`) && length(`weightedScore`) == 1)) {
          stop(paste("Error! Invalid data for `weightedScore`. Must be a number:", `weightedScore`))
        }
        self$`weightedScore` <- `weightedScore`
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
    #' @return PredictedLocationResponse as a base R list.
    #' @examples
    #' # convert array of PredictedLocationResponse (x) to a data frame
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
    #' Convert PredictedLocationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PredictedLocationResponseObject <- list()
      if (!is.null(self$`ownerId`)) {
        PredictedLocationResponseObject[["ownerId"]] <-
          self$`ownerId`
      }
      if (!is.null(self$`onDate`)) {
        PredictedLocationResponseObject[["onDate"]] <-
          self$`onDate`
      }
      if (!is.null(self$`onDateMilli`)) {
        PredictedLocationResponseObject[["onDateMilli"]] <-
          self$`onDateMilli`
      }
      if (!is.null(self$`hour`)) {
        PredictedLocationResponseObject[["hour"]] <-
          self$`hour`
      }
      if (!is.null(self$`latitude`)) {
        PredictedLocationResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        PredictedLocationResponseObject[["longitude"]] <-
          self$`longitude`
      }
      if (!is.null(self$`distance`)) {
        PredictedLocationResponseObject[["distance"]] <-
          self$`distance`
      }
      if (!is.null(self$`matches`)) {
        PredictedLocationResponseObject[["matches"]] <-
          self$`matches`
      }
      if (!is.null(self$`averageDuration`)) {
        PredictedLocationResponseObject[["averageDuration"]] <-
          self$`averageDuration`
      }
      if (!is.null(self$`weightedScore`)) {
        PredictedLocationResponseObject[["weightedScore"]] <-
          self$`weightedScore`
      }
      return(PredictedLocationResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PredictedLocationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PredictedLocationResponse
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
      if (!is.null(this_object$`matches`)) {
        self$`matches` <- this_object$`matches`
      }
      if (!is.null(this_object$`averageDuration`)) {
        self$`averageDuration` <- this_object$`averageDuration`
      }
      if (!is.null(this_object$`weightedScore`)) {
        self$`weightedScore` <- this_object$`weightedScore`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PredictedLocationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PredictedLocationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PredictedLocationResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ownerId` <- this_object$`ownerId`
      self$`onDate` <- this_object$`onDate`
      self$`onDateMilli` <- this_object$`onDateMilli`
      self$`hour` <- this_object$`hour`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self$`distance` <- this_object$`distance`
      self$`matches` <- this_object$`matches`
      self$`averageDuration` <- this_object$`averageDuration`
      self$`weightedScore` <- this_object$`weightedScore`
      self
    },

    #' @description
    #' Validate JSON input with respect to PredictedLocationResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PredictedLocationResponse
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
# PredictedLocationResponse$unlock()
#
## Below is an example to define the print function
# PredictedLocationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PredictedLocationResponse$lock()

