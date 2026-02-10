#' Create a new TimeSlotResponse
#'
#' @description
#' TimeSlotResponse Class
#'
#' @docType class
#' @title TimeSlotResponse
#' @description TimeSlotResponse Class
#' @format An \code{R6Class} generator object
#' @field scheduledDate  integer [optional]
#' @field startTime  integer [optional]
#' @field endTime  integer [optional]
#' @field dayOfWeek  integer [optional]
#' @field timeZone  character [optional]
#' @field reservationCount  integer [optional]
#' @field reservations  list(\link{AccountShortResponse}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TimeSlotResponse <- R6::R6Class(
  "TimeSlotResponse",
  public = list(
    `scheduledDate` = NULL,
    `startTime` = NULL,
    `endTime` = NULL,
    `dayOfWeek` = NULL,
    `timeZone` = NULL,
    `reservationCount` = NULL,
    `reservations` = NULL,

    #' @description
    #' Initialize a new TimeSlotResponse class.
    #'
    #' @param scheduledDate scheduledDate
    #' @param startTime startTime
    #' @param endTime endTime
    #' @param dayOfWeek dayOfWeek
    #' @param timeZone timeZone
    #' @param reservationCount reservationCount
    #' @param reservations reservations
    #' @param ... Other optional arguments.
    initialize = function(`scheduledDate` = NULL, `startTime` = NULL, `endTime` = NULL, `dayOfWeek` = NULL, `timeZone` = NULL, `reservationCount` = NULL, `reservations` = NULL, ...) {
      if (!is.null(`scheduledDate`)) {
        if (!(is.numeric(`scheduledDate`) && length(`scheduledDate`) == 1)) {
          stop(paste("Error! Invalid data for `scheduledDate`. Must be an integer:", `scheduledDate`))
        }
        self$`scheduledDate` <- `scheduledDate`
      }
      if (!is.null(`startTime`)) {
        if (!(is.numeric(`startTime`) && length(`startTime`) == 1)) {
          stop(paste("Error! Invalid data for `startTime`. Must be an integer:", `startTime`))
        }
        self$`startTime` <- `startTime`
      }
      if (!is.null(`endTime`)) {
        if (!(is.numeric(`endTime`) && length(`endTime`) == 1)) {
          stop(paste("Error! Invalid data for `endTime`. Must be an integer:", `endTime`))
        }
        self$`endTime` <- `endTime`
      }
      if (!is.null(`dayOfWeek`)) {
        if (!(is.numeric(`dayOfWeek`) && length(`dayOfWeek`) == 1)) {
          stop(paste("Error! Invalid data for `dayOfWeek`. Must be an integer:", `dayOfWeek`))
        }
        self$`dayOfWeek` <- `dayOfWeek`
      }
      if (!is.null(`timeZone`)) {
        if (!(is.character(`timeZone`) && length(`timeZone`) == 1)) {
          stop(paste("Error! Invalid data for `timeZone`. Must be a string:", `timeZone`))
        }
        self$`timeZone` <- `timeZone`
      }
      if (!is.null(`reservationCount`)) {
        if (!(is.numeric(`reservationCount`) && length(`reservationCount`) == 1)) {
          stop(paste("Error! Invalid data for `reservationCount`. Must be an integer:", `reservationCount`))
        }
        self$`reservationCount` <- `reservationCount`
      }
      if (!is.null(`reservations`)) {
        stopifnot(is.vector(`reservations`), length(`reservations`) != 0)
        sapply(`reservations`, function(x) stopifnot(R6::is.R6(x)))
        self$`reservations` <- `reservations`
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
    #' @return TimeSlotResponse as a base R list.
    #' @examples
    #' # convert array of TimeSlotResponse (x) to a data frame
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
    #' Convert TimeSlotResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TimeSlotResponseObject <- list()
      if (!is.null(self$`scheduledDate`)) {
        TimeSlotResponseObject[["scheduledDate"]] <-
          self$`scheduledDate`
      }
      if (!is.null(self$`startTime`)) {
        TimeSlotResponseObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`endTime`)) {
        TimeSlotResponseObject[["endTime"]] <-
          self$`endTime`
      }
      if (!is.null(self$`dayOfWeek`)) {
        TimeSlotResponseObject[["dayOfWeek"]] <-
          self$`dayOfWeek`
      }
      if (!is.null(self$`timeZone`)) {
        TimeSlotResponseObject[["timeZone"]] <-
          self$`timeZone`
      }
      if (!is.null(self$`reservationCount`)) {
        TimeSlotResponseObject[["reservationCount"]] <-
          self$`reservationCount`
      }
      if (!is.null(self$`reservations`)) {
        TimeSlotResponseObject[["reservations"]] <-
          self$extractSimpleType(self$`reservations`)
      }
      return(TimeSlotResponseObject)
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
    #' Deserialize JSON string into an instance of TimeSlotResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeSlotResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`scheduledDate`)) {
        self$`scheduledDate` <- this_object$`scheduledDate`
      }
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      if (!is.null(this_object$`endTime`)) {
        self$`endTime` <- this_object$`endTime`
      }
      if (!is.null(this_object$`dayOfWeek`)) {
        self$`dayOfWeek` <- this_object$`dayOfWeek`
      }
      if (!is.null(this_object$`timeZone`)) {
        self$`timeZone` <- this_object$`timeZone`
      }
      if (!is.null(this_object$`reservationCount`)) {
        self$`reservationCount` <- this_object$`reservationCount`
      }
      if (!is.null(this_object$`reservations`)) {
        self$`reservations` <- ApiClient$new()$deserializeObj(this_object$`reservations`, "array[AccountShortResponse]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TimeSlotResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TimeSlotResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeSlotResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`scheduledDate` <- this_object$`scheduledDate`
      self$`startTime` <- this_object$`startTime`
      self$`endTime` <- this_object$`endTime`
      self$`dayOfWeek` <- this_object$`dayOfWeek`
      self$`timeZone` <- this_object$`timeZone`
      self$`reservationCount` <- this_object$`reservationCount`
      self$`reservations` <- ApiClient$new()$deserializeObj(this_object$`reservations`, "array[AccountShortResponse]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to TimeSlotResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TimeSlotResponse
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
# TimeSlotResponse$unlock()
#
## Below is an example to define the print function
# TimeSlotResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TimeSlotResponse$lock()

