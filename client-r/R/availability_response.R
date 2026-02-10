#' Create a new AvailabilityResponse
#'
#' @description
#' AvailabilityResponse Class
#'
#' @docType class
#' @title AvailabilityResponse
#' @description AvailabilityResponse Class
#' @format An \code{R6Class} generator object
#' @field availabilityId  integer [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field dayOfWeek  integer [optional]
#' @field startTime  integer [optional]
#' @field endTime  integer [optional]
#' @field timeZone  character [optional]
#' @field deleted  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AvailabilityResponse <- R6::R6Class(
  "AvailabilityResponse",
  public = list(
    `availabilityId` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `dayOfWeek` = NULL,
    `startTime` = NULL,
    `endTime` = NULL,
    `timeZone` = NULL,
    `deleted` = NULL,

    #' @description
    #' Initialize a new AvailabilityResponse class.
    #'
    #' @param availabilityId availabilityId
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param dayOfWeek dayOfWeek
    #' @param startTime startTime
    #' @param endTime endTime
    #' @param timeZone timeZone
    #' @param deleted deleted
    #' @param ... Other optional arguments.
    initialize = function(`availabilityId` = NULL, `startDate` = NULL, `endDate` = NULL, `dayOfWeek` = NULL, `startTime` = NULL, `endTime` = NULL, `timeZone` = NULL, `deleted` = NULL, ...) {
      if (!is.null(`availabilityId`)) {
        if (!(is.numeric(`availabilityId`) && length(`availabilityId`) == 1)) {
          stop(paste("Error! Invalid data for `availabilityId`. Must be an integer:", `availabilityId`))
        }
        self$`availabilityId` <- `availabilityId`
      }
      if (!is.null(`startDate`)) {
        if (!(is.numeric(`startDate`) && length(`startDate`) == 1)) {
          stop(paste("Error! Invalid data for `startDate`. Must be an integer:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endDate`)) {
        if (!(is.numeric(`endDate`) && length(`endDate`) == 1)) {
          stop(paste("Error! Invalid data for `endDate`. Must be an integer:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`dayOfWeek`)) {
        if (!(is.numeric(`dayOfWeek`) && length(`dayOfWeek`) == 1)) {
          stop(paste("Error! Invalid data for `dayOfWeek`. Must be an integer:", `dayOfWeek`))
        }
        self$`dayOfWeek` <- `dayOfWeek`
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
      if (!is.null(`timeZone`)) {
        if (!(is.character(`timeZone`) && length(`timeZone`) == 1)) {
          stop(paste("Error! Invalid data for `timeZone`. Must be a string:", `timeZone`))
        }
        self$`timeZone` <- `timeZone`
      }
      if (!is.null(`deleted`)) {
        if (!(is.logical(`deleted`) && length(`deleted`) == 1)) {
          stop(paste("Error! Invalid data for `deleted`. Must be a boolean:", `deleted`))
        }
        self$`deleted` <- `deleted`
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
    #' @return AvailabilityResponse as a base R list.
    #' @examples
    #' # convert array of AvailabilityResponse (x) to a data frame
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
    #' Convert AvailabilityResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AvailabilityResponseObject <- list()
      if (!is.null(self$`availabilityId`)) {
        AvailabilityResponseObject[["availabilityId"]] <-
          self$`availabilityId`
      }
      if (!is.null(self$`startDate`)) {
        AvailabilityResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        AvailabilityResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`dayOfWeek`)) {
        AvailabilityResponseObject[["dayOfWeek"]] <-
          self$`dayOfWeek`
      }
      if (!is.null(self$`startTime`)) {
        AvailabilityResponseObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`endTime`)) {
        AvailabilityResponseObject[["endTime"]] <-
          self$`endTime`
      }
      if (!is.null(self$`timeZone`)) {
        AvailabilityResponseObject[["timeZone"]] <-
          self$`timeZone`
      }
      if (!is.null(self$`deleted`)) {
        AvailabilityResponseObject[["deleted"]] <-
          self$`deleted`
      }
      return(AvailabilityResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AvailabilityResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AvailabilityResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`availabilityId`)) {
        self$`availabilityId` <- this_object$`availabilityId`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`dayOfWeek`)) {
        self$`dayOfWeek` <- this_object$`dayOfWeek`
      }
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      if (!is.null(this_object$`endTime`)) {
        self$`endTime` <- this_object$`endTime`
      }
      if (!is.null(this_object$`timeZone`)) {
        self$`timeZone` <- this_object$`timeZone`
      }
      if (!is.null(this_object$`deleted`)) {
        self$`deleted` <- this_object$`deleted`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AvailabilityResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AvailabilityResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AvailabilityResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`availabilityId` <- this_object$`availabilityId`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`dayOfWeek` <- this_object$`dayOfWeek`
      self$`startTime` <- this_object$`startTime`
      self$`endTime` <- this_object$`endTime`
      self$`timeZone` <- this_object$`timeZone`
      self$`deleted` <- this_object$`deleted`
      self
    },

    #' @description
    #' Validate JSON input with respect to AvailabilityResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AvailabilityResponse
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
# AvailabilityResponse$unlock()
#
## Below is an example to define the print function
# AvailabilityResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AvailabilityResponse$lock()

