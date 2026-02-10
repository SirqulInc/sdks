#' Create a new AssignmentStatusResponse
#'
#' @description
#' AssignmentStatusResponse Class
#'
#' @docType class
#' @title AssignmentStatusResponse
#' @description AssignmentStatusResponse Class
#' @format An \code{R6Class} generator object
#' @field assignmentStatusId  integer [optional]
#' @field active  character [optional]
#' @field toDo  character [optional]
#' @field connection  character [optional]
#' @field method  character [optional]
#' @field status  character [optional]
#' @field closure  character [optional]
#' @field message  character [optional]
#' @field followUp  integer [optional]
#' @field created  integer [optional]
#' @field updated  integer [optional]
#' @field notification  \link{ScheduledNotificationShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AssignmentStatusResponse <- R6::R6Class(
  "AssignmentStatusResponse",
  public = list(
    `assignmentStatusId` = NULL,
    `active` = NULL,
    `toDo` = NULL,
    `connection` = NULL,
    `method` = NULL,
    `status` = NULL,
    `closure` = NULL,
    `message` = NULL,
    `followUp` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `notification` = NULL,

    #' @description
    #' Initialize a new AssignmentStatusResponse class.
    #'
    #' @param assignmentStatusId assignmentStatusId
    #' @param active active
    #' @param toDo toDo
    #' @param connection connection
    #' @param method method
    #' @param status status
    #' @param closure closure
    #' @param message message
    #' @param followUp followUp
    #' @param created created
    #' @param updated updated
    #' @param notification notification
    #' @param ... Other optional arguments.
    initialize = function(`assignmentStatusId` = NULL, `active` = NULL, `toDo` = NULL, `connection` = NULL, `method` = NULL, `status` = NULL, `closure` = NULL, `message` = NULL, `followUp` = NULL, `created` = NULL, `updated` = NULL, `notification` = NULL, ...) {
      if (!is.null(`assignmentStatusId`)) {
        if (!(is.numeric(`assignmentStatusId`) && length(`assignmentStatusId`) == 1)) {
          stop(paste("Error! Invalid data for `assignmentStatusId`. Must be an integer:", `assignmentStatusId`))
        }
        self$`assignmentStatusId` <- `assignmentStatusId`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`toDo`)) {
        if (!(`toDo` %in% c("SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT"))) {
          stop(paste("Error! \"", `toDo`, "\" cannot be assigned to `toDo`. Must be \"SITE_VISIT\", \"PHONE\", \"RECONTACT\", \"RENEWAL\", \"CREDIT\".", sep = ""))
        }
        if (!(is.character(`toDo`) && length(`toDo`) == 1)) {
          stop(paste("Error! Invalid data for `toDo`. Must be a string:", `toDo`))
        }
        self$`toDo` <- `toDo`
      }
      if (!is.null(`connection`)) {
        if (!(`connection` %in% c("INITIAL", "FOLLOW_UP", "DECLINED"))) {
          stop(paste("Error! \"", `connection`, "\" cannot be assigned to `connection`. Must be \"INITIAL\", \"FOLLOW_UP\", \"DECLINED\".", sep = ""))
        }
        if (!(is.character(`connection`) && length(`connection`) == 1)) {
          stop(paste("Error! Invalid data for `connection`. Must be a string:", `connection`))
        }
        self$`connection` <- `connection`
      }
      if (!is.null(`method`)) {
        if (!(`method` %in% c("PHONE", "SITE_VISIT", "EMAIL"))) {
          stop(paste("Error! \"", `method`, "\" cannot be assigned to `method`. Must be \"PHONE\", \"SITE_VISIT\", \"EMAIL\".", sep = ""))
        }
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"ARCHIVED\", \"SUBSCRIBED\", \"UNSUBSCRIBED\", \"CONTACTED\", \"DECLINED\", \"NOT_CONTACTED\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`closure`)) {
        if (!(`closure` %in% c("PHONE", "SITE_VISIT", "PHONE_SITE", "WEB"))) {
          stop(paste("Error! \"", `closure`, "\" cannot be assigned to `closure`. Must be \"PHONE\", \"SITE_VISIT\", \"PHONE_SITE\", \"WEB\".", sep = ""))
        }
        if (!(is.character(`closure`) && length(`closure`) == 1)) {
          stop(paste("Error! Invalid data for `closure`. Must be a string:", `closure`))
        }
        self$`closure` <- `closure`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`followUp`)) {
        if (!(is.numeric(`followUp`) && length(`followUp`) == 1)) {
          stop(paste("Error! Invalid data for `followUp`. Must be an integer:", `followUp`))
        }
        self$`followUp` <- `followUp`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`notification`)) {
        stopifnot(R6::is.R6(`notification`))
        self$`notification` <- `notification`
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
    #' @return AssignmentStatusResponse as a base R list.
    #' @examples
    #' # convert array of AssignmentStatusResponse (x) to a data frame
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
    #' Convert AssignmentStatusResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssignmentStatusResponseObject <- list()
      if (!is.null(self$`assignmentStatusId`)) {
        AssignmentStatusResponseObject[["assignmentStatusId"]] <-
          self$`assignmentStatusId`
      }
      if (!is.null(self$`active`)) {
        AssignmentStatusResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`toDo`)) {
        AssignmentStatusResponseObject[["toDo"]] <-
          self$`toDo`
      }
      if (!is.null(self$`connection`)) {
        AssignmentStatusResponseObject[["connection"]] <-
          self$`connection`
      }
      if (!is.null(self$`method`)) {
        AssignmentStatusResponseObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`status`)) {
        AssignmentStatusResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`closure`)) {
        AssignmentStatusResponseObject[["closure"]] <-
          self$`closure`
      }
      if (!is.null(self$`message`)) {
        AssignmentStatusResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`followUp`)) {
        AssignmentStatusResponseObject[["followUp"]] <-
          self$`followUp`
      }
      if (!is.null(self$`created`)) {
        AssignmentStatusResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        AssignmentStatusResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`notification`)) {
        AssignmentStatusResponseObject[["notification"]] <-
          self$extractSimpleType(self$`notification`)
      }
      return(AssignmentStatusResponseObject)
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
    #' Deserialize JSON string into an instance of AssignmentStatusResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssignmentStatusResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assignmentStatusId`)) {
        self$`assignmentStatusId` <- this_object$`assignmentStatusId`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`toDo`)) {
        if (!is.null(this_object$`toDo`) && !(this_object$`toDo` %in% c("SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT"))) {
          stop(paste("Error! \"", this_object$`toDo`, "\" cannot be assigned to `toDo`. Must be \"SITE_VISIT\", \"PHONE\", \"RECONTACT\", \"RENEWAL\", \"CREDIT\".", sep = ""))
        }
        self$`toDo` <- this_object$`toDo`
      }
      if (!is.null(this_object$`connection`)) {
        if (!is.null(this_object$`connection`) && !(this_object$`connection` %in% c("INITIAL", "FOLLOW_UP", "DECLINED"))) {
          stop(paste("Error! \"", this_object$`connection`, "\" cannot be assigned to `connection`. Must be \"INITIAL\", \"FOLLOW_UP\", \"DECLINED\".", sep = ""))
        }
        self$`connection` <- this_object$`connection`
      }
      if (!is.null(this_object$`method`)) {
        if (!is.null(this_object$`method`) && !(this_object$`method` %in% c("PHONE", "SITE_VISIT", "EMAIL"))) {
          stop(paste("Error! \"", this_object$`method`, "\" cannot be assigned to `method`. Must be \"PHONE\", \"SITE_VISIT\", \"EMAIL\".", sep = ""))
        }
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"ARCHIVED\", \"SUBSCRIBED\", \"UNSUBSCRIBED\", \"CONTACTED\", \"DECLINED\", \"NOT_CONTACTED\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`closure`)) {
        if (!is.null(this_object$`closure`) && !(this_object$`closure` %in% c("PHONE", "SITE_VISIT", "PHONE_SITE", "WEB"))) {
          stop(paste("Error! \"", this_object$`closure`, "\" cannot be assigned to `closure`. Must be \"PHONE\", \"SITE_VISIT\", \"PHONE_SITE\", \"WEB\".", sep = ""))
        }
        self$`closure` <- this_object$`closure`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`followUp`)) {
        self$`followUp` <- this_object$`followUp`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`notification`)) {
        `notification_object` <- ScheduledNotificationShortResponse$new()
        `notification_object`$fromJSON(jsonlite::toJSON(this_object$`notification`, auto_unbox = TRUE, digits = NA))
        self$`notification` <- `notification_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AssignmentStatusResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AssignmentStatusResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssignmentStatusResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assignmentStatusId` <- this_object$`assignmentStatusId`
      self$`active` <- this_object$`active`
      if (!is.null(this_object$`toDo`) && !(this_object$`toDo` %in% c("SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT"))) {
        stop(paste("Error! \"", this_object$`toDo`, "\" cannot be assigned to `toDo`. Must be \"SITE_VISIT\", \"PHONE\", \"RECONTACT\", \"RENEWAL\", \"CREDIT\".", sep = ""))
      }
      self$`toDo` <- this_object$`toDo`
      if (!is.null(this_object$`connection`) && !(this_object$`connection` %in% c("INITIAL", "FOLLOW_UP", "DECLINED"))) {
        stop(paste("Error! \"", this_object$`connection`, "\" cannot be assigned to `connection`. Must be \"INITIAL\", \"FOLLOW_UP\", \"DECLINED\".", sep = ""))
      }
      self$`connection` <- this_object$`connection`
      if (!is.null(this_object$`method`) && !(this_object$`method` %in% c("PHONE", "SITE_VISIT", "EMAIL"))) {
        stop(paste("Error! \"", this_object$`method`, "\" cannot be assigned to `method`. Must be \"PHONE\", \"SITE_VISIT\", \"EMAIL\".", sep = ""))
      }
      self$`method` <- this_object$`method`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"ARCHIVED\", \"SUBSCRIBED\", \"UNSUBSCRIBED\", \"CONTACTED\", \"DECLINED\", \"NOT_CONTACTED\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      if (!is.null(this_object$`closure`) && !(this_object$`closure` %in% c("PHONE", "SITE_VISIT", "PHONE_SITE", "WEB"))) {
        stop(paste("Error! \"", this_object$`closure`, "\" cannot be assigned to `closure`. Must be \"PHONE\", \"SITE_VISIT\", \"PHONE_SITE\", \"WEB\".", sep = ""))
      }
      self$`closure` <- this_object$`closure`
      self$`message` <- this_object$`message`
      self$`followUp` <- this_object$`followUp`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`notification` <- ScheduledNotificationShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`notification`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AssignmentStatusResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AssignmentStatusResponse
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
# AssignmentStatusResponse$unlock()
#
## Below is an example to define the print function
# AssignmentStatusResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AssignmentStatusResponse$lock()

