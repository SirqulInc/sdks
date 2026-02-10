#' Create a new BlockedNotificationResponse
#'
#' @description
#' BlockedNotificationResponse Class
#'
#' @docType class
#' @title BlockedNotificationResponse
#' @description BlockedNotificationResponse Class
#' @format An \code{R6Class} generator object
#' @field blockedNotificationId  integer [optional]
#' @field created  integer [optional]
#' @field event  character [optional]
#' @field conduit  character [optional]
#' @field customType  character [optional]
#' @field contentType  character [optional]
#' @field contentId  integer [optional]
#' @field searchTags  character [optional]
#' @field blocked  character [optional]
#' @field deleted  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BlockedNotificationResponse <- R6::R6Class(
  "BlockedNotificationResponse",
  public = list(
    `blockedNotificationId` = NULL,
    `created` = NULL,
    `event` = NULL,
    `conduit` = NULL,
    `customType` = NULL,
    `contentType` = NULL,
    `contentId` = NULL,
    `searchTags` = NULL,
    `blocked` = NULL,
    `deleted` = NULL,

    #' @description
    #' Initialize a new BlockedNotificationResponse class.
    #'
    #' @param blockedNotificationId blockedNotificationId
    #' @param created created
    #' @param event event
    #' @param conduit conduit
    #' @param customType customType
    #' @param contentType contentType
    #' @param contentId contentId
    #' @param searchTags searchTags
    #' @param blocked blocked
    #' @param deleted deleted
    #' @param ... Other optional arguments.
    initialize = function(`blockedNotificationId` = NULL, `created` = NULL, `event` = NULL, `conduit` = NULL, `customType` = NULL, `contentType` = NULL, `contentId` = NULL, `searchTags` = NULL, `blocked` = NULL, `deleted` = NULL, ...) {
      if (!is.null(`blockedNotificationId`)) {
        if (!(is.numeric(`blockedNotificationId`) && length(`blockedNotificationId`) == 1)) {
          stop(paste("Error! Invalid data for `blockedNotificationId`. Must be an integer:", `blockedNotificationId`))
        }
        self$`blockedNotificationId` <- `blockedNotificationId`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`event`)) {
        if (!(is.character(`event`) && length(`event`) == 1)) {
          stop(paste("Error! Invalid data for `event`. Must be a string:", `event`))
        }
        self$`event` <- `event`
      }
      if (!is.null(`conduit`)) {
        if (!(is.character(`conduit`) && length(`conduit`) == 1)) {
          stop(paste("Error! Invalid data for `conduit`. Must be a string:", `conduit`))
        }
        self$`conduit` <- `conduit`
      }
      if (!is.null(`customType`)) {
        if (!(is.character(`customType`) && length(`customType`) == 1)) {
          stop(paste("Error! Invalid data for `customType`. Must be a string:", `customType`))
        }
        self$`customType` <- `customType`
      }
      if (!is.null(`contentType`)) {
        if (!(is.character(`contentType`) && length(`contentType`) == 1)) {
          stop(paste("Error! Invalid data for `contentType`. Must be a string:", `contentType`))
        }
        self$`contentType` <- `contentType`
      }
      if (!is.null(`contentId`)) {
        if (!(is.numeric(`contentId`) && length(`contentId`) == 1)) {
          stop(paste("Error! Invalid data for `contentId`. Must be an integer:", `contentId`))
        }
        self$`contentId` <- `contentId`
      }
      if (!is.null(`searchTags`)) {
        if (!(is.character(`searchTags`) && length(`searchTags`) == 1)) {
          stop(paste("Error! Invalid data for `searchTags`. Must be a string:", `searchTags`))
        }
        self$`searchTags` <- `searchTags`
      }
      if (!is.null(`blocked`)) {
        if (!(is.logical(`blocked`) && length(`blocked`) == 1)) {
          stop(paste("Error! Invalid data for `blocked`. Must be a boolean:", `blocked`))
        }
        self$`blocked` <- `blocked`
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
    #' @return BlockedNotificationResponse as a base R list.
    #' @examples
    #' # convert array of BlockedNotificationResponse (x) to a data frame
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
    #' Convert BlockedNotificationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BlockedNotificationResponseObject <- list()
      if (!is.null(self$`blockedNotificationId`)) {
        BlockedNotificationResponseObject[["blockedNotificationId"]] <-
          self$`blockedNotificationId`
      }
      if (!is.null(self$`created`)) {
        BlockedNotificationResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`event`)) {
        BlockedNotificationResponseObject[["event"]] <-
          self$`event`
      }
      if (!is.null(self$`conduit`)) {
        BlockedNotificationResponseObject[["conduit"]] <-
          self$`conduit`
      }
      if (!is.null(self$`customType`)) {
        BlockedNotificationResponseObject[["customType"]] <-
          self$`customType`
      }
      if (!is.null(self$`contentType`)) {
        BlockedNotificationResponseObject[["contentType"]] <-
          self$`contentType`
      }
      if (!is.null(self$`contentId`)) {
        BlockedNotificationResponseObject[["contentId"]] <-
          self$`contentId`
      }
      if (!is.null(self$`searchTags`)) {
        BlockedNotificationResponseObject[["searchTags"]] <-
          self$`searchTags`
      }
      if (!is.null(self$`blocked`)) {
        BlockedNotificationResponseObject[["blocked"]] <-
          self$`blocked`
      }
      if (!is.null(self$`deleted`)) {
        BlockedNotificationResponseObject[["deleted"]] <-
          self$`deleted`
      }
      return(BlockedNotificationResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BlockedNotificationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BlockedNotificationResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`blockedNotificationId`)) {
        self$`blockedNotificationId` <- this_object$`blockedNotificationId`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`event`)) {
        self$`event` <- this_object$`event`
      }
      if (!is.null(this_object$`conduit`)) {
        self$`conduit` <- this_object$`conduit`
      }
      if (!is.null(this_object$`customType`)) {
        self$`customType` <- this_object$`customType`
      }
      if (!is.null(this_object$`contentType`)) {
        self$`contentType` <- this_object$`contentType`
      }
      if (!is.null(this_object$`contentId`)) {
        self$`contentId` <- this_object$`contentId`
      }
      if (!is.null(this_object$`searchTags`)) {
        self$`searchTags` <- this_object$`searchTags`
      }
      if (!is.null(this_object$`blocked`)) {
        self$`blocked` <- this_object$`blocked`
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
    #' @return BlockedNotificationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BlockedNotificationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BlockedNotificationResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`blockedNotificationId` <- this_object$`blockedNotificationId`
      self$`created` <- this_object$`created`
      self$`event` <- this_object$`event`
      self$`conduit` <- this_object$`conduit`
      self$`customType` <- this_object$`customType`
      self$`contentType` <- this_object$`contentType`
      self$`contentId` <- this_object$`contentId`
      self$`searchTags` <- this_object$`searchTags`
      self$`blocked` <- this_object$`blocked`
      self$`deleted` <- this_object$`deleted`
      self
    },

    #' @description
    #' Validate JSON input with respect to BlockedNotificationResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BlockedNotificationResponse
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
# BlockedNotificationResponse$unlock()
#
## Below is an example to define the print function
# BlockedNotificationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BlockedNotificationResponse$lock()

