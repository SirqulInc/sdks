#' Create a new DateTimeZone
#'
#' @description
#' DateTimeZone Class
#'
#' @docType class
#' @title DateTimeZone
#' @description DateTimeZone Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field fixed  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DateTimeZone <- R6::R6Class(
  "DateTimeZone",
  public = list(
    `id` = NULL,
    `fixed` = NULL,

    #' @description
    #' Initialize a new DateTimeZone class.
    #'
    #' @param id id
    #' @param fixed fixed
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `fixed` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`fixed`)) {
        if (!(is.logical(`fixed`) && length(`fixed`) == 1)) {
          stop(paste("Error! Invalid data for `fixed`. Must be a boolean:", `fixed`))
        }
        self$`fixed` <- `fixed`
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
    #' @return DateTimeZone as a base R list.
    #' @examples
    #' # convert array of DateTimeZone (x) to a data frame
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
    #' Convert DateTimeZone to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DateTimeZoneObject <- list()
      if (!is.null(self$`id`)) {
        DateTimeZoneObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`fixed`)) {
        DateTimeZoneObject[["fixed"]] <-
          self$`fixed`
      }
      return(DateTimeZoneObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DateTimeZone
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateTimeZone
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`fixed`)) {
        self$`fixed` <- this_object$`fixed`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DateTimeZone in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DateTimeZone
    #'
    #' @param input_json the JSON input
    #' @return the instance of DateTimeZone
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`fixed` <- this_object$`fixed`
      self
    },

    #' @description
    #' Validate JSON input with respect to DateTimeZone and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DateTimeZone
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
# DateTimeZone$unlock()
#
## Below is an example to define the print function
# DateTimeZone$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DateTimeZone$lock()

