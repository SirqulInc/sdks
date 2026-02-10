#' Create a new Leaderboard
#'
#' @description
#' Leaderboard Class
#'
#' @docType class
#' @title Leaderboard
#' @description Leaderboard Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field rankType  character [optional]
#' @field rankMode One of GLOBAL, FRIENDS, LOCAL, SEARCH, CUSTOM character [optional]
#' @field sortType  character [optional]
#' @field limitation  integer [optional]
#' @field title  character [optional]
#' @field description  character [optional]
#' @field iconAsset  \link{AssetResponse} [optional]
#' @field bannerAsset  \link{AssetResponse} [optional]
#' @field application  \link{ApplicationMiniResponse} [optional]
#' @field metaData  character [optional]
#' @field active  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Leaderboard <- R6::R6Class(
  "Leaderboard",
  public = list(
    `id` = NULL,
    `rankType` = NULL,
    `rankMode` = NULL,
    `sortType` = NULL,
    `limitation` = NULL,
    `title` = NULL,
    `description` = NULL,
    `iconAsset` = NULL,
    `bannerAsset` = NULL,
    `application` = NULL,
    `metaData` = NULL,
    `active` = NULL,

    #' @description
    #' Initialize a new Leaderboard class.
    #'
    #' @param id id
    #' @param rankType rankType
    #' @param rankMode One of GLOBAL, FRIENDS, LOCAL, SEARCH, CUSTOM
    #' @param sortType sortType
    #' @param limitation limitation
    #' @param title title
    #' @param description description
    #' @param iconAsset iconAsset
    #' @param bannerAsset bannerAsset
    #' @param application application
    #' @param metaData metaData
    #' @param active active
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `rankType` = NULL, `rankMode` = NULL, `sortType` = NULL, `limitation` = NULL, `title` = NULL, `description` = NULL, `iconAsset` = NULL, `bannerAsset` = NULL, `application` = NULL, `metaData` = NULL, `active` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`rankType`)) {
        if (!(is.character(`rankType`) && length(`rankType`) == 1)) {
          stop(paste("Error! Invalid data for `rankType`. Must be a string:", `rankType`))
        }
        self$`rankType` <- `rankType`
      }
      if (!is.null(`rankMode`)) {
        if (!(is.character(`rankMode`) && length(`rankMode`) == 1)) {
          stop(paste("Error! Invalid data for `rankMode`. Must be a string:", `rankMode`))
        }
        self$`rankMode` <- `rankMode`
      }
      if (!is.null(`sortType`)) {
        if (!(is.character(`sortType`) && length(`sortType`) == 1)) {
          stop(paste("Error! Invalid data for `sortType`. Must be a string:", `sortType`))
        }
        self$`sortType` <- `sortType`
      }
      if (!is.null(`limitation`)) {
        if (!(is.numeric(`limitation`) && length(`limitation`) == 1)) {
          stop(paste("Error! Invalid data for `limitation`. Must be an integer:", `limitation`))
        }
        self$`limitation` <- `limitation`
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
      if (!is.null(`iconAsset`)) {
        stopifnot(R6::is.R6(`iconAsset`))
        self$`iconAsset` <- `iconAsset`
      }
      if (!is.null(`bannerAsset`)) {
        stopifnot(R6::is.R6(`bannerAsset`))
        self$`bannerAsset` <- `bannerAsset`
      }
      if (!is.null(`application`)) {
        stopifnot(R6::is.R6(`application`))
        self$`application` <- `application`
      }
      if (!is.null(`metaData`)) {
        if (!(is.character(`metaData`) && length(`metaData`) == 1)) {
          stop(paste("Error! Invalid data for `metaData`. Must be a string:", `metaData`))
        }
        self$`metaData` <- `metaData`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
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
    #' @return Leaderboard as a base R list.
    #' @examples
    #' # convert array of Leaderboard (x) to a data frame
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
    #' Convert Leaderboard to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LeaderboardObject <- list()
      if (!is.null(self$`id`)) {
        LeaderboardObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`rankType`)) {
        LeaderboardObject[["rankType"]] <-
          self$`rankType`
      }
      if (!is.null(self$`rankMode`)) {
        LeaderboardObject[["rankMode"]] <-
          self$`rankMode`
      }
      if (!is.null(self$`sortType`)) {
        LeaderboardObject[["sortType"]] <-
          self$`sortType`
      }
      if (!is.null(self$`limitation`)) {
        LeaderboardObject[["limitation"]] <-
          self$`limitation`
      }
      if (!is.null(self$`title`)) {
        LeaderboardObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        LeaderboardObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`iconAsset`)) {
        LeaderboardObject[["iconAsset"]] <-
          self$extractSimpleType(self$`iconAsset`)
      }
      if (!is.null(self$`bannerAsset`)) {
        LeaderboardObject[["bannerAsset"]] <-
          self$extractSimpleType(self$`bannerAsset`)
      }
      if (!is.null(self$`application`)) {
        LeaderboardObject[["application"]] <-
          self$extractSimpleType(self$`application`)
      }
      if (!is.null(self$`metaData`)) {
        LeaderboardObject[["metaData"]] <-
          self$`metaData`
      }
      if (!is.null(self$`active`)) {
        LeaderboardObject[["active"]] <-
          self$`active`
      }
      return(LeaderboardObject)
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
    #' Deserialize JSON string into an instance of Leaderboard
    #'
    #' @param input_json the JSON input
    #' @return the instance of Leaderboard
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`rankType`)) {
        self$`rankType` <- this_object$`rankType`
      }
      if (!is.null(this_object$`rankMode`)) {
        self$`rankMode` <- this_object$`rankMode`
      }
      if (!is.null(this_object$`sortType`)) {
        self$`sortType` <- this_object$`sortType`
      }
      if (!is.null(this_object$`limitation`)) {
        self$`limitation` <- this_object$`limitation`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`iconAsset`)) {
        `iconasset_object` <- AssetResponse$new()
        `iconasset_object`$fromJSON(jsonlite::toJSON(this_object$`iconAsset`, auto_unbox = TRUE, digits = NA))
        self$`iconAsset` <- `iconasset_object`
      }
      if (!is.null(this_object$`bannerAsset`)) {
        `bannerasset_object` <- AssetResponse$new()
        `bannerasset_object`$fromJSON(jsonlite::toJSON(this_object$`bannerAsset`, auto_unbox = TRUE, digits = NA))
        self$`bannerAsset` <- `bannerasset_object`
      }
      if (!is.null(this_object$`application`)) {
        `application_object` <- ApplicationMiniResponse$new()
        `application_object`$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
        self$`application` <- `application_object`
      }
      if (!is.null(this_object$`metaData`)) {
        self$`metaData` <- this_object$`metaData`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Leaderboard in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Leaderboard
    #'
    #' @param input_json the JSON input
    #' @return the instance of Leaderboard
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`rankType` <- this_object$`rankType`
      self$`rankMode` <- this_object$`rankMode`
      self$`sortType` <- this_object$`sortType`
      self$`limitation` <- this_object$`limitation`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`iconAsset` <- AssetResponse$new()$fromJSON(jsonlite::toJSON(this_object$`iconAsset`, auto_unbox = TRUE, digits = NA))
      self$`bannerAsset` <- AssetResponse$new()$fromJSON(jsonlite::toJSON(this_object$`bannerAsset`, auto_unbox = TRUE, digits = NA))
      self$`application` <- ApplicationMiniResponse$new()$fromJSON(jsonlite::toJSON(this_object$`application`, auto_unbox = TRUE, digits = NA))
      self$`metaData` <- this_object$`metaData`
      self$`active` <- this_object$`active`
      self
    },

    #' @description
    #' Validate JSON input with respect to Leaderboard and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Leaderboard
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
# Leaderboard$unlock()
#
## Below is an example to define the print function
# Leaderboard$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Leaderboard$lock()

