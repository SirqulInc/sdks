#' Create a new NotificationMessageResponse
#'
#' @description
#' NotificationMessageResponse Class
#'
#' @docType class
#' @title NotificationMessageResponse
#' @description NotificationMessageResponse Class
#' @format An \code{R6Class} generator object
#' @field sender  \link{AccountShortResponse} [optional]
#' @field event  character [optional]
#' @field notificationMessage  character [optional]
#' @field created  integer [optional]
#' @field hasRead  character [optional]
#' @field contentId  integer [optional]
#' @field contentType  character [optional]
#' @field contentName  character [optional]
#' @field parentId  integer [optional]
#' @field parentType  character [optional]
#' @field actionCategory  character [optional]
#' @field thumbnailURL  character [optional]
#' @field coverURL  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationMessageResponse <- R6::R6Class(
  "NotificationMessageResponse",
  public = list(
    `sender` = NULL,
    `event` = NULL,
    `notificationMessage` = NULL,
    `created` = NULL,
    `hasRead` = NULL,
    `contentId` = NULL,
    `contentType` = NULL,
    `contentName` = NULL,
    `parentId` = NULL,
    `parentType` = NULL,
    `actionCategory` = NULL,
    `thumbnailURL` = NULL,
    `coverURL` = NULL,

    #' @description
    #' Initialize a new NotificationMessageResponse class.
    #'
    #' @param sender sender
    #' @param event event
    #' @param notificationMessage notificationMessage
    #' @param created created
    #' @param hasRead hasRead
    #' @param contentId contentId
    #' @param contentType contentType
    #' @param contentName contentName
    #' @param parentId parentId
    #' @param parentType parentType
    #' @param actionCategory actionCategory
    #' @param thumbnailURL thumbnailURL
    #' @param coverURL coverURL
    #' @param ... Other optional arguments.
    initialize = function(`sender` = NULL, `event` = NULL, `notificationMessage` = NULL, `created` = NULL, `hasRead` = NULL, `contentId` = NULL, `contentType` = NULL, `contentName` = NULL, `parentId` = NULL, `parentType` = NULL, `actionCategory` = NULL, `thumbnailURL` = NULL, `coverURL` = NULL, ...) {
      if (!is.null(`sender`)) {
        stopifnot(R6::is.R6(`sender`))
        self$`sender` <- `sender`
      }
      if (!is.null(`event`)) {
        if (!(is.character(`event`) && length(`event`) == 1)) {
          stop(paste("Error! Invalid data for `event`. Must be a string:", `event`))
        }
        self$`event` <- `event`
      }
      if (!is.null(`notificationMessage`)) {
        if (!(is.character(`notificationMessage`) && length(`notificationMessage`) == 1)) {
          stop(paste("Error! Invalid data for `notificationMessage`. Must be a string:", `notificationMessage`))
        }
        self$`notificationMessage` <- `notificationMessage`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`hasRead`)) {
        if (!(is.logical(`hasRead`) && length(`hasRead`) == 1)) {
          stop(paste("Error! Invalid data for `hasRead`. Must be a boolean:", `hasRead`))
        }
        self$`hasRead` <- `hasRead`
      }
      if (!is.null(`contentId`)) {
        if (!(is.numeric(`contentId`) && length(`contentId`) == 1)) {
          stop(paste("Error! Invalid data for `contentId`. Must be an integer:", `contentId`))
        }
        self$`contentId` <- `contentId`
      }
      if (!is.null(`contentType`)) {
        if (!(is.character(`contentType`) && length(`contentType`) == 1)) {
          stop(paste("Error! Invalid data for `contentType`. Must be a string:", `contentType`))
        }
        self$`contentType` <- `contentType`
      }
      if (!is.null(`contentName`)) {
        if (!(is.character(`contentName`) && length(`contentName`) == 1)) {
          stop(paste("Error! Invalid data for `contentName`. Must be a string:", `contentName`))
        }
        self$`contentName` <- `contentName`
      }
      if (!is.null(`parentId`)) {
        if (!(is.numeric(`parentId`) && length(`parentId`) == 1)) {
          stop(paste("Error! Invalid data for `parentId`. Must be an integer:", `parentId`))
        }
        self$`parentId` <- `parentId`
      }
      if (!is.null(`parentType`)) {
        if (!(is.character(`parentType`) && length(`parentType`) == 1)) {
          stop(paste("Error! Invalid data for `parentType`. Must be a string:", `parentType`))
        }
        self$`parentType` <- `parentType`
      }
      if (!is.null(`actionCategory`)) {
        if (!(is.character(`actionCategory`) && length(`actionCategory`) == 1)) {
          stop(paste("Error! Invalid data for `actionCategory`. Must be a string:", `actionCategory`))
        }
        self$`actionCategory` <- `actionCategory`
      }
      if (!is.null(`thumbnailURL`)) {
        if (!(is.character(`thumbnailURL`) && length(`thumbnailURL`) == 1)) {
          stop(paste("Error! Invalid data for `thumbnailURL`. Must be a string:", `thumbnailURL`))
        }
        self$`thumbnailURL` <- `thumbnailURL`
      }
      if (!is.null(`coverURL`)) {
        if (!(is.character(`coverURL`) && length(`coverURL`) == 1)) {
          stop(paste("Error! Invalid data for `coverURL`. Must be a string:", `coverURL`))
        }
        self$`coverURL` <- `coverURL`
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
    #' @return NotificationMessageResponse as a base R list.
    #' @examples
    #' # convert array of NotificationMessageResponse (x) to a data frame
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
    #' Convert NotificationMessageResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NotificationMessageResponseObject <- list()
      if (!is.null(self$`sender`)) {
        NotificationMessageResponseObject[["sender"]] <-
          self$extractSimpleType(self$`sender`)
      }
      if (!is.null(self$`event`)) {
        NotificationMessageResponseObject[["event"]] <-
          self$`event`
      }
      if (!is.null(self$`notificationMessage`)) {
        NotificationMessageResponseObject[["notificationMessage"]] <-
          self$`notificationMessage`
      }
      if (!is.null(self$`created`)) {
        NotificationMessageResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`hasRead`)) {
        NotificationMessageResponseObject[["hasRead"]] <-
          self$`hasRead`
      }
      if (!is.null(self$`contentId`)) {
        NotificationMessageResponseObject[["contentId"]] <-
          self$`contentId`
      }
      if (!is.null(self$`contentType`)) {
        NotificationMessageResponseObject[["contentType"]] <-
          self$`contentType`
      }
      if (!is.null(self$`contentName`)) {
        NotificationMessageResponseObject[["contentName"]] <-
          self$`contentName`
      }
      if (!is.null(self$`parentId`)) {
        NotificationMessageResponseObject[["parentId"]] <-
          self$`parentId`
      }
      if (!is.null(self$`parentType`)) {
        NotificationMessageResponseObject[["parentType"]] <-
          self$`parentType`
      }
      if (!is.null(self$`actionCategory`)) {
        NotificationMessageResponseObject[["actionCategory"]] <-
          self$`actionCategory`
      }
      if (!is.null(self$`thumbnailURL`)) {
        NotificationMessageResponseObject[["thumbnailURL"]] <-
          self$`thumbnailURL`
      }
      if (!is.null(self$`coverURL`)) {
        NotificationMessageResponseObject[["coverURL"]] <-
          self$`coverURL`
      }
      return(NotificationMessageResponseObject)
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
    #' Deserialize JSON string into an instance of NotificationMessageResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationMessageResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sender`)) {
        `sender_object` <- AccountShortResponse$new()
        `sender_object`$fromJSON(jsonlite::toJSON(this_object$`sender`, auto_unbox = TRUE, digits = NA))
        self$`sender` <- `sender_object`
      }
      if (!is.null(this_object$`event`)) {
        self$`event` <- this_object$`event`
      }
      if (!is.null(this_object$`notificationMessage`)) {
        self$`notificationMessage` <- this_object$`notificationMessage`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`hasRead`)) {
        self$`hasRead` <- this_object$`hasRead`
      }
      if (!is.null(this_object$`contentId`)) {
        self$`contentId` <- this_object$`contentId`
      }
      if (!is.null(this_object$`contentType`)) {
        self$`contentType` <- this_object$`contentType`
      }
      if (!is.null(this_object$`contentName`)) {
        self$`contentName` <- this_object$`contentName`
      }
      if (!is.null(this_object$`parentId`)) {
        self$`parentId` <- this_object$`parentId`
      }
      if (!is.null(this_object$`parentType`)) {
        self$`parentType` <- this_object$`parentType`
      }
      if (!is.null(this_object$`actionCategory`)) {
        self$`actionCategory` <- this_object$`actionCategory`
      }
      if (!is.null(this_object$`thumbnailURL`)) {
        self$`thumbnailURL` <- this_object$`thumbnailURL`
      }
      if (!is.null(this_object$`coverURL`)) {
        self$`coverURL` <- this_object$`coverURL`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NotificationMessageResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationMessageResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationMessageResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sender` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`sender`, auto_unbox = TRUE, digits = NA))
      self$`event` <- this_object$`event`
      self$`notificationMessage` <- this_object$`notificationMessage`
      self$`created` <- this_object$`created`
      self$`hasRead` <- this_object$`hasRead`
      self$`contentId` <- this_object$`contentId`
      self$`contentType` <- this_object$`contentType`
      self$`contentName` <- this_object$`contentName`
      self$`parentId` <- this_object$`parentId`
      self$`parentType` <- this_object$`parentType`
      self$`actionCategory` <- this_object$`actionCategory`
      self$`thumbnailURL` <- this_object$`thumbnailURL`
      self$`coverURL` <- this_object$`coverURL`
      self
    },

    #' @description
    #' Validate JSON input with respect to NotificationMessageResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NotificationMessageResponse
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
# NotificationMessageResponse$unlock()
#
## Below is an example to define the print function
# NotificationMessageResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NotificationMessageResponse$lock()

