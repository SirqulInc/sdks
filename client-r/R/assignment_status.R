#' Create a new AssignmentStatus
#'
#' @description
#' AssignmentStatus Class
#'
#' @docType class
#' @title AssignmentStatus
#' @description AssignmentStatus Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field assignment  \link{Assignment} [optional]
#' @field creator  \link{Account} [optional]
#' @field toDo  character [optional]
#' @field connection  character [optional]
#' @field method  character [optional]
#' @field status  character [optional]
#' @field closure  character [optional]
#' @field message  character [optional]
#' @field followUp  character [optional]
#' @field notification  \link{ScheduledNotification} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AssignmentStatus <- R6::R6Class(
  "AssignmentStatus",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `assignment` = NULL,
    `creator` = NULL,
    `toDo` = NULL,
    `connection` = NULL,
    `method` = NULL,
    `status` = NULL,
    `closure` = NULL,
    `message` = NULL,
    `followUp` = NULL,
    `notification` = NULL,

    #' @description
    #' Initialize a new AssignmentStatus class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param assignment assignment
    #' @param creator creator
    #' @param toDo toDo
    #' @param connection connection
    #' @param method method
    #' @param status status
    #' @param closure closure
    #' @param message message
    #' @param followUp followUp
    #' @param notification notification
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `assignment` = NULL, `creator` = NULL, `toDo` = NULL, `connection` = NULL, `method` = NULL, `status` = NULL, `closure` = NULL, `message` = NULL, `followUp` = NULL, `notification` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`assignment`)) {
        stopifnot(R6::is.R6(`assignment`))
        self$`assignment` <- `assignment`
      }
      if (!is.null(`creator`)) {
        stopifnot(R6::is.R6(`creator`))
        self$`creator` <- `creator`
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
        if (!is.character(`followUp`)) {
          stop(paste("Error! Invalid data for `followUp`. Must be a string:", `followUp`))
        }
        self$`followUp` <- `followUp`
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
    #' @return AssignmentStatus as a base R list.
    #' @examples
    #' # convert array of AssignmentStatus (x) to a data frame
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
    #' Convert AssignmentStatus to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssignmentStatusObject <- list()
      if (!is.null(self$`id`)) {
        AssignmentStatusObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        AssignmentStatusObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        AssignmentStatusObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`assignment`)) {
        AssignmentStatusObject[["assignment"]] <-
          self$extractSimpleType(self$`assignment`)
      }
      if (!is.null(self$`creator`)) {
        AssignmentStatusObject[["creator"]] <-
          self$extractSimpleType(self$`creator`)
      }
      if (!is.null(self$`toDo`)) {
        AssignmentStatusObject[["toDo"]] <-
          self$`toDo`
      }
      if (!is.null(self$`connection`)) {
        AssignmentStatusObject[["connection"]] <-
          self$`connection`
      }
      if (!is.null(self$`method`)) {
        AssignmentStatusObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`status`)) {
        AssignmentStatusObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`closure`)) {
        AssignmentStatusObject[["closure"]] <-
          self$`closure`
      }
      if (!is.null(self$`message`)) {
        AssignmentStatusObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`followUp`)) {
        AssignmentStatusObject[["followUp"]] <-
          self$`followUp`
      }
      if (!is.null(self$`notification`)) {
        AssignmentStatusObject[["notification"]] <-
          self$extractSimpleType(self$`notification`)
      }
      return(AssignmentStatusObject)
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
    #' Deserialize JSON string into an instance of AssignmentStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssignmentStatus
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      if (!is.null(this_object$`assignment`)) {
        `assignment_object` <- Assignment$new()
        `assignment_object`$fromJSON(jsonlite::toJSON(this_object$`assignment`, auto_unbox = TRUE, digits = NA))
        self$`assignment` <- `assignment_object`
      }
      if (!is.null(this_object$`creator`)) {
        `creator_object` <- Account$new()
        `creator_object`$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
        self$`creator` <- `creator_object`
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
      if (!is.null(this_object$`notification`)) {
        `notification_object` <- ScheduledNotification$new()
        `notification_object`$fromJSON(jsonlite::toJSON(this_object$`notification`, auto_unbox = TRUE, digits = NA))
        self$`notification` <- `notification_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AssignmentStatus in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AssignmentStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssignmentStatus
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`assignment` <- Assignment$new()$fromJSON(jsonlite::toJSON(this_object$`assignment`, auto_unbox = TRUE, digits = NA))
      self$`creator` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
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
      self$`notification` <- ScheduledNotification$new()$fromJSON(jsonlite::toJSON(this_object$`notification`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AssignmentStatus and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AssignmentStatus
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
# AssignmentStatus$unlock()
#
## Below is an example to define the print function
# AssignmentStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AssignmentStatus$lock()

