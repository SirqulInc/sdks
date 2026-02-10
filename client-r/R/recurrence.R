#' Create a new Recurrence
#'
#' @description
#' Recurrence Class
#'
#' @docType class
#' @title Recurrence
#' @description Recurrence Class
#' @format An \code{R6Class} generator object
#' @field frequency  character [optional]
#' @field daysOfWeek  list(integer) [optional]
#' @field start  character [optional]
#' @field count  integer [optional]
#' @field until  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Recurrence <- R6::R6Class(
  "Recurrence",
  public = list(
    `frequency` = NULL,
    `daysOfWeek` = NULL,
    `start` = NULL,
    `count` = NULL,
    `until` = NULL,

    #' @description
    #' Initialize a new Recurrence class.
    #'
    #' @param frequency frequency
    #' @param daysOfWeek daysOfWeek
    #' @param start start
    #' @param count count
    #' @param until until
    #' @param ... Other optional arguments.
    initialize = function(`frequency` = NULL, `daysOfWeek` = NULL, `start` = NULL, `count` = NULL, `until` = NULL, ...) {
      if (!is.null(`frequency`)) {
        if (!(`frequency` %in% c("DAILY", "WEEKLY", "MONTHLY", "ANNUALLY", "WEEK_DAY_ONLY"))) {
          stop(paste("Error! \"", `frequency`, "\" cannot be assigned to `frequency`. Must be \"DAILY\", \"WEEKLY\", \"MONTHLY\", \"ANNUALLY\", \"WEEK_DAY_ONLY\".", sep = ""))
        }
        if (!(is.character(`frequency`) && length(`frequency`) == 1)) {
          stop(paste("Error! Invalid data for `frequency`. Must be a string:", `frequency`))
        }
        self$`frequency` <- `frequency`
      }
      if (!is.null(`daysOfWeek`)) {
        stopifnot(is.vector(`daysOfWeek`), length(`daysOfWeek`) != 0)
        sapply(`daysOfWeek`, function(x) stopifnot(is.character(x)))
        self$`daysOfWeek` <- `daysOfWeek`
      }
      if (!is.null(`start`)) {
        if (!is.character(`start`)) {
          stop(paste("Error! Invalid data for `start`. Must be a string:", `start`))
        }
        self$`start` <- `start`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!is.null(`until`)) {
        if (!is.character(`until`)) {
          stop(paste("Error! Invalid data for `until`. Must be a string:", `until`))
        }
        self$`until` <- `until`
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
    #' @return Recurrence as a base R list.
    #' @examples
    #' # convert array of Recurrence (x) to a data frame
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
    #' Convert Recurrence to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecurrenceObject <- list()
      if (!is.null(self$`frequency`)) {
        RecurrenceObject[["frequency"]] <-
          self$`frequency`
      }
      if (!is.null(self$`daysOfWeek`)) {
        RecurrenceObject[["daysOfWeek"]] <-
          self$`daysOfWeek`
      }
      if (!is.null(self$`start`)) {
        RecurrenceObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`count`)) {
        RecurrenceObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`until`)) {
        RecurrenceObject[["until"]] <-
          self$`until`
      }
      return(RecurrenceObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Recurrence
    #'
    #' @param input_json the JSON input
    #' @return the instance of Recurrence
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`frequency`)) {
        if (!is.null(this_object$`frequency`) && !(this_object$`frequency` %in% c("DAILY", "WEEKLY", "MONTHLY", "ANNUALLY", "WEEK_DAY_ONLY"))) {
          stop(paste("Error! \"", this_object$`frequency`, "\" cannot be assigned to `frequency`. Must be \"DAILY\", \"WEEKLY\", \"MONTHLY\", \"ANNUALLY\", \"WEEK_DAY_ONLY\".", sep = ""))
        }
        self$`frequency` <- this_object$`frequency`
      }
      if (!is.null(this_object$`daysOfWeek`)) {
        self$`daysOfWeek` <- ApiClient$new()$deserializeObj(this_object$`daysOfWeek`, "array[integer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`until`)) {
        self$`until` <- this_object$`until`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Recurrence in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Recurrence
    #'
    #' @param input_json the JSON input
    #' @return the instance of Recurrence
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`frequency`) && !(this_object$`frequency` %in% c("DAILY", "WEEKLY", "MONTHLY", "ANNUALLY", "WEEK_DAY_ONLY"))) {
        stop(paste("Error! \"", this_object$`frequency`, "\" cannot be assigned to `frequency`. Must be \"DAILY\", \"WEEKLY\", \"MONTHLY\", \"ANNUALLY\", \"WEEK_DAY_ONLY\".", sep = ""))
      }
      self$`frequency` <- this_object$`frequency`
      self$`daysOfWeek` <- ApiClient$new()$deserializeObj(this_object$`daysOfWeek`, "array[integer]", loadNamespace("openapi"))
      self$`start` <- this_object$`start`
      self$`count` <- this_object$`count`
      self$`until` <- this_object$`until`
      self
    },

    #' @description
    #' Validate JSON input with respect to Recurrence and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Recurrence
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
# Recurrence$unlock()
#
## Below is an example to define the print function
# Recurrence$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Recurrence$lock()

