#' Create a new ConnectionResponse
#'
#' @description
#' ConnectionResponse Class
#'
#' @docType class
#' @title ConnectionResponse
#' @description ConnectionResponse Class
#' @format An \code{R6Class} generator object
#' @field connectionId  integer [optional]
#' @field connectionAccountId  character [optional]
#' @field connectionPendingId  character [optional]
#' @field display  character [optional]
#' @field locationDisplay  character [optional]
#' @field connectionViewedDate  integer [optional]
#' @field profileImage  character [optional]
#' @field title  character [optional]
#' @field connectionAccountType  character [optional]
#' @field trusted  character [optional]
#' @field following  character [optional]
#' @field friendRequested  character [optional]
#' @field friendRequestPending  character [optional]
#' @field blocked  character [optional]
#' @field friend  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectionResponse <- R6::R6Class(
  "ConnectionResponse",
  public = list(
    `connectionId` = NULL,
    `connectionAccountId` = NULL,
    `connectionPendingId` = NULL,
    `display` = NULL,
    `locationDisplay` = NULL,
    `connectionViewedDate` = NULL,
    `profileImage` = NULL,
    `title` = NULL,
    `connectionAccountType` = NULL,
    `trusted` = NULL,
    `following` = NULL,
    `friendRequested` = NULL,
    `friendRequestPending` = NULL,
    `blocked` = NULL,
    `friend` = NULL,

    #' @description
    #' Initialize a new ConnectionResponse class.
    #'
    #' @param connectionId connectionId
    #' @param connectionAccountId connectionAccountId
    #' @param connectionPendingId connectionPendingId
    #' @param display display
    #' @param locationDisplay locationDisplay
    #' @param connectionViewedDate connectionViewedDate
    #' @param profileImage profileImage
    #' @param title title
    #' @param connectionAccountType connectionAccountType
    #' @param trusted trusted
    #' @param following following
    #' @param friendRequested friendRequested
    #' @param friendRequestPending friendRequestPending
    #' @param blocked blocked
    #' @param friend friend
    #' @param ... Other optional arguments.
    initialize = function(`connectionId` = NULL, `connectionAccountId` = NULL, `connectionPendingId` = NULL, `display` = NULL, `locationDisplay` = NULL, `connectionViewedDate` = NULL, `profileImage` = NULL, `title` = NULL, `connectionAccountType` = NULL, `trusted` = NULL, `following` = NULL, `friendRequested` = NULL, `friendRequestPending` = NULL, `blocked` = NULL, `friend` = NULL, ...) {
      if (!is.null(`connectionId`)) {
        if (!(is.numeric(`connectionId`) && length(`connectionId`) == 1)) {
          stop(paste("Error! Invalid data for `connectionId`. Must be an integer:", `connectionId`))
        }
        self$`connectionId` <- `connectionId`
      }
      if (!is.null(`connectionAccountId`)) {
        if (!(is.character(`connectionAccountId`) && length(`connectionAccountId`) == 1)) {
          stop(paste("Error! Invalid data for `connectionAccountId`. Must be a string:", `connectionAccountId`))
        }
        self$`connectionAccountId` <- `connectionAccountId`
      }
      if (!is.null(`connectionPendingId`)) {
        if (!(is.character(`connectionPendingId`) && length(`connectionPendingId`) == 1)) {
          stop(paste("Error! Invalid data for `connectionPendingId`. Must be a string:", `connectionPendingId`))
        }
        self$`connectionPendingId` <- `connectionPendingId`
      }
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`locationDisplay`)) {
        if (!(is.character(`locationDisplay`) && length(`locationDisplay`) == 1)) {
          stop(paste("Error! Invalid data for `locationDisplay`. Must be a string:", `locationDisplay`))
        }
        self$`locationDisplay` <- `locationDisplay`
      }
      if (!is.null(`connectionViewedDate`)) {
        if (!(is.numeric(`connectionViewedDate`) && length(`connectionViewedDate`) == 1)) {
          stop(paste("Error! Invalid data for `connectionViewedDate`. Must be an integer:", `connectionViewedDate`))
        }
        self$`connectionViewedDate` <- `connectionViewedDate`
      }
      if (!is.null(`profileImage`)) {
        if (!(is.character(`profileImage`) && length(`profileImage`) == 1)) {
          stop(paste("Error! Invalid data for `profileImage`. Must be a string:", `profileImage`))
        }
        self$`profileImage` <- `profileImage`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`connectionAccountType`)) {
        if (!(is.character(`connectionAccountType`) && length(`connectionAccountType`) == 1)) {
          stop(paste("Error! Invalid data for `connectionAccountType`. Must be a string:", `connectionAccountType`))
        }
        self$`connectionAccountType` <- `connectionAccountType`
      }
      if (!is.null(`trusted`)) {
        if (!(is.logical(`trusted`) && length(`trusted`) == 1)) {
          stop(paste("Error! Invalid data for `trusted`. Must be a boolean:", `trusted`))
        }
        self$`trusted` <- `trusted`
      }
      if (!is.null(`following`)) {
        if (!(is.logical(`following`) && length(`following`) == 1)) {
          stop(paste("Error! Invalid data for `following`. Must be a boolean:", `following`))
        }
        self$`following` <- `following`
      }
      if (!is.null(`friendRequested`)) {
        if (!(is.logical(`friendRequested`) && length(`friendRequested`) == 1)) {
          stop(paste("Error! Invalid data for `friendRequested`. Must be a boolean:", `friendRequested`))
        }
        self$`friendRequested` <- `friendRequested`
      }
      if (!is.null(`friendRequestPending`)) {
        if (!(is.logical(`friendRequestPending`) && length(`friendRequestPending`) == 1)) {
          stop(paste("Error! Invalid data for `friendRequestPending`. Must be a boolean:", `friendRequestPending`))
        }
        self$`friendRequestPending` <- `friendRequestPending`
      }
      if (!is.null(`blocked`)) {
        if (!(is.logical(`blocked`) && length(`blocked`) == 1)) {
          stop(paste("Error! Invalid data for `blocked`. Must be a boolean:", `blocked`))
        }
        self$`blocked` <- `blocked`
      }
      if (!is.null(`friend`)) {
        if (!(is.logical(`friend`) && length(`friend`) == 1)) {
          stop(paste("Error! Invalid data for `friend`. Must be a boolean:", `friend`))
        }
        self$`friend` <- `friend`
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
    #' @return ConnectionResponse as a base R list.
    #' @examples
    #' # convert array of ConnectionResponse (x) to a data frame
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
    #' Convert ConnectionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConnectionResponseObject <- list()
      if (!is.null(self$`connectionId`)) {
        ConnectionResponseObject[["connectionId"]] <-
          self$`connectionId`
      }
      if (!is.null(self$`connectionAccountId`)) {
        ConnectionResponseObject[["connectionAccountId"]] <-
          self$`connectionAccountId`
      }
      if (!is.null(self$`connectionPendingId`)) {
        ConnectionResponseObject[["connectionPendingId"]] <-
          self$`connectionPendingId`
      }
      if (!is.null(self$`display`)) {
        ConnectionResponseObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`locationDisplay`)) {
        ConnectionResponseObject[["locationDisplay"]] <-
          self$`locationDisplay`
      }
      if (!is.null(self$`connectionViewedDate`)) {
        ConnectionResponseObject[["connectionViewedDate"]] <-
          self$`connectionViewedDate`
      }
      if (!is.null(self$`profileImage`)) {
        ConnectionResponseObject[["profileImage"]] <-
          self$`profileImage`
      }
      if (!is.null(self$`title`)) {
        ConnectionResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`connectionAccountType`)) {
        ConnectionResponseObject[["connectionAccountType"]] <-
          self$`connectionAccountType`
      }
      if (!is.null(self$`trusted`)) {
        ConnectionResponseObject[["trusted"]] <-
          self$`trusted`
      }
      if (!is.null(self$`following`)) {
        ConnectionResponseObject[["following"]] <-
          self$`following`
      }
      if (!is.null(self$`friendRequested`)) {
        ConnectionResponseObject[["friendRequested"]] <-
          self$`friendRequested`
      }
      if (!is.null(self$`friendRequestPending`)) {
        ConnectionResponseObject[["friendRequestPending"]] <-
          self$`friendRequestPending`
      }
      if (!is.null(self$`blocked`)) {
        ConnectionResponseObject[["blocked"]] <-
          self$`blocked`
      }
      if (!is.null(self$`friend`)) {
        ConnectionResponseObject[["friend"]] <-
          self$`friend`
      }
      return(ConnectionResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`connectionId`)) {
        self$`connectionId` <- this_object$`connectionId`
      }
      if (!is.null(this_object$`connectionAccountId`)) {
        self$`connectionAccountId` <- this_object$`connectionAccountId`
      }
      if (!is.null(this_object$`connectionPendingId`)) {
        self$`connectionPendingId` <- this_object$`connectionPendingId`
      }
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`locationDisplay`)) {
        self$`locationDisplay` <- this_object$`locationDisplay`
      }
      if (!is.null(this_object$`connectionViewedDate`)) {
        self$`connectionViewedDate` <- this_object$`connectionViewedDate`
      }
      if (!is.null(this_object$`profileImage`)) {
        self$`profileImage` <- this_object$`profileImage`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`connectionAccountType`)) {
        self$`connectionAccountType` <- this_object$`connectionAccountType`
      }
      if (!is.null(this_object$`trusted`)) {
        self$`trusted` <- this_object$`trusted`
      }
      if (!is.null(this_object$`following`)) {
        self$`following` <- this_object$`following`
      }
      if (!is.null(this_object$`friendRequested`)) {
        self$`friendRequested` <- this_object$`friendRequested`
      }
      if (!is.null(this_object$`friendRequestPending`)) {
        self$`friendRequestPending` <- this_object$`friendRequestPending`
      }
      if (!is.null(this_object$`blocked`)) {
        self$`blocked` <- this_object$`blocked`
      }
      if (!is.null(this_object$`friend`)) {
        self$`friend` <- this_object$`friend`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConnectionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`connectionId` <- this_object$`connectionId`
      self$`connectionAccountId` <- this_object$`connectionAccountId`
      self$`connectionPendingId` <- this_object$`connectionPendingId`
      self$`display` <- this_object$`display`
      self$`locationDisplay` <- this_object$`locationDisplay`
      self$`connectionViewedDate` <- this_object$`connectionViewedDate`
      self$`profileImage` <- this_object$`profileImage`
      self$`title` <- this_object$`title`
      self$`connectionAccountType` <- this_object$`connectionAccountType`
      self$`trusted` <- this_object$`trusted`
      self$`following` <- this_object$`following`
      self$`friendRequested` <- this_object$`friendRequested`
      self$`friendRequestPending` <- this_object$`friendRequestPending`
      self$`blocked` <- this_object$`blocked`
      self$`friend` <- this_object$`friend`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConnectionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionResponse
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
# ConnectionResponse$unlock()
#
## Below is an example to define the print function
# ConnectionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionResponse$lock()

