#' Create a new Platform
#'
#' @description
#' Platform Class
#'
#' @docType class
#' @title Platform
#' @description Platform Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field device  \link{AudienceDevice} [optional]
#' @field minimum  integer [optional]
#' @field maximum  integer [optional]
#' @field downloadUrl  character [optional]
#' @field description  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Platform <- R6::R6Class(
  "Platform",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `device` = NULL,
    `minimum` = NULL,
    `maximum` = NULL,
    `downloadUrl` = NULL,
    `description` = NULL,

    #' @description
    #' Initialize a new Platform class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param device device
    #' @param minimum minimum
    #' @param maximum maximum
    #' @param downloadUrl downloadUrl
    #' @param description description
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `device` = NULL, `minimum` = NULL, `maximum` = NULL, `downloadUrl` = NULL, `description` = NULL, ...) {
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
      if (!is.null(`device`)) {
        stopifnot(R6::is.R6(`device`))
        self$`device` <- `device`
      }
      if (!is.null(`minimum`)) {
        if (!(is.numeric(`minimum`) && length(`minimum`) == 1)) {
          stop(paste("Error! Invalid data for `minimum`. Must be an integer:", `minimum`))
        }
        self$`minimum` <- `minimum`
      }
      if (!is.null(`maximum`)) {
        if (!(is.numeric(`maximum`) && length(`maximum`) == 1)) {
          stop(paste("Error! Invalid data for `maximum`. Must be an integer:", `maximum`))
        }
        self$`maximum` <- `maximum`
      }
      if (!is.null(`downloadUrl`)) {
        if (!(is.character(`downloadUrl`) && length(`downloadUrl`) == 1)) {
          stop(paste("Error! Invalid data for `downloadUrl`. Must be a string:", `downloadUrl`))
        }
        self$`downloadUrl` <- `downloadUrl`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
    #' @return Platform as a base R list.
    #' @examples
    #' # convert array of Platform (x) to a data frame
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
    #' Convert Platform to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlatformObject <- list()
      if (!is.null(self$`id`)) {
        PlatformObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        PlatformObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        PlatformObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`device`)) {
        PlatformObject[["device"]] <-
          self$extractSimpleType(self$`device`)
      }
      if (!is.null(self$`minimum`)) {
        PlatformObject[["minimum"]] <-
          self$`minimum`
      }
      if (!is.null(self$`maximum`)) {
        PlatformObject[["maximum"]] <-
          self$`maximum`
      }
      if (!is.null(self$`downloadUrl`)) {
        PlatformObject[["downloadUrl"]] <-
          self$`downloadUrl`
      }
      if (!is.null(self$`description`)) {
        PlatformObject[["description"]] <-
          self$`description`
      }
      return(PlatformObject)
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
    #' Deserialize JSON string into an instance of Platform
    #'
    #' @param input_json the JSON input
    #' @return the instance of Platform
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
      if (!is.null(this_object$`device`)) {
        `device_object` <- AudienceDevice$new()
        `device_object`$fromJSON(jsonlite::toJSON(this_object$`device`, auto_unbox = TRUE, digits = NA))
        self$`device` <- `device_object`
      }
      if (!is.null(this_object$`minimum`)) {
        self$`minimum` <- this_object$`minimum`
      }
      if (!is.null(this_object$`maximum`)) {
        self$`maximum` <- this_object$`maximum`
      }
      if (!is.null(this_object$`downloadUrl`)) {
        self$`downloadUrl` <- this_object$`downloadUrl`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Platform in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Platform
    #'
    #' @param input_json the JSON input
    #' @return the instance of Platform
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`device` <- AudienceDevice$new()$fromJSON(jsonlite::toJSON(this_object$`device`, auto_unbox = TRUE, digits = NA))
      self$`minimum` <- this_object$`minimum`
      self$`maximum` <- this_object$`maximum`
      self$`downloadUrl` <- this_object$`downloadUrl`
      self$`description` <- this_object$`description`
      self
    },

    #' @description
    #' Validate JSON input with respect to Platform and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Platform
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
# Platform$unlock()
#
## Below is an example to define the print function
# Platform$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Platform$lock()

