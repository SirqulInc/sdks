#' Create a new PreviewPersonaResponse
#'
#' @description
#' PreviewPersonaResponse Class
#'
#' @docType class
#' @title PreviewPersonaResponse
#' @description PreviewPersonaResponse Class
#' @format An \code{R6Class} generator object
#' @field personaId  integer [optional]
#' @field title  character [optional]
#' @field previewAccounts  list(\link{AccountMiniResponse}) [optional]
#' @field active  character [optional]
#' @field date  integer [optional]
#' @field age  integer [optional]
#' @field gender  character [optional]
#' @field gameExperienceLevel  character [optional]
#' @field latitude  numeric [optional]
#' @field longitude  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PreviewPersonaResponse <- R6::R6Class(
  "PreviewPersonaResponse",
  public = list(
    `personaId` = NULL,
    `title` = NULL,
    `previewAccounts` = NULL,
    `active` = NULL,
    `date` = NULL,
    `age` = NULL,
    `gender` = NULL,
    `gameExperienceLevel` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,

    #' @description
    #' Initialize a new PreviewPersonaResponse class.
    #'
    #' @param personaId personaId
    #' @param title title
    #' @param previewAccounts previewAccounts
    #' @param active active
    #' @param date date
    #' @param age age
    #' @param gender gender
    #' @param gameExperienceLevel gameExperienceLevel
    #' @param latitude latitude
    #' @param longitude longitude
    #' @param ... Other optional arguments.
    initialize = function(`personaId` = NULL, `title` = NULL, `previewAccounts` = NULL, `active` = NULL, `date` = NULL, `age` = NULL, `gender` = NULL, `gameExperienceLevel` = NULL, `latitude` = NULL, `longitude` = NULL, ...) {
      if (!is.null(`personaId`)) {
        if (!(is.numeric(`personaId`) && length(`personaId`) == 1)) {
          stop(paste("Error! Invalid data for `personaId`. Must be an integer:", `personaId`))
        }
        self$`personaId` <- `personaId`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`previewAccounts`)) {
        stopifnot(is.vector(`previewAccounts`), length(`previewAccounts`) != 0)
        sapply(`previewAccounts`, function(x) stopifnot(R6::is.R6(x)))
        self$`previewAccounts` <- `previewAccounts`
      }
      if (!is.null(`active`)) {
        if (!(is.logical(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be a boolean:", `active`))
        }
        self$`active` <- `active`
      }
      if (!is.null(`date`)) {
        if (!(is.numeric(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be an integer:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`age`)) {
        if (!(is.numeric(`age`) && length(`age`) == 1)) {
          stop(paste("Error! Invalid data for `age`. Must be an integer:", `age`))
        }
        self$`age` <- `age`
      }
      if (!is.null(`gender`)) {
        if (!(is.character(`gender`) && length(`gender`) == 1)) {
          stop(paste("Error! Invalid data for `gender`. Must be a string:", `gender`))
        }
        self$`gender` <- `gender`
      }
      if (!is.null(`gameExperienceLevel`)) {
        if (!(is.character(`gameExperienceLevel`) && length(`gameExperienceLevel`) == 1)) {
          stop(paste("Error! Invalid data for `gameExperienceLevel`. Must be a string:", `gameExperienceLevel`))
        }
        self$`gameExperienceLevel` <- `gameExperienceLevel`
      }
      if (!is.null(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!is.null(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
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
    #' @return PreviewPersonaResponse as a base R list.
    #' @examples
    #' # convert array of PreviewPersonaResponse (x) to a data frame
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
    #' Convert PreviewPersonaResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PreviewPersonaResponseObject <- list()
      if (!is.null(self$`personaId`)) {
        PreviewPersonaResponseObject[["personaId"]] <-
          self$`personaId`
      }
      if (!is.null(self$`title`)) {
        PreviewPersonaResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`previewAccounts`)) {
        PreviewPersonaResponseObject[["previewAccounts"]] <-
          self$extractSimpleType(self$`previewAccounts`)
      }
      if (!is.null(self$`active`)) {
        PreviewPersonaResponseObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`date`)) {
        PreviewPersonaResponseObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`age`)) {
        PreviewPersonaResponseObject[["age"]] <-
          self$`age`
      }
      if (!is.null(self$`gender`)) {
        PreviewPersonaResponseObject[["gender"]] <-
          self$`gender`
      }
      if (!is.null(self$`gameExperienceLevel`)) {
        PreviewPersonaResponseObject[["gameExperienceLevel"]] <-
          self$`gameExperienceLevel`
      }
      if (!is.null(self$`latitude`)) {
        PreviewPersonaResponseObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        PreviewPersonaResponseObject[["longitude"]] <-
          self$`longitude`
      }
      return(PreviewPersonaResponseObject)
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
    #' Deserialize JSON string into an instance of PreviewPersonaResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PreviewPersonaResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`personaId`)) {
        self$`personaId` <- this_object$`personaId`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`previewAccounts`)) {
        self$`previewAccounts` <- ApiClient$new()$deserializeObj(this_object$`previewAccounts`, "array[AccountMiniResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`age`)) {
        self$`age` <- this_object$`age`
      }
      if (!is.null(this_object$`gender`)) {
        self$`gender` <- this_object$`gender`
      }
      if (!is.null(this_object$`gameExperienceLevel`)) {
        self$`gameExperienceLevel` <- this_object$`gameExperienceLevel`
      }
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PreviewPersonaResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PreviewPersonaResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PreviewPersonaResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`personaId` <- this_object$`personaId`
      self$`title` <- this_object$`title`
      self$`previewAccounts` <- ApiClient$new()$deserializeObj(this_object$`previewAccounts`, "array[AccountMiniResponse]", loadNamespace("openapi"))
      self$`active` <- this_object$`active`
      self$`date` <- this_object$`date`
      self$`age` <- this_object$`age`
      self$`gender` <- this_object$`gender`
      self$`gameExperienceLevel` <- this_object$`gameExperienceLevel`
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self
    },

    #' @description
    #' Validate JSON input with respect to PreviewPersonaResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PreviewPersonaResponse
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
# PreviewPersonaResponse$unlock()
#
## Below is an example to define the print function
# PreviewPersonaResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PreviewPersonaResponse$lock()

