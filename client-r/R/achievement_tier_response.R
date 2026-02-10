#' Create a new AchievementTierResponse
#'
#' @description
#' AchievementTierResponse Class
#'
#' @docType class
#' @title AchievementTierResponse
#' @description AchievementTierResponse Class
#' @format An \code{R6Class} generator object
#' @field achievementTierId  integer [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field goalCount  integer [optional]
#' @field icon  \link{AssetShortResponse} [optional]
#' @field missionId  integer [optional]
#' @field gameId  integer [optional]
#' @field packId  integer [optional]
#' @field gameLevelId  integer [optional]
#' @field gameObjectId  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AchievementTierResponse <- R6::R6Class(
  "AchievementTierResponse",
  public = list(
    `achievementTierId` = NULL,
    `title` = NULL,
    `description` = NULL,
    `goalCount` = NULL,
    `icon` = NULL,
    `missionId` = NULL,
    `gameId` = NULL,
    `packId` = NULL,
    `gameLevelId` = NULL,
    `gameObjectId` = NULL,

    #' @description
    #' Initialize a new AchievementTierResponse class.
    #'
    #' @param achievementTierId achievementTierId
    #' @param title title
    #' @param description description
    #' @param goalCount goalCount
    #' @param icon icon
    #' @param missionId missionId
    #' @param gameId gameId
    #' @param packId packId
    #' @param gameLevelId gameLevelId
    #' @param gameObjectId gameObjectId
    #' @param ... Other optional arguments.
    initialize = function(`achievementTierId` = NULL, `title` = NULL, `description` = NULL, `goalCount` = NULL, `icon` = NULL, `missionId` = NULL, `gameId` = NULL, `packId` = NULL, `gameLevelId` = NULL, `gameObjectId` = NULL, ...) {
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
      if (!is.null(`goalCount`)) {
        if (!(is.numeric(`goalCount`) && length(`goalCount`) == 1)) {
          stop(paste("Error! Invalid data for `goalCount`. Must be an integer:", `goalCount`))
        }
        self$`goalCount` <- `goalCount`
      }
      if (!is.null(`icon`)) {
        stopifnot(R6::is.R6(`icon`))
        self$`icon` <- `icon`
      }
      if (!is.null(`missionId`)) {
        if (!(is.numeric(`missionId`) && length(`missionId`) == 1)) {
          stop(paste("Error! Invalid data for `missionId`. Must be an integer:", `missionId`))
        }
        self$`missionId` <- `missionId`
      }
      if (!is.null(`gameId`)) {
        if (!(is.numeric(`gameId`) && length(`gameId`) == 1)) {
          stop(paste("Error! Invalid data for `gameId`. Must be an integer:", `gameId`))
        }
        self$`gameId` <- `gameId`
      }
      if (!is.null(`packId`)) {
        if (!(is.numeric(`packId`) && length(`packId`) == 1)) {
          stop(paste("Error! Invalid data for `packId`. Must be an integer:", `packId`))
        }
        self$`packId` <- `packId`
      }
      if (!is.null(`gameLevelId`)) {
        if (!(is.numeric(`gameLevelId`) && length(`gameLevelId`) == 1)) {
          stop(paste("Error! Invalid data for `gameLevelId`. Must be an integer:", `gameLevelId`))
        }
        self$`gameLevelId` <- `gameLevelId`
      }
      if (!is.null(`gameObjectId`)) {
        if (!(is.numeric(`gameObjectId`) && length(`gameObjectId`) == 1)) {
          stop(paste("Error! Invalid data for `gameObjectId`. Must be an integer:", `gameObjectId`))
        }
        self$`gameObjectId` <- `gameObjectId`
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
    #' @return AchievementTierResponse as a base R list.
    #' @examples
    #' # convert array of AchievementTierResponse (x) to a data frame
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
    #' Convert AchievementTierResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AchievementTierResponseObject <- list()
      if (!is.null(self$`achievementTierId`)) {
        AchievementTierResponseObject[["achievementTierId"]] <-
          self$`achievementTierId`
      }
      if (!is.null(self$`title`)) {
        AchievementTierResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        AchievementTierResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`goalCount`)) {
        AchievementTierResponseObject[["goalCount"]] <-
          self$`goalCount`
      }
      if (!is.null(self$`icon`)) {
        AchievementTierResponseObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`missionId`)) {
        AchievementTierResponseObject[["missionId"]] <-
          self$`missionId`
      }
      if (!is.null(self$`gameId`)) {
        AchievementTierResponseObject[["gameId"]] <-
          self$`gameId`
      }
      if (!is.null(self$`packId`)) {
        AchievementTierResponseObject[["packId"]] <-
          self$`packId`
      }
      if (!is.null(self$`gameLevelId`)) {
        AchievementTierResponseObject[["gameLevelId"]] <-
          self$`gameLevelId`
      }
      if (!is.null(self$`gameObjectId`)) {
        AchievementTierResponseObject[["gameObjectId"]] <-
          self$`gameObjectId`
      }
      return(AchievementTierResponseObject)
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
    #' Deserialize JSON string into an instance of AchievementTierResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AchievementTierResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`achievementTierId`)) {
        self$`achievementTierId` <- this_object$`achievementTierId`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`goalCount`)) {
        self$`goalCount` <- this_object$`goalCount`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- AssetShortResponse$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
      }
      if (!is.null(this_object$`missionId`)) {
        self$`missionId` <- this_object$`missionId`
      }
      if (!is.null(this_object$`gameId`)) {
        self$`gameId` <- this_object$`gameId`
      }
      if (!is.null(this_object$`packId`)) {
        self$`packId` <- this_object$`packId`
      }
      if (!is.null(this_object$`gameLevelId`)) {
        self$`gameLevelId` <- this_object$`gameLevelId`
      }
      if (!is.null(this_object$`gameObjectId`)) {
        self$`gameObjectId` <- this_object$`gameObjectId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AchievementTierResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AchievementTierResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AchievementTierResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`achievementTierId` <- this_object$`achievementTierId`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`goalCount` <- this_object$`goalCount`
      self$`icon` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`missionId` <- this_object$`missionId`
      self$`gameId` <- this_object$`gameId`
      self$`packId` <- this_object$`packId`
      self$`gameLevelId` <- this_object$`gameLevelId`
      self$`gameObjectId` <- this_object$`gameObjectId`
      self
    },

    #' @description
    #' Validate JSON input with respect to AchievementTierResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AchievementTierResponse
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
# AchievementTierResponse$unlock()
#
## Below is an example to define the print function
# AchievementTierResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AchievementTierResponse$lock()

