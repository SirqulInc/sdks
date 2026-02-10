#' Create a new GameResponse
#'
#' @description
#' GameResponse Class
#'
#' @docType class
#' @title GameResponse
#' @description GameResponse Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field highestAppVersion  character [optional]
#' @field gameId  integer [optional]
#' @field gameType  character [optional]
#' @field packs  \link{PackListResponse} [optional]
#' @field scores  \link{ScoreListResponse} [optional]
#' @field owner  \link{AccountShortResponse} [optional]
#' @field userPermissionsList  \link{UserPermissionsListResponse} [optional]
#' @field rules  \link{RuleListResponse} [optional]
#' @field results  list(\link{NameStringValueResponse}) [optional]
#' @field ticketsEarned  integer [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field authorOverride  character [optional]
#' @field icon  \link{AssetShortResponse} [optional]
#' @field image  \link{AssetShortResponse} [optional]
#' @field sequenceType  character [optional]
#' @field updatedDate  integer [optional]
#' @field startDate  integer [optional]
#' @field endDate  integer [optional]
#' @field appKey  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GameResponse <- R6::R6Class(
  "GameResponse",
  public = list(
    `action` = NULL,
    `highestAppVersion` = NULL,
    `gameId` = NULL,
    `gameType` = NULL,
    `packs` = NULL,
    `scores` = NULL,
    `owner` = NULL,
    `userPermissionsList` = NULL,
    `rules` = NULL,
    `results` = NULL,
    `ticketsEarned` = NULL,
    `title` = NULL,
    `description` = NULL,
    `authorOverride` = NULL,
    `icon` = NULL,
    `image` = NULL,
    `sequenceType` = NULL,
    `updatedDate` = NULL,
    `startDate` = NULL,
    `endDate` = NULL,
    `appKey` = NULL,

    #' @description
    #' Initialize a new GameResponse class.
    #'
    #' @param action action
    #' @param highestAppVersion highestAppVersion
    #' @param gameId gameId
    #' @param gameType gameType
    #' @param packs packs
    #' @param scores scores
    #' @param owner owner
    #' @param userPermissionsList userPermissionsList
    #' @param rules rules
    #' @param results results
    #' @param ticketsEarned ticketsEarned
    #' @param title title
    #' @param description description
    #' @param authorOverride authorOverride
    #' @param icon icon
    #' @param image image
    #' @param sequenceType sequenceType
    #' @param updatedDate updatedDate
    #' @param startDate startDate
    #' @param endDate endDate
    #' @param appKey appKey
    #' @param ... Other optional arguments.
    initialize = function(`action` = NULL, `highestAppVersion` = NULL, `gameId` = NULL, `gameType` = NULL, `packs` = NULL, `scores` = NULL, `owner` = NULL, `userPermissionsList` = NULL, `rules` = NULL, `results` = NULL, `ticketsEarned` = NULL, `title` = NULL, `description` = NULL, `authorOverride` = NULL, `icon` = NULL, `image` = NULL, `sequenceType` = NULL, `updatedDate` = NULL, `startDate` = NULL, `endDate` = NULL, `appKey` = NULL, ...) {
      if (!is.null(`action`)) {
        if (!(`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!is.null(`highestAppVersion`)) {
        if (!(is.character(`highestAppVersion`) && length(`highestAppVersion`) == 1)) {
          stop(paste("Error! Invalid data for `highestAppVersion`. Must be a string:", `highestAppVersion`))
        }
        self$`highestAppVersion` <- `highestAppVersion`
      }
      if (!is.null(`gameId`)) {
        if (!(is.numeric(`gameId`) && length(`gameId`) == 1)) {
          stop(paste("Error! Invalid data for `gameId`. Must be an integer:", `gameId`))
        }
        self$`gameId` <- `gameId`
      }
      if (!is.null(`gameType`)) {
        if (!(is.character(`gameType`) && length(`gameType`) == 1)) {
          stop(paste("Error! Invalid data for `gameType`. Must be a string:", `gameType`))
        }
        self$`gameType` <- `gameType`
      }
      if (!is.null(`packs`)) {
        stopifnot(R6::is.R6(`packs`))
        self$`packs` <- `packs`
      }
      if (!is.null(`scores`)) {
        stopifnot(R6::is.R6(`scores`))
        self$`scores` <- `scores`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`userPermissionsList`)) {
        stopifnot(R6::is.R6(`userPermissionsList`))
        self$`userPermissionsList` <- `userPermissionsList`
      }
      if (!is.null(`rules`)) {
        stopifnot(R6::is.R6(`rules`))
        self$`rules` <- `rules`
      }
      if (!is.null(`results`)) {
        stopifnot(is.vector(`results`), length(`results`) != 0)
        sapply(`results`, function(x) stopifnot(R6::is.R6(x)))
        self$`results` <- `results`
      }
      if (!is.null(`ticketsEarned`)) {
        if (!(is.numeric(`ticketsEarned`) && length(`ticketsEarned`) == 1)) {
          stop(paste("Error! Invalid data for `ticketsEarned`. Must be an integer:", `ticketsEarned`))
        }
        self$`ticketsEarned` <- `ticketsEarned`
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
      if (!is.null(`authorOverride`)) {
        if (!(is.character(`authorOverride`) && length(`authorOverride`) == 1)) {
          stop(paste("Error! Invalid data for `authorOverride`. Must be a string:", `authorOverride`))
        }
        self$`authorOverride` <- `authorOverride`
      }
      if (!is.null(`icon`)) {
        stopifnot(R6::is.R6(`icon`))
        self$`icon` <- `icon`
      }
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`sequenceType`)) {
        if (!(is.character(`sequenceType`) && length(`sequenceType`) == 1)) {
          stop(paste("Error! Invalid data for `sequenceType`. Must be a string:", `sequenceType`))
        }
        self$`sequenceType` <- `sequenceType`
      }
      if (!is.null(`updatedDate`)) {
        if (!(is.numeric(`updatedDate`) && length(`updatedDate`) == 1)) {
          stop(paste("Error! Invalid data for `updatedDate`. Must be an integer:", `updatedDate`))
        }
        self$`updatedDate` <- `updatedDate`
      }
      if (!is.null(`startDate`)) {
        if (!(is.numeric(`startDate`) && length(`startDate`) == 1)) {
          stop(paste("Error! Invalid data for `startDate`. Must be an integer:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`endDate`)) {
        if (!(is.numeric(`endDate`) && length(`endDate`) == 1)) {
          stop(paste("Error! Invalid data for `endDate`. Must be an integer:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`appKey`)) {
        if (!(is.character(`appKey`) && length(`appKey`) == 1)) {
          stop(paste("Error! Invalid data for `appKey`. Must be a string:", `appKey`))
        }
        self$`appKey` <- `appKey`
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
    #' @return GameResponse as a base R list.
    #' @examples
    #' # convert array of GameResponse (x) to a data frame
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
    #' Convert GameResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GameResponseObject <- list()
      if (!is.null(self$`action`)) {
        GameResponseObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`highestAppVersion`)) {
        GameResponseObject[["highestAppVersion"]] <-
          self$`highestAppVersion`
      }
      if (!is.null(self$`gameId`)) {
        GameResponseObject[["gameId"]] <-
          self$`gameId`
      }
      if (!is.null(self$`gameType`)) {
        GameResponseObject[["gameType"]] <-
          self$`gameType`
      }
      if (!is.null(self$`packs`)) {
        GameResponseObject[["packs"]] <-
          self$extractSimpleType(self$`packs`)
      }
      if (!is.null(self$`scores`)) {
        GameResponseObject[["scores"]] <-
          self$extractSimpleType(self$`scores`)
      }
      if (!is.null(self$`owner`)) {
        GameResponseObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`userPermissionsList`)) {
        GameResponseObject[["userPermissionsList"]] <-
          self$extractSimpleType(self$`userPermissionsList`)
      }
      if (!is.null(self$`rules`)) {
        GameResponseObject[["rules"]] <-
          self$extractSimpleType(self$`rules`)
      }
      if (!is.null(self$`results`)) {
        GameResponseObject[["results"]] <-
          self$extractSimpleType(self$`results`)
      }
      if (!is.null(self$`ticketsEarned`)) {
        GameResponseObject[["ticketsEarned"]] <-
          self$`ticketsEarned`
      }
      if (!is.null(self$`title`)) {
        GameResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        GameResponseObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`authorOverride`)) {
        GameResponseObject[["authorOverride"]] <-
          self$`authorOverride`
      }
      if (!is.null(self$`icon`)) {
        GameResponseObject[["icon"]] <-
          self$extractSimpleType(self$`icon`)
      }
      if (!is.null(self$`image`)) {
        GameResponseObject[["image"]] <-
          self$extractSimpleType(self$`image`)
      }
      if (!is.null(self$`sequenceType`)) {
        GameResponseObject[["sequenceType"]] <-
          self$`sequenceType`
      }
      if (!is.null(self$`updatedDate`)) {
        GameResponseObject[["updatedDate"]] <-
          self$`updatedDate`
      }
      if (!is.null(self$`startDate`)) {
        GameResponseObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`endDate`)) {
        GameResponseObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`appKey`)) {
        GameResponseObject[["appKey"]] <-
          self$`appKey`
      }
      return(GameResponseObject)
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
    #' Deserialize JSON string into an instance of GameResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GameResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`highestAppVersion`)) {
        self$`highestAppVersion` <- this_object$`highestAppVersion`
      }
      if (!is.null(this_object$`gameId`)) {
        self$`gameId` <- this_object$`gameId`
      }
      if (!is.null(this_object$`gameType`)) {
        self$`gameType` <- this_object$`gameType`
      }
      if (!is.null(this_object$`packs`)) {
        `packs_object` <- PackListResponse$new()
        `packs_object`$fromJSON(jsonlite::toJSON(this_object$`packs`, auto_unbox = TRUE, digits = NA))
        self$`packs` <- `packs_object`
      }
      if (!is.null(this_object$`scores`)) {
        `scores_object` <- ScoreListResponse$new()
        `scores_object`$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
        self$`scores` <- `scores_object`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- AccountShortResponse$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`userPermissionsList`)) {
        `userpermissionslist_object` <- UserPermissionsListResponse$new()
        `userpermissionslist_object`$fromJSON(jsonlite::toJSON(this_object$`userPermissionsList`, auto_unbox = TRUE, digits = NA))
        self$`userPermissionsList` <- `userpermissionslist_object`
      }
      if (!is.null(this_object$`rules`)) {
        `rules_object` <- RuleListResponse$new()
        `rules_object`$fromJSON(jsonlite::toJSON(this_object$`rules`, auto_unbox = TRUE, digits = NA))
        self$`rules` <- `rules_object`
      }
      if (!is.null(this_object$`results`)) {
        self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`ticketsEarned`)) {
        self$`ticketsEarned` <- this_object$`ticketsEarned`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`authorOverride`)) {
        self$`authorOverride` <- this_object$`authorOverride`
      }
      if (!is.null(this_object$`icon`)) {
        `icon_object` <- AssetShortResponse$new()
        `icon_object`$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
        self$`icon` <- `icon_object`
      }
      if (!is.null(this_object$`image`)) {
        `image_object` <- AssetShortResponse$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`sequenceType`)) {
        self$`sequenceType` <- this_object$`sequenceType`
      }
      if (!is.null(this_object$`updatedDate`)) {
        self$`updatedDate` <- this_object$`updatedDate`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`appKey`)) {
        self$`appKey` <- this_object$`appKey`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GameResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GameResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GameResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("DATA", "SAVE", "DELETE", "GET"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"DATA\", \"SAVE\", \"DELETE\", \"GET\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`highestAppVersion` <- this_object$`highestAppVersion`
      self$`gameId` <- this_object$`gameId`
      self$`gameType` <- this_object$`gameType`
      self$`packs` <- PackListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`packs`, auto_unbox = TRUE, digits = NA))
      self$`scores` <- ScoreListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
      self$`owner` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`userPermissionsList` <- UserPermissionsListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`userPermissionsList`, auto_unbox = TRUE, digits = NA))
      self$`rules` <- RuleListResponse$new()$fromJSON(jsonlite::toJSON(this_object$`rules`, auto_unbox = TRUE, digits = NA))
      self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[NameStringValueResponse]", loadNamespace("openapi"))
      self$`ticketsEarned` <- this_object$`ticketsEarned`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`authorOverride` <- this_object$`authorOverride`
      self$`icon` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`icon`, auto_unbox = TRUE, digits = NA))
      self$`image` <- AssetShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`sequenceType` <- this_object$`sequenceType`
      self$`updatedDate` <- this_object$`updatedDate`
      self$`startDate` <- this_object$`startDate`
      self$`endDate` <- this_object$`endDate`
      self$`appKey` <- this_object$`appKey`
      self
    },

    #' @description
    #' Validate JSON input with respect to GameResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GameResponse
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
# GameResponse$unlock()
#
## Below is an example to define the print function
# GameResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GameResponse$lock()

