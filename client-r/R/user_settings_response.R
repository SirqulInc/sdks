#' Create a new UserSettingsResponse
#'
#' @description
#' UserSettingsResponse Class
#'
#' @docType class
#' @title UserSettingsResponse
#' @description UserSettingsResponse Class
#' @format An \code{R6Class} generator object
#' @field showAsZipcode  character [optional]
#' @field showExactLocation  character [optional]
#' @field showOthersExactLocation  character [optional]
#' @field suggestionCount  integer [optional]
#' @field suggestionTimeFrame  integer [optional]
#' @field suggestionMethod  character [optional]
#' @field notifications  \link{NotificationSettingsResponse} [optional]
#' @field publicShowFriendInfo  character [optional]
#' @field publicShowGameInfo  character [optional]
#' @field publicShowProfileInfo  character [optional]
#' @field favoriteVisibility  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserSettingsResponse <- R6::R6Class(
  "UserSettingsResponse",
  public = list(
    `showAsZipcode` = NULL,
    `showExactLocation` = NULL,
    `showOthersExactLocation` = NULL,
    `suggestionCount` = NULL,
    `suggestionTimeFrame` = NULL,
    `suggestionMethod` = NULL,
    `notifications` = NULL,
    `publicShowFriendInfo` = NULL,
    `publicShowGameInfo` = NULL,
    `publicShowProfileInfo` = NULL,
    `favoriteVisibility` = NULL,

    #' @description
    #' Initialize a new UserSettingsResponse class.
    #'
    #' @param showAsZipcode showAsZipcode
    #' @param showExactLocation showExactLocation
    #' @param showOthersExactLocation showOthersExactLocation
    #' @param suggestionCount suggestionCount
    #' @param suggestionTimeFrame suggestionTimeFrame
    #' @param suggestionMethod suggestionMethod
    #' @param notifications notifications
    #' @param publicShowFriendInfo publicShowFriendInfo
    #' @param publicShowGameInfo publicShowGameInfo
    #' @param publicShowProfileInfo publicShowProfileInfo
    #' @param favoriteVisibility favoriteVisibility
    #' @param ... Other optional arguments.
    initialize = function(`showAsZipcode` = NULL, `showExactLocation` = NULL, `showOthersExactLocation` = NULL, `suggestionCount` = NULL, `suggestionTimeFrame` = NULL, `suggestionMethod` = NULL, `notifications` = NULL, `publicShowFriendInfo` = NULL, `publicShowGameInfo` = NULL, `publicShowProfileInfo` = NULL, `favoriteVisibility` = NULL, ...) {
      if (!is.null(`showAsZipcode`)) {
        if (!(is.logical(`showAsZipcode`) && length(`showAsZipcode`) == 1)) {
          stop(paste("Error! Invalid data for `showAsZipcode`. Must be a boolean:", `showAsZipcode`))
        }
        self$`showAsZipcode` <- `showAsZipcode`
      }
      if (!is.null(`showExactLocation`)) {
        if (!(is.logical(`showExactLocation`) && length(`showExactLocation`) == 1)) {
          stop(paste("Error! Invalid data for `showExactLocation`. Must be a boolean:", `showExactLocation`))
        }
        self$`showExactLocation` <- `showExactLocation`
      }
      if (!is.null(`showOthersExactLocation`)) {
        if (!(is.logical(`showOthersExactLocation`) && length(`showOthersExactLocation`) == 1)) {
          stop(paste("Error! Invalid data for `showOthersExactLocation`. Must be a boolean:", `showOthersExactLocation`))
        }
        self$`showOthersExactLocation` <- `showOthersExactLocation`
      }
      if (!is.null(`suggestionCount`)) {
        if (!(is.numeric(`suggestionCount`) && length(`suggestionCount`) == 1)) {
          stop(paste("Error! Invalid data for `suggestionCount`. Must be an integer:", `suggestionCount`))
        }
        self$`suggestionCount` <- `suggestionCount`
      }
      if (!is.null(`suggestionTimeFrame`)) {
        if (!(is.numeric(`suggestionTimeFrame`) && length(`suggestionTimeFrame`) == 1)) {
          stop(paste("Error! Invalid data for `suggestionTimeFrame`. Must be an integer:", `suggestionTimeFrame`))
        }
        self$`suggestionTimeFrame` <- `suggestionTimeFrame`
      }
      if (!is.null(`suggestionMethod`)) {
        if (!(is.character(`suggestionMethod`) && length(`suggestionMethod`) == 1)) {
          stop(paste("Error! Invalid data for `suggestionMethod`. Must be a string:", `suggestionMethod`))
        }
        self$`suggestionMethod` <- `suggestionMethod`
      }
      if (!is.null(`notifications`)) {
        stopifnot(R6::is.R6(`notifications`))
        self$`notifications` <- `notifications`
      }
      if (!is.null(`publicShowFriendInfo`)) {
        if (!(is.logical(`publicShowFriendInfo`) && length(`publicShowFriendInfo`) == 1)) {
          stop(paste("Error! Invalid data for `publicShowFriendInfo`. Must be a boolean:", `publicShowFriendInfo`))
        }
        self$`publicShowFriendInfo` <- `publicShowFriendInfo`
      }
      if (!is.null(`publicShowGameInfo`)) {
        if (!(is.logical(`publicShowGameInfo`) && length(`publicShowGameInfo`) == 1)) {
          stop(paste("Error! Invalid data for `publicShowGameInfo`. Must be a boolean:", `publicShowGameInfo`))
        }
        self$`publicShowGameInfo` <- `publicShowGameInfo`
      }
      if (!is.null(`publicShowProfileInfo`)) {
        if (!(is.logical(`publicShowProfileInfo`) && length(`publicShowProfileInfo`) == 1)) {
          stop(paste("Error! Invalid data for `publicShowProfileInfo`. Must be a boolean:", `publicShowProfileInfo`))
        }
        self$`publicShowProfileInfo` <- `publicShowProfileInfo`
      }
      if (!is.null(`favoriteVisibility`)) {
        if (!(`favoriteVisibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", `favoriteVisibility`, "\" cannot be assigned to `favoriteVisibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        if (!(is.character(`favoriteVisibility`) && length(`favoriteVisibility`) == 1)) {
          stop(paste("Error! Invalid data for `favoriteVisibility`. Must be a string:", `favoriteVisibility`))
        }
        self$`favoriteVisibility` <- `favoriteVisibility`
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
    #' @return UserSettingsResponse as a base R list.
    #' @examples
    #' # convert array of UserSettingsResponse (x) to a data frame
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
    #' Convert UserSettingsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserSettingsResponseObject <- list()
      if (!is.null(self$`showAsZipcode`)) {
        UserSettingsResponseObject[["showAsZipcode"]] <-
          self$`showAsZipcode`
      }
      if (!is.null(self$`showExactLocation`)) {
        UserSettingsResponseObject[["showExactLocation"]] <-
          self$`showExactLocation`
      }
      if (!is.null(self$`showOthersExactLocation`)) {
        UserSettingsResponseObject[["showOthersExactLocation"]] <-
          self$`showOthersExactLocation`
      }
      if (!is.null(self$`suggestionCount`)) {
        UserSettingsResponseObject[["suggestionCount"]] <-
          self$`suggestionCount`
      }
      if (!is.null(self$`suggestionTimeFrame`)) {
        UserSettingsResponseObject[["suggestionTimeFrame"]] <-
          self$`suggestionTimeFrame`
      }
      if (!is.null(self$`suggestionMethod`)) {
        UserSettingsResponseObject[["suggestionMethod"]] <-
          self$`suggestionMethod`
      }
      if (!is.null(self$`notifications`)) {
        UserSettingsResponseObject[["notifications"]] <-
          self$extractSimpleType(self$`notifications`)
      }
      if (!is.null(self$`publicShowFriendInfo`)) {
        UserSettingsResponseObject[["publicShowFriendInfo"]] <-
          self$`publicShowFriendInfo`
      }
      if (!is.null(self$`publicShowGameInfo`)) {
        UserSettingsResponseObject[["publicShowGameInfo"]] <-
          self$`publicShowGameInfo`
      }
      if (!is.null(self$`publicShowProfileInfo`)) {
        UserSettingsResponseObject[["publicShowProfileInfo"]] <-
          self$`publicShowProfileInfo`
      }
      if (!is.null(self$`favoriteVisibility`)) {
        UserSettingsResponseObject[["favoriteVisibility"]] <-
          self$`favoriteVisibility`
      }
      return(UserSettingsResponseObject)
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
    #' Deserialize JSON string into an instance of UserSettingsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserSettingsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`showAsZipcode`)) {
        self$`showAsZipcode` <- this_object$`showAsZipcode`
      }
      if (!is.null(this_object$`showExactLocation`)) {
        self$`showExactLocation` <- this_object$`showExactLocation`
      }
      if (!is.null(this_object$`showOthersExactLocation`)) {
        self$`showOthersExactLocation` <- this_object$`showOthersExactLocation`
      }
      if (!is.null(this_object$`suggestionCount`)) {
        self$`suggestionCount` <- this_object$`suggestionCount`
      }
      if (!is.null(this_object$`suggestionTimeFrame`)) {
        self$`suggestionTimeFrame` <- this_object$`suggestionTimeFrame`
      }
      if (!is.null(this_object$`suggestionMethod`)) {
        self$`suggestionMethod` <- this_object$`suggestionMethod`
      }
      if (!is.null(this_object$`notifications`)) {
        `notifications_object` <- NotificationSettingsResponse$new()
        `notifications_object`$fromJSON(jsonlite::toJSON(this_object$`notifications`, auto_unbox = TRUE, digits = NA))
        self$`notifications` <- `notifications_object`
      }
      if (!is.null(this_object$`publicShowFriendInfo`)) {
        self$`publicShowFriendInfo` <- this_object$`publicShowFriendInfo`
      }
      if (!is.null(this_object$`publicShowGameInfo`)) {
        self$`publicShowGameInfo` <- this_object$`publicShowGameInfo`
      }
      if (!is.null(this_object$`publicShowProfileInfo`)) {
        self$`publicShowProfileInfo` <- this_object$`publicShowProfileInfo`
      }
      if (!is.null(this_object$`favoriteVisibility`)) {
        if (!is.null(this_object$`favoriteVisibility`) && !(this_object$`favoriteVisibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
          stop(paste("Error! \"", this_object$`favoriteVisibility`, "\" cannot be assigned to `favoriteVisibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
        }
        self$`favoriteVisibility` <- this_object$`favoriteVisibility`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UserSettingsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserSettingsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserSettingsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`showAsZipcode` <- this_object$`showAsZipcode`
      self$`showExactLocation` <- this_object$`showExactLocation`
      self$`showOthersExactLocation` <- this_object$`showOthersExactLocation`
      self$`suggestionCount` <- this_object$`suggestionCount`
      self$`suggestionTimeFrame` <- this_object$`suggestionTimeFrame`
      self$`suggestionMethod` <- this_object$`suggestionMethod`
      self$`notifications` <- NotificationSettingsResponse$new()$fromJSON(jsonlite::toJSON(this_object$`notifications`, auto_unbox = TRUE, digits = NA))
      self$`publicShowFriendInfo` <- this_object$`publicShowFriendInfo`
      self$`publicShowGameInfo` <- this_object$`publicShowGameInfo`
      self$`publicShowProfileInfo` <- this_object$`publicShowProfileInfo`
      if (!is.null(this_object$`favoriteVisibility`) && !(this_object$`favoriteVisibility` %in% c("PUBLIC", "PRIVATE", "FRIENDS"))) {
        stop(paste("Error! \"", this_object$`favoriteVisibility`, "\" cannot be assigned to `favoriteVisibility`. Must be \"PUBLIC\", \"PRIVATE\", \"FRIENDS\".", sep = ""))
      }
      self$`favoriteVisibility` <- this_object$`favoriteVisibility`
      self
    },

    #' @description
    #' Validate JSON input with respect to UserSettingsResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserSettingsResponse
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
# UserSettingsResponse$unlock()
#
## Below is an example to define the print function
# UserSettingsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserSettingsResponse$lock()

