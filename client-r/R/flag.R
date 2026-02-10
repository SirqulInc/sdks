#' Create a new Flag
#'
#' @description
#' Flag Class
#'
#' @docType class
#' @title Flag
#' @description Flag Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field flagableObjectType  character [optional]
#' @field flagableObjectId  integer [optional]
#' @field flagDescription  character [optional]
#' @field app  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Flag <- R6::R6Class(
  "Flag",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `flagableObjectType` = NULL,
    `flagableObjectId` = NULL,
    `flagDescription` = NULL,
    `app` = NULL,

    #' @description
    #' Initialize a new Flag class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param flagableObjectType flagableObjectType
    #' @param flagableObjectId flagableObjectId
    #' @param flagDescription flagDescription
    #' @param app app
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `flagableObjectType` = NULL, `flagableObjectId` = NULL, `flagDescription` = NULL, `app` = NULL, ...) {
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
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`flagableObjectType`)) {
        if (!(is.character(`flagableObjectType`) && length(`flagableObjectType`) == 1)) {
          stop(paste("Error! Invalid data for `flagableObjectType`. Must be a string:", `flagableObjectType`))
        }
        self$`flagableObjectType` <- `flagableObjectType`
      }
      if (!is.null(`flagableObjectId`)) {
        if (!(is.numeric(`flagableObjectId`) && length(`flagableObjectId`) == 1)) {
          stop(paste("Error! Invalid data for `flagableObjectId`. Must be an integer:", `flagableObjectId`))
        }
        self$`flagableObjectId` <- `flagableObjectId`
      }
      if (!is.null(`flagDescription`)) {
        if (!(is.character(`flagDescription`) && length(`flagDescription`) == 1)) {
          stop(paste("Error! Invalid data for `flagDescription`. Must be a string:", `flagDescription`))
        }
        self$`flagDescription` <- `flagDescription`
      }
      if (!is.null(`app`)) {
        if (!(is.character(`app`) && length(`app`) == 1)) {
          stop(paste("Error! Invalid data for `app`. Must be a string:", `app`))
        }
        self$`app` <- `app`
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
    #' @return Flag as a base R list.
    #' @examples
    #' # convert array of Flag (x) to a data frame
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
    #' Convert Flag to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FlagObject <- list()
      if (!is.null(self$`id`)) {
        FlagObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        FlagObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        FlagObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        FlagObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`flagableObjectType`)) {
        FlagObject[["flagableObjectType"]] <-
          self$`flagableObjectType`
      }
      if (!is.null(self$`flagableObjectId`)) {
        FlagObject[["flagableObjectId"]] <-
          self$`flagableObjectId`
      }
      if (!is.null(self$`flagDescription`)) {
        FlagObject[["flagDescription"]] <-
          self$`flagDescription`
      }
      if (!is.null(self$`app`)) {
        FlagObject[["app"]] <-
          self$`app`
      }
      return(FlagObject)
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
    #' Deserialize JSON string into an instance of Flag
    #'
    #' @param input_json the JSON input
    #' @return the instance of Flag
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
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- Account$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`flagableObjectType`)) {
        self$`flagableObjectType` <- this_object$`flagableObjectType`
      }
      if (!is.null(this_object$`flagableObjectId`)) {
        self$`flagableObjectId` <- this_object$`flagableObjectId`
      }
      if (!is.null(this_object$`flagDescription`)) {
        self$`flagDescription` <- this_object$`flagDescription`
      }
      if (!is.null(this_object$`app`)) {
        self$`app` <- this_object$`app`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Flag in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Flag
    #'
    #' @param input_json the JSON input
    #' @return the instance of Flag
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`flagableObjectType` <- this_object$`flagableObjectType`
      self$`flagableObjectId` <- this_object$`flagableObjectId`
      self$`flagDescription` <- this_object$`flagDescription`
      self$`app` <- this_object$`app`
      self
    },

    #' @description
    #' Validate JSON input with respect to Flag and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Flag
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
# Flag$unlock()
#
## Below is an example to define the print function
# Flag$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Flag$lock()

