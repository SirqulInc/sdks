#' Create a new NotificationTemplateResponse
#'
#' @description
#' NotificationTemplateResponse Class
#'
#' @docType class
#' @title NotificationTemplateResponse
#' @description NotificationTemplateResponse Class
#' @format An \code{R6Class} generator object
#' @field notificationTemplateId  integer [optional]
#' @field event  character [optional]
#' @field conduit  character [optional]
#' @field title  character [optional]
#' @field body  character [optional]
#' @field publicBody  character [optional]
#' @field application  \link{ApplicationMiniResponse} [optional]
#' @field updated  integer [optional]
#' @field created  integer [optional]
#' @field tags  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationTemplateResponse <- R6::R6Class(
  "NotificationTemplateResponse",
  public = list(
    `notificationTemplateId` = NULL,
    `event` = NULL,
    `conduit` = NULL,
    `title` = NULL,
    `body` = NULL,
    `publicBody` = NULL,
    `application` = NULL,
    `updated` = NULL,
    `created` = NULL,
    `tags` = NULL,

    #' @description
    #' Initialize a new NotificationTemplateResponse class.
    #'
    #' @param notificationTemplateId notificationTemplateId
    #' @param event event
    #' @param conduit conduit
    #' @param title title
    #' @param body body
    #' @param publicBody publicBody
    #' @param application application
    #' @param updated updated
    #' @param created created
    #' @param tags tags
    #' @param ... Other optional arguments.
    initialize = function(`notificationTemplateId` = NULL, `event` = NULL, `conduit` = NULL, `title` = NULL, `body` = NULL, `publicBody` = NULL, `application` = NULL, `updated` = NULL, `created` = NULL, `tags` = NULL, ...) {
      if (!is.null(`notificationTemplateId`)) {
        if (!(is.numeric(`notificationTemplateId`) && length(`notificationTemplateId`) == 1)) {
          stop(paste("Error! Invalid data for `notificationTemplateId`. Must be an integer:", `notificationTemplateId`))
        }
        self$`notificationTemplateId` <- `notificationTemplateId`
      }
      if (!is.null(`event`)) {
        if (!(is.character(`event`) && length(`event`) == 1)) {
          stop(paste("Error! Invalid data for `event`. Must be a string:", `event`))
        }
        self$`event` <- `event`
      }
      if (!is.null(`conduit`)) {
        if (!(`conduit` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
          stop(paste("Error! \"", `conduit`, "\" cannot be assigned to `conduit`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
        }
        if (!(is.character(`conduit`) && length(`conduit`) == 1)) {
          stop(paste("Error! Invalid data for `conduit`. Must be a string:", `conduit`))
        }
        self$`conduit` <- `conduit`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!is.null(`publicBody`)) {
        if (!(is.character(`publicBody`) && length(`publicBody`) == 1)) {
          stop(paste("Error! Invalid data for `publicBody`. Must be a string:", `publicBody`))
        }
        self$`publicBody` <- `publicBody`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`tags`)) {
        if (!(is.character(`tags`) && length(`tags`) == 1)) {
          stop(paste("Error! Invalid data for `tags`. Must be a string:", `tags`))
        }
        self$`tags` <- `tags`
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
    #' @return NotificationTemplateResponse as a base R list.
    #' @examples
    #' # convert array of NotificationTemplateResponse (x) to a data frame
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
    #' Convert NotificationTemplateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NotificationTemplateResponseObject <- list()
      if (!is.null(self$`notificationTemplateId`)) {
        NotificationTemplateResponseObject[["notificationTemplateId"]] <-
          self$`notificationTemplateId`
      }
      if (!is.null(self$`event`)) {
        NotificationTemplateResponseObject[["event"]] <-
          self$`event`
      }
      if (!is.null(self$`conduit`)) {
        NotificationTemplateResponseObject[["conduit"]] <-
          self$`conduit`
      }
      if (!is.null(self$`title`)) {
        NotificationTemplateResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`body`)) {
        NotificationTemplateResponseObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`publicBody`)) {
        NotificationTemplateResponseObject[["publicBody"]] <-
          self$`publicBody`
      }
      if (!is.null(self$`application`)) {
        NotificationTemplateResponseObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`updated`)) {
        NotificationTemplateResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`created`)) {
        NotificationTemplateResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`tags`)) {
        NotificationTemplateResponseObject[["tags"]] <-
          self$`tags`
      }
      return(NotificationTemplateResponseObject)
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
    #' Deserialize JSON string into an instance of NotificationTemplateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationTemplateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`notificationTemplateId`)) {
        self$`notificationTemplateId` <- this_object$`notificationTemplateId`
      }
      if (!is.null(this_object$`event`)) {
        self$`event` <- this_object$`event`
      }
      if (!is.null(this_object$`conduit`)) {
        if (!is.null(this_object$`conduit`) && !(this_object$`conduit` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
          stop(paste("Error! \"", this_object$`conduit`, "\" cannot be assigned to `conduit`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
        }
        self$`conduit` <- this_object$`conduit`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`publicBody`)) {
        self$`publicBody` <- this_object$`publicBody`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- ApplicationMiniResponse$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- this_object$`tags`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NotificationTemplateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationTemplateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationTemplateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`notificationTemplateId` <- this_object$`notificationTemplateId`
      self$`event` <- this_object$`event`
      if (!is.null(this_object$`conduit`) && !(this_object$`conduit` %in% c("HTTP", "SAVE", "EMAIL", "SMS", "APNS", "GCM", "PUSH", "MOBILE_NOTIFICATION"))) {
        stop(paste("Error! \"", this_object$`conduit`, "\" cannot be assigned to `conduit`. Must be \"HTTP\", \"SAVE\", \"EMAIL\", \"SMS\", \"APNS\", \"GCM\", \"PUSH\", \"MOBILE_NOTIFICATION\".", sep = ""))
      }
      self$`conduit` <- this_object$`conduit`
      self$`title` <- this_object$`title`
      self$`body` <- this_object$`body`
      self$`publicBody` <- this_object$`publicBody`
      self$`application` <- ApplicationMiniResponse$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`updated` <- this_object$`updated`
      self$`created` <- this_object$`created`
      self$`tags` <- this_object$`tags`
      self
    },

    #' @description
    #' Validate JSON input with respect to NotificationTemplateResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NotificationTemplateResponse
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
# NotificationTemplateResponse$unlock()
#
## Below is an example to define the print function
# NotificationTemplateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NotificationTemplateResponse$lock()

