#' Create a new Interval
#'
#' @description
#' Interval Class
#'
#' @docType class
#' @title Interval
#' @description Interval Class
#' @format An \code{R6Class} generator object
#' @field end  character [optional]
#' @field start  character [optional]
#' @field chronology  \link{Chronology} [optional]
#' @field startMillis  integer [optional]
#' @field endMillis  integer [optional]
#' @field beforeNow  character [optional]
#' @field afterNow  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Interval <- R6::R6Class(
  "Interval",
  public = list(
    `end` = NULL,
    `start` = NULL,
    `chronology` = NULL,
    `startMillis` = NULL,
    `endMillis` = NULL,
    `beforeNow` = NULL,
    `afterNow` = NULL,

    #' @description
    #' Initialize a new Interval class.
    #'
    #' @param end end
    #' @param start start
    #' @param chronology chronology
    #' @param startMillis startMillis
    #' @param endMillis endMillis
    #' @param beforeNow beforeNow
    #' @param afterNow afterNow
    #' @param ... Other optional arguments.
    initialize = function(`end` = NULL, `start` = NULL, `chronology` = NULL, `startMillis` = NULL, `endMillis` = NULL, `beforeNow` = NULL, `afterNow` = NULL, ...) {
      if (!is.null(`end`)) {
        if (!is.character(`end`)) {
          stop(paste("Error! Invalid data for `end`. Must be a string:", `end`))
        }
        self$`end` <- `end`
      }
      if (!is.null(`start`)) {
        if (!is.character(`start`)) {
          stop(paste("Error! Invalid data for `start`. Must be a string:", `start`))
        }
        self$`start` <- `start`
      }
      if (!is.null(`chronology`)) {
        stopifnot(R6::is.R6(`chronology`))
        self$`chronology` <- `chronology`
      }
      if (!is.null(`startMillis`)) {
        if (!(is.numeric(`startMillis`) && length(`startMillis`) == 1)) {
          stop(paste("Error! Invalid data for `startMillis`. Must be an integer:", `startMillis`))
        }
        self$`startMillis` <- `startMillis`
      }
      if (!is.null(`endMillis`)) {
        if (!(is.numeric(`endMillis`) && length(`endMillis`) == 1)) {
          stop(paste("Error! Invalid data for `endMillis`. Must be an integer:", `endMillis`))
        }
        self$`endMillis` <- `endMillis`
      }
      if (!is.null(`beforeNow`)) {
        if (!(is.logical(`beforeNow`) && length(`beforeNow`) == 1)) {
          stop(paste("Error! Invalid data for `beforeNow`. Must be a boolean:", `beforeNow`))
        }
        self$`beforeNow` <- `beforeNow`
      }
      if (!is.null(`afterNow`)) {
        if (!(is.logical(`afterNow`) && length(`afterNow`) == 1)) {
          stop(paste("Error! Invalid data for `afterNow`. Must be a boolean:", `afterNow`))
        }
        self$`afterNow` <- `afterNow`
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
    #' @return Interval as a base R list.
    #' @examples
    #' # convert array of Interval (x) to a data frame
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
    #' Convert Interval to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IntervalObject <- list()
      if (!is.null(self$`end`)) {
        IntervalObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`start`)) {
        IntervalObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`chronology`)) {
        IntervalObject[["chronology"]] <-
          self$extractSimpleType(self$`chronology`)
      }
      if (!is.null(self$`startMillis`)) {
        IntervalObject[["startMillis"]] <-
          self$`startMillis`
      }
      if (!is.null(self$`endMillis`)) {
        IntervalObject[["endMillis"]] <-
          self$`endMillis`
      }
      if (!is.null(self$`beforeNow`)) {
        IntervalObject[["beforeNow"]] <-
          self$`beforeNow`
      }
      if (!is.null(self$`afterNow`)) {
        IntervalObject[["afterNow"]] <-
          self$`afterNow`
      }
      return(IntervalObject)
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
    #' Deserialize JSON string into an instance of Interval
    #'
    #' @param input_json the JSON input
    #' @return the instance of Interval
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`chronology`)) {
        `chronology_object` <- Chronology$new()
        `chronology_object`$fromJSON(jsonlite::toJSON(this_object$`chronology`, auto_unbox = TRUE, digits = NA))
        self$`chronology` <- `chronology_object`
      }
      if (!is.null(this_object$`startMillis`)) {
        self$`startMillis` <- this_object$`startMillis`
      }
      if (!is.null(this_object$`endMillis`)) {
        self$`endMillis` <- this_object$`endMillis`
      }
      if (!is.null(this_object$`beforeNow`)) {
        self$`beforeNow` <- this_object$`beforeNow`
      }
      if (!is.null(this_object$`afterNow`)) {
        self$`afterNow` <- this_object$`afterNow`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Interval in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Interval
    #'
    #' @param input_json the JSON input
    #' @return the instance of Interval
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`end` <- this_object$`end`
      self$`start` <- this_object$`start`
      self$`chronology` <- Chronology$new()$fromJSON(jsonlite::toJSON(this_object$`chronology`, auto_unbox = TRUE, digits = NA))
      self$`startMillis` <- this_object$`startMillis`
      self$`endMillis` <- this_object$`endMillis`
      self$`beforeNow` <- this_object$`beforeNow`
      self$`afterNow` <- this_object$`afterNow`
      self
    },

    #' @description
    #' Validate JSON input with respect to Interval and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Interval
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
# Interval$unlock()
#
## Below is an example to define the print function
# Interval$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Interval$lock()

