#' Create a new YayOrNay
#'
#' @description
#' YayOrNay Class
#'
#' @docType class
#' @title YayOrNay
#' @description YayOrNay Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field owner  \link{Account} [optional]
#' @field yayOrNay  character [optional]
#' @field likableObjectType  character [optional]
#' @field likableObjectId  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
YayOrNay <- R6::R6Class(
  "YayOrNay",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `owner` = NULL,
    `yayOrNay` = NULL,
    `likableObjectType` = NULL,
    `likableObjectId` = NULL,

    #' @description
    #' Initialize a new YayOrNay class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param owner owner
    #' @param yayOrNay yayOrNay
    #' @param likableObjectType likableObjectType
    #' @param likableObjectId likableObjectId
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `owner` = NULL, `yayOrNay` = NULL, `likableObjectType` = NULL, `likableObjectId` = NULL, ...) {
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
      if (!is.null(`yayOrNay`)) {
        if (!(is.logical(`yayOrNay`) && length(`yayOrNay`) == 1)) {
          stop(paste("Error! Invalid data for `yayOrNay`. Must be a boolean:", `yayOrNay`))
        }
        self$`yayOrNay` <- `yayOrNay`
      }
      if (!is.null(`likableObjectType`)) {
        if (!(is.character(`likableObjectType`) && length(`likableObjectType`) == 1)) {
          stop(paste("Error! Invalid data for `likableObjectType`. Must be a string:", `likableObjectType`))
        }
        self$`likableObjectType` <- `likableObjectType`
      }
      if (!is.null(`likableObjectId`)) {
        if (!(is.numeric(`likableObjectId`) && length(`likableObjectId`) == 1)) {
          stop(paste("Error! Invalid data for `likableObjectId`. Must be an integer:", `likableObjectId`))
        }
        self$`likableObjectId` <- `likableObjectId`
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
    #' @return YayOrNay as a base R list.
    #' @examples
    #' # convert array of YayOrNay (x) to a data frame
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
    #' Convert YayOrNay to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      YayOrNayObject <- list()
      if (!is.null(self$`id`)) {
        YayOrNayObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        YayOrNayObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        YayOrNayObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`owner`)) {
        YayOrNayObject[["owner"]] <-
          self$extractSimpleType(self$`owner`)
      }
      if (!is.null(self$`yayOrNay`)) {
        YayOrNayObject[["yayOrNay"]] <-
          self$`yayOrNay`
      }
      if (!is.null(self$`likableObjectType`)) {
        YayOrNayObject[["likableObjectType"]] <-
          self$`likableObjectType`
      }
      if (!is.null(self$`likableObjectId`)) {
        YayOrNayObject[["likableObjectId"]] <-
          self$`likableObjectId`
      }
      return(YayOrNayObject)
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
    #' Deserialize JSON string into an instance of YayOrNay
    #'
    #' @param input_json the JSON input
    #' @return the instance of YayOrNay
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
      if (!is.null(this_object$`yayOrNay`)) {
        self$`yayOrNay` <- this_object$`yayOrNay`
      }
      if (!is.null(this_object$`likableObjectType`)) {
        self$`likableObjectType` <- this_object$`likableObjectType`
      }
      if (!is.null(this_object$`likableObjectId`)) {
        self$`likableObjectId` <- this_object$`likableObjectId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return YayOrNay in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of YayOrNay
    #'
    #' @param input_json the JSON input
    #' @return the instance of YayOrNay
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`owner` <- Account$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`yayOrNay` <- this_object$`yayOrNay`
      self$`likableObjectType` <- this_object$`likableObjectType`
      self$`likableObjectId` <- this_object$`likableObjectId`
      self
    },

    #' @description
    #' Validate JSON input with respect to YayOrNay and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of YayOrNay
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
# YayOrNay$unlock()
#
## Below is an example to define the print function
# YayOrNay$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# YayOrNay$lock()

