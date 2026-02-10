#' Create a new ScheduledNotificationShortResponse
#'
#' @description
#' ScheduledNotificationShortResponse Class
#'
#' @docType class
#' @title ScheduledNotificationShortResponse
#' @description ScheduledNotificationShortResponse Class
#' @format An \code{R6Class} generator object
#' @field scheduledNotificationId  integer [optional]
#' @field active  character [optional]
#' @field status  character [optional]
#' @field type  character [optional]
#' @field name  character [optional]
#' @field message  character [optional]
#' @field groupingId  character [optional]
#' @field scheduledDate  integer [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScheduledNotificationShortResponse <- R6::R6Class(
  "ScheduledNotificationShortResponse",
  public = list(
    `scheduledNotificationId` = NULL,
    `active` = NULL,
    `status` = NULL,
    `type` = NULL,
    `name` = NULL,
    `message` = NULL,
    `groupingId` = NULL,
    `scheduledDate` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,

    #' @description
    #' Initialize a new ScheduledNotificationShortResponse class.
    #'
    #' @param scheduledNotificationId scheduledNotificationId
    #' @param active active
    #' @param status status
    #' @param type type
    #' @param name name
    #' @param message message
    #' @param groupingId groupingId
    #' @param scheduledDate scheduledDate
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param ... Other optional arguments.
    initialize = function(`scheduledNotificationId` = NULL, `active` = NULL, `status` = NULL, `type` = NULL, `name` = NULL, `message` = NULL, `groupingId` = NULL, `scheduledDate` = NULL, `startDate` = NULL, `endDate` = NULL, ...) {
      if (!is.null(`scheduledNotificationId`)) {
        if (!(is.numeric(`scheduledNotificationId`) && length(`scheduledNotificationId`) == 1)) {
          stop(paste("Error! Invalid data for `scheduledNotificationId`. Must be an integer:", `scheduledNotificationId`))
        }
        self$`scheduledNotificationId` <- `scheduledNotificationId`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PROCESSING\", \"TEMPLATE\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`groupingId`)) {
        if (!(is.character(`groupingId`) && length(`groupingId`) == 1)) {
          stop(paste("Error! Invalid data for `groupingId`. Must be a string:", `groupingId`))
        }
        self$`groupingId` <- `groupingId`
      }
      if (!is.null(`scheduledDate`)) {
        if (!(is.numeric(`scheduledDate`) && length(`scheduledDate`) == 1)) {
          stop(paste("Error! Invalid data for `scheduledDate`. Must be an integer:", `scheduledDate`))
        }
        self$`scheduledDate` <- `scheduledDate`
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
    #' @return ScheduledNotificationShortResponse as a base R list.
    #' @examples
    #' # convert array of ScheduledNotificationShortResponse (x) to a data frame
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
    #' Convert ScheduledNotificationShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ScheduledNotificationShortResponseObject <- list()
      if (!is.null(self$`scheduledNotificationId`)) {
        ScheduledNotificationShortResponseObject[["scheduledNotificationId"]] <-
          self$`scheduledNotificationId`
      }
      if (!is.null(self$`active`)) {
        ScheduledNotificationShortResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`status`)) {
        ScheduledNotificationShortResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`type`)) {
        ScheduledNotificationShortResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`name`)) {
        ScheduledNotificationShortResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`message`)) {
        ScheduledNotificationShortResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`groupingId`)) {
        ScheduledNotificationShortResponseObject[["groupingId"]] <-
          self$`groupingId`
      }
      if (!is.null(self$`scheduledDate`)) {
        ScheduledNotificationShortResponseObject[["scheduledDate"]] <-
          self$`scheduledDate`
      }
      if (!is.null(self$`startDate`)) {
        ScheduledNotificationShortResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        ScheduledNotificationShortResponseObject[["endDate"]] <-
          self$`endDate`
      }
      return(ScheduledNotificationShortResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ScheduledNotificationShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ScheduledNotificationShortResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`scheduledNotificationId`)) {
        self$`scheduledNotificationId` <- this_object$`scheduledNotificationId`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PROCESSING\", \"TEMPLATE\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`groupingId`)) {
        self$`groupingId` <- this_object$`groupingId`
      }
      if (!is.null(this_object$`scheduledDate`)) {
        self$`scheduledDate` <- this_object$`scheduledDate`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ScheduledNotificationShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ScheduledNotificationShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ScheduledNotificationShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`scheduledNotificationId` <- this_object$`scheduledNotificationId`
      self$`active` <- this_object$`active`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("NEW", "ERROR", "COMPLETE", "PROCESSING", "TEMPLATE"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"NEW\", \"ERROR\", \"COMPLETE\", \"PROCESSING\", \"TEMPLATE\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`name` <- this_object$`name`
      self$`message` <- this_object$`message`
      self$`groupingId` <- this_object$`groupingId`
      self$`scheduledDate` <- this_object$`scheduledDate`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self
    },

    #' @description
    #' Validate JSON input with respect to ScheduledNotificationShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ScheduledNotificationShortResponse
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
# ScheduledNotificationShortResponse$unlock()
#
## Below is an example to define the print function
# ScheduledNotificationShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ScheduledNotificationShortResponse$lock()

