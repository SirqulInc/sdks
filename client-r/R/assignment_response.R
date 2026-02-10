#' Create a new AssignmentResponse
#'
#' @description
#' AssignmentResponse Class
#'
#' @docType class
#' @title AssignmentResponse
#' @description AssignmentResponse Class
#' @format An \code{R6Class} generator object
#' @field assignmentId  integer [optional]
#' @field name  character [optional]
#' @field description  character [optional]
#' @field active  character [optional]
#' @field created  integer [optional]
#' @field updated  integer [optional]
#' @field assignee  \link{AccountShortResponse} [optional]
#' @field creator  \link{AccountShortResponse} [optional]
#' @field lastReportedBy  \link{AccountShortResponse} [optional]
#' @field location  \link{RetailerLocationShortResponse} [optional]
#' @field currentStatus  \link{AssignmentStatusResponse} [optional]
#' @field currentStatusType  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AssignmentResponse <- R6::R6Class(
  "AssignmentResponse",
  public = list(
    `assignmentId` = NULL,
    `name` = NULL,
    `description` = NULL,
    `active` = NULL,
    `created` = NULL,
    `updated` = NULL,
    `assignee` = NULL,
    `creator` = NULL,
    `lastReportedBy` = NULL,
    `location` = NULL,
    `currentStatus` = NULL,
    `currentStatusType` = NULL,

    #' @description
    #' Initialize a new AssignmentResponse class.
    #'
    #' @param assignmentId assignmentId
    #' @param name name
    #' @param description description
    #' @param active active
    #' @param created created
    #' @param updated updated
    #' @param assignee assignee
    #' @param creator creator
    #' @param lastReportedBy lastReportedBy
    #' @param location location
    #' @param currentStatus currentStatus
    #' @param currentStatusType currentStatusType
    #' @param ... Other optional arguments.
    initialize = function(`assignmentId` = NULL, `name` = NULL, `description` = NULL, `active` = NULL, `created` = NULL, `updated` = NULL, `assignee` = NULL, `creator` = NULL, `lastReportedBy` = NULL, `location` = NULL, `currentStatus` = NULL, `currentStatusType` = NULL, ...) {
      if (!is.null(`assignmentId`)) {
        if (!(is.numeric(`assignmentId`) && length(`assignmentId`) == 1)) {
          stop(paste("Error! Invalid data for `assignmentId`. Must be an integer:", `assignmentId`))
        }
        self$`assignmentId` <- `assignmentId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
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
      if (!is.null(`assignee`)) {
        stopifnot(R6::is.R6(`assignee`))
        self$`assignee` <- `assignee`
      }
      if (!is.null(`creator`)) {
        stopifnot(R6::is.R6(`creator`))
        self$`creator` <- `creator`
      }
      if (!is.null(`lastReportedBy`)) {
        stopifnot(R6::is.R6(`lastReportedBy`))
        self$`lastReportedBy` <- `lastReportedBy`
      }
      if (!is.null(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!is.null(`currentStatus`)) {
        stopifnot(R6::is.R6(`currentStatus`))
        self$`currentStatus` <- `currentStatus`
      }
      if (!is.null(`currentStatusType`)) {
        if (!(`currentStatusType` %in% c("NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED"))) {
          stop(paste("Error! \"", `currentStatusType`, "\" cannot be assigned to `currentStatusType`. Must be \"NEW\", \"IN_PROGRESS\", \"SUBSCRIBED\", \"ARCHIVED\".", sep = ""))
        }
        if (!(is.character(`currentStatusType`) && length(`currentStatusType`) == 1)) {
          stop(paste("Error! Invalid data for `currentStatusType`. Must be a string:", `currentStatusType`))
        }
        self$`currentStatusType` <- `currentStatusType`
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
    #' @return AssignmentResponse as a base R list.
    #' @examples
    #' # convert array of AssignmentResponse (x) to a data frame
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
    #' Convert AssignmentResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssignmentResponseObject <- list()
      if (!is.null(self$`assignmentId`)) {
        AssignmentResponseObject[["assignmentId"]] <-
          self$`assignmentId`
      }
      if (!is.null(self$`name`)) {
        AssignmentResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        AssignmentResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`active`)) {
        AssignmentResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`created`)) {
        AssignmentResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`updated`)) {
        AssignmentResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`assignee`)) {
        AssignmentResponseObject[["assignee"]] <-
          self$extractSimpleType(self$`assignee`)
      }
      if (!is.null(self$`creator`)) {
        AssignmentResponseObject[["creator"]] <-
          self$extractSimpleType(self$`creator`)
      }
      if (!is.null(self$`lastReportedBy`)) {
        AssignmentResponseObject[["lastReportedBy"]] <-
          self$extractSimpleType(self$`lastReportedBy`)
      }
      if (!is.null(self$`location`)) {
        AssignmentResponseObject[["location"]] <-
          self$extractSimpleType(self$`location`)
      }
      if (!is.null(self$`currentStatus`)) {
        AssignmentResponseObject[["currentStatus"]] <-
          self$extractSimpleType(self$`currentStatus`)
      }
      if (!is.null(self$`currentStatusType`)) {
        AssignmentResponseObject[["currentStatusType"]] <-
          self$`currentStatusType`
      }
      return(AssignmentResponseObject)
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
    #' Deserialize JSON string into an instance of AssignmentResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssignmentResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assignmentId`)) {
        self$`assignmentId` <- this_object$`assignmentId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`assignee`)) {
        `assignee_object` <- AccountShortResponse$new()
        `assignee_object`$fromJSON(jsonlite::toJSON(this_object$`assignee`, auto_unbox = TRUE, digits = NA))
        self$`assignee` <- `assignee_object`
      }
      if (!is.null(this_object$`creator`)) {
        `creator_object` <- AccountShortResponse$new()
        `creator_object`$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
        self$`creator` <- `creator_object`
      }
      if (!is.null(this_object$`lastReportedBy`)) {
        `lastreportedby_object` <- AccountShortResponse$new()
        `lastreportedby_object`$fromJSON(jsonlite::toJSON(this_object$`lastReportedBy`, auto_unbox = TRUE, digits = NA))
        self$`lastReportedBy` <- `lastreportedby_object`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- RetailerLocationShortResponse$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`currentStatus`)) {
        `currentstatus_object` <- AssignmentStatusResponse$new()
        `currentstatus_object`$fromJSON(jsonlite::toJSON(this_object$`currentStatus`, auto_unbox = TRUE, digits = NA))
        self$`currentStatus` <- `currentstatus_object`
      }
      if (!is.null(this_object$`currentStatusType`)) {
        if (!is.null(this_object$`currentStatusType`) && !(this_object$`currentStatusType` %in% c("NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED"))) {
          stop(paste("Error! \"", this_object$`currentStatusType`, "\" cannot be assigned to `currentStatusType`. Must be \"NEW\", \"IN_PROGRESS\", \"SUBSCRIBED\", \"ARCHIVED\".", sep = ""))
        }
        self$`currentStatusType` <- this_object$`currentStatusType`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AssignmentResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AssignmentResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssignmentResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assignmentId` <- this_object$`assignmentId`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`active` <- this_object$`active`
      self$`created` <- this_object$`created`
      self$`updated` <- this_object$`updated`
      self$`assignee` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`assignee`, auto_unbox = TRUE, digits = NA))
      self$`creator` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`creator`, auto_unbox = TRUE, digits = NA))
      self$`lastReportedBy` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`lastReportedBy`, auto_unbox = TRUE, digits = NA))
      self$`location` <- RetailerLocationShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`currentStatus` <- AssignmentStatusResponse$new()$fromJSON(jsonlite::toJSON(this_object$`currentStatus`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`currentStatusType`) && !(this_object$`currentStatusType` %in% c("NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED"))) {
        stop(paste("Error! \"", this_object$`currentStatusType`, "\" cannot be assigned to `currentStatusType`. Must be \"NEW\", \"IN_PROGRESS\", \"SUBSCRIBED\", \"ARCHIVED\".", sep = ""))
      }
      self$`currentStatusType` <- this_object$`currentStatusType`
      self
    },

    #' @description
    #' Validate JSON input with respect to AssignmentResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AssignmentResponse
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
# AssignmentResponse$unlock()
#
## Below is an example to define the print function
# AssignmentResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AssignmentResponse$lock()

