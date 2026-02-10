#' Create a new AchievementProgressResponse
#'
#' @description
#' AchievementProgressResponse Class
#'
#' @docType class
#' @title AchievementProgressResponse
#' @description AchievementProgressResponse Class
#' @format An \code{R6Class} generator object
#' @field achievementId  integer [optional]
#' @field achievementTierId  integer [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field icon  \link{AssetShortResponse} [optional]
#' @field completed  character [optional]
#' @field progressCount  integer [optional]
#' @field goalCount  integer [optional]
#' @field dateUpdated  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AchievementProgressResponse <- R6::R6Class(
  "AchievementProgressResponse",
  public = list(
    `achievementId` = NULL,
    `achievementTierId` = NULL,
    `title` = NULL,
    `description` = NULL,
    `icon` = NULL,
    `completed` = NULL,
    `progressCount` = NULL,
    `goalCount` = NULL,
    `dateUpdated` = NULL,

    #' @description
    #' Initialize a new AchievementProgressResponse class.
    #'
    #' @param achievementId achievementId
    #' @param achievementTierId achievementTierId
    #' @param title title
    #' @param description description
    #' @param icon icon
    #' @param completed completed
    #' @param progressCount progressCount
    #' @param goalCount goalCount
    #' @param dateUpdated dateUpdated
    #' @param ... Other optional arguments.
    initialize = function(`achievementId` = NULL, `achievementTierId` = NULL, `title` = NULL, `description` = NULL, `icon` = NULL, `completed` = NULL, `progressCount` = NULL, `goalCount` = NULL, `dateUpdated` = NULL, ...) {
      if (!is.null(`achievementId`)) {
        if (!(is.numeric(`achievementId`) && length(`achievementId`) == 1)) {
          stop(paste("Error! Invalid data for `achievementId`. Must be an integer:", `achievementId`))
        }
        self$`achievementId` <- `achievementId`
      }
      if (!is.null(`achievementTierId`)) {
        if (!(is.numeric(`achievementTierId`) && length(`achievementTierId`) == 1)) {
          stop(paste("Error! Invalid data for `achievementTierId`. Must be an integer:", `achievementTierId`))
        }
        self$`achievementTierId` <- `achievementTierId`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`icon`)) {
        stopifnot(R6::is.R6(`icon`))
        self$`icon` <- `icon`
      }
      if (!is.null(`completed`)) {
        if (!(is.logical(`completed`) && length(`completed`) == 1)) {
          stop(paste("Error! Invalid data for `completed`. Must be a boolean:", `completed`))
        }
        self$`completed` <- `completed`
      }
      if (!is.null(`progressCount`)) {
        if (!(is.numeric(`progressCount`) && length(`progressCount`) == 1)) {
          stop(paste("Error! Invalid data for `progressCount`. Must be an integer:", `progressCount`))
        }
        self$`progressCount` <- `progressCount`
      }
      if (!is.null(`goalCount`)) {
        if (!(is.numeric(`goalCount`) && length(`goalCount`) == 1)) {
          stop(paste("Error! Invalid data for `goalCount`. Must be an integer:", `goalCount`))
        }
        self$`goalCount` <- `goalCount`
      }
      if (!is.null(`dateUpdated`)) {
        if (!(is.numeric(`dateUpdated`) && length(`dateUpdated`) == 1)) {
          stop(paste("Error! Invalid data for `dateUpdated`. Must be an integer:", `dateUpdated`))
        }
        self$`dateUpdated` <- `dateUpdated`
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
    #' @return AchievementProgressResponse as a base R list.
    #' @examples
    #' # convert array of AchievementProgressResponse (x) to a data frame
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
    #' Convert AchievementProgressResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AchievementProgressResponseObject <- list()
      if (!is.null(self$`achievementId`)) {
        AchievementProgressResponseObject[["achievementId"]] <-
          self$`achievementId`
      }
      if (!is.null(self$`achievementTierId`)) {
        AchievementProgressResponseObject[["achievementTierId"]] <-
          self$`achievementTierId`
      }
      if (!is.null(self$`title`)) {
        AchievementProgressResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        AchievementProgressResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`icon`)) {
        AchievementProgressResponseObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`completed`)) {
        AchievementProgressResponseObject[["completed"]] <-
          self$`completed`
      }
      if (!is.null(self$`progressCount`)) {
        AchievementProgressResponseObject[["progressCount"]] <-
          self$`progressCount`
      }
      if (!is.null(self$`goalCount`)) {
        AchievementProgressResponseObject[["goalCount"]] <-
          self$`goalCount`
      }
      if (!is.null(self$`dateUpdated`)) {
        AchievementProgressResponseObject[["dateUpdated"]] <-
          self$`dateUpdated`
      }
      return(AchievementProgressResponseObject)
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
    #' Deserialize JSON string into an instance of AchievementProgressResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AchievementProgressResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`achievementId`)) {
        self$`achievementId` <- this_object$`achievementId`
      }
      if (!is.null(this_object$`achievementTierId`)) {
        self$`achievementTierId` <- this_object$`achievementTierId`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- AssetShortResponse$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
      }
      if (!is.null(this_object$`completed`)) {
        self$`completed` <- this_object$`completed`
      }
      if (!is.null(this_object$`progressCount`)) {
        self$`progressCount` <- this_object$`progressCount`
      }
      if (!is.null(this_object$`goalCount`)) {
        self$`goalCount` <- this_object$`goalCount`
      }
      if (!is.null(this_object$`dateUpdated`)) {
        self$`dateUpdated` <- this_object$`dateUpdated`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AchievementProgressResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AchievementProgressResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AchievementProgressResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`achievementId` <- this_object$`achievementId`
      self$`achievementTierId` <- this_object$`achievementTierId`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`icon` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`completed` <- this_object$`completed`
      self$`progressCount` <- this_object$`progressCount`
      self$`goalCount` <- this_object$`goalCount`
      self$`dateUpdated` <- this_object$`dateUpdated`
      self
    },

    #' @description
    #' Validate JSON input with respect to AchievementProgressResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AchievementProgressResponse
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
# AchievementProgressResponse$unlock()
#
## Below is an example to define the print function
# AchievementProgressResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AchievementProgressResponse$lock()

