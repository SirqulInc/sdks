#' Create a new ConnectedFriend
#'
#' @description
#' ConnectedFriend Class
#'
#' @docType class
#' @title ConnectedFriend
#' @description ConnectedFriend Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field display  character [optional]
#' @field avatar  \link{Asset} [optional]
#' @field avatarURL  character [optional]
#' @field platform  character [optional]
#' @field platformId  character [optional]
#' @field invited  character [optional]
#' @field locationDescription  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectedFriend <- R6::R6Class(
  "ConnectedFriend",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `display` = NULL,
    `avatar` = NULL,
    `avatarURL` = NULL,
    `platform` = NULL,
    `platformId` = NULL,
    `invited` = NULL,
    `locationDescription` = NULL,

    #' @description
    #' Initialize a new ConnectedFriend class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param display display
    #' @param avatar avatar
    #' @param avatarURL avatarURL
    #' @param platform platform
    #' @param platformId platformId
    #' @param invited invited
    #' @param locationDescription locationDescription
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `display` = NULL, `avatar` = NULL, `avatarURL` = NULL, `platform` = NULL, `platformId` = NULL, `invited` = NULL, `locationDescription` = NULL, ...) {
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
      if (!is.null(`display`)) {
        if (!(is.character(`display`) && length(`display`) == 1)) {
          stop(paste("Error! Invalid data for `display`. Must be a string:", `display`))
        }
        self$`display` <- `display`
      }
      if (!is.null(`avatar`)) {
        stopifnot(R6::is.R6(`avatar`))
        self$`avatar` <- `avatar`
      }
      if (!is.null(`avatarURL`)) {
        if (!(is.character(`avatarURL`) && length(`avatarURL`) == 1)) {
          stop(paste("Error! Invalid data for `avatarURL`. Must be a string:", `avatarURL`))
        }
        self$`avatarURL` <- `avatarURL`
      }
      if (!is.null(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!is.null(`platformId`)) {
        if (!(is.character(`platformId`) && length(`platformId`) == 1)) {
          stop(paste("Error! Invalid data for `platformId`. Must be a string:", `platformId`))
        }
        self$`platformId` <- `platformId`
      }
      if (!is.null(`invited`)) {
        if (!(is.logical(`invited`) && length(`invited`) == 1)) {
          stop(paste("Error! Invalid data for `invited`. Must be a boolean:", `invited`))
        }
        self$`invited` <- `invited`
      }
      if (!is.null(`locationDescription`)) {
        if (!(is.character(`locationDescription`) && length(`locationDescription`) == 1)) {
          stop(paste("Error! Invalid data for `locationDescription`. Must be a string:", `locationDescription`))
        }
        self$`locationDescription` <- `locationDescription`
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
    #' @return ConnectedFriend as a base R list.
    #' @examples
    #' # convert array of ConnectedFriend (x) to a data frame
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
    #' Convert ConnectedFriend to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConnectedFriendObject <- list()
      if (!is.null(self$`id`)) {
        ConnectedFriendObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        ConnectedFriendObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        ConnectedFriendObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`display`)) {
        ConnectedFriendObject[["display"]] <-
          self$`display`
      }
      if (!is.null(self$`avatar`)) {
        ConnectedFriendObject[["avatar"]] <-
          self$extractSimpleType(self$`avatar`)
      }
      if (!is.null(self$`avatarURL`)) {
        ConnectedFriendObject[["avatarURL"]] <-
          self$`avatarURL`
      }
      if (!is.null(self$`platform`)) {
        ConnectedFriendObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`platformId`)) {
        ConnectedFriendObject[["platformId"]] <-
          self$`platformId`
      }
      if (!is.null(self$`invited`)) {
        ConnectedFriendObject[["invited"]] <-
          self$`invited`
      }
      if (!is.null(self$`locationDescription`)) {
        ConnectedFriendObject[["locationDescription"]] <-
          self$`locationDescription`
      }
      return(ConnectedFriendObject)
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
    #' Deserialize JSON string into an instance of ConnectedFriend
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectedFriend
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
      if (!is.null(this_object$`display`)) {
        self$`display` <- this_object$`display`
      }
      if (!is.null(this_object$`avatar`)) {
        `avatar_object` <- Asset$new()
        `avatar_object`$fromJSON(jsonlite::toJSON(this_object$`avatar`, auto_unbox = TRUE, digits = NA))
        self$`avatar` <- `avatar_object`
      }
      if (!is.null(this_object$`avatarURL`)) {
        self$`avatarURL` <- this_object$`avatarURL`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`platformId`)) {
        self$`platformId` <- this_object$`platformId`
      }
      if (!is.null(this_object$`invited`)) {
        self$`invited` <- this_object$`invited`
      }
      if (!is.null(this_object$`locationDescription`)) {
        self$`locationDescription` <- this_object$`locationDescription`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConnectedFriend in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConnectedFriend
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectedFriend
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`display` <- this_object$`display`
      self$`avatar` <- Asset$new()$fromJSON(jsonlite::toJSON(this_object$`avatar`, auto_unbox = TRUE, digits = NA))
      self$`avatarURL` <- this_object$`avatarURL`
      self$`platform` <- this_object$`platform`
      self$`platformId` <- this_object$`platformId`
      self$`invited` <- this_object$`invited`
      self$`locationDescription` <- this_object$`locationDescription`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConnectedFriend and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectedFriend
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
# ConnectedFriend$unlock()
#
## Below is an example to define the print function
# ConnectedFriend$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectedFriend$lock()

