#' Create a new PromoCode
#'
#' @description
#' PromoCode Class
#'
#' @docType class
#' @title PromoCode
#' @description PromoCode Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field active  character [optional]
#' @field valid  character [optional]
#' @field code  character [optional]
#' @field name  character [optional]
#' @field days  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromoCode <- R6::R6Class(
  "PromoCode",
  public = list(
    `id` = NULL,
    `active` = NULL,
    `valid` = NULL,
    `code` = NULL,
    `name` = NULL,
    `days` = NULL,

    #' @description
    #' Initialize a new PromoCode class.
    #'
    #' @param id id
    #' @param active active
    #' @param valid valid
    #' @param code code
    #' @param name name
    #' @param days days
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `active` = NULL, `valid` = NULL, `code` = NULL, `name` = NULL, `days` = NULL, ...) {
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
      if (!is.null(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`days`)) {
        if (!(is.numeric(`days`) && length(`days`) == 1)) {
          stop(paste("Error! Invalid data for `days`. Must be an integer:", `days`))
        }
        self$`days` <- `days`
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
    #' @return PromoCode as a base R list.
    #' @examples
    #' # convert array of PromoCode (x) to a data frame
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
    #' Convert PromoCode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromoCodeObject <- list()
      if (!is.null(self$`id`)) {
        PromoCodeObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`active`)) {
        PromoCodeObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`valid`)) {
        PromoCodeObject[["valid"]] <-
          self$`valid`
      }
      if (!is.null(self$`code`)) {
        PromoCodeObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`name`)) {
        PromoCodeObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`days`)) {
        PromoCodeObject[["days"]] <-
          self$`days`
      }
      return(PromoCodeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromoCode
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromoCode
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
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`days`)) {
        self$`days` <- this_object$`days`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromoCode in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromoCode
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromoCode
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`active` <- this_object$`active`
      self$`valid` <- this_object$`valid`
      self$`code` <- this_object$`code`
      self$`name` <- this_object$`name`
      self$`days` <- this_object$`days`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromoCode and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromoCode
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
# PromoCode$unlock()
#
## Below is an example to define the print function
# PromoCode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromoCode$lock()

