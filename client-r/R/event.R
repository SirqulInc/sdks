#' Create a new Event
#'
#' @description
#' Event Class
#'
#' @docType class
#' @title Event
#' @description Event Class
#' @format An \code{R6Class} generator object
#' @field sponsered  character [optional]
#' @field listing  \link{Listing} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Event <- R6::R6Class(
  "Event",
  public = list(
    `sponsered` = NULL,
    `listing` = NULL,

    #' @description
    #' Initialize a new Event class.
    #'
    #' @param sponsered sponsered
    #' @param listing listing
    #' @param ... Other optional arguments.
    initialize = function(`sponsered` = NULL, `listing` = NULL, ...) {
      if (!is.null(`sponsered`)) {
        if (!(is.logical(`sponsered`) && length(`sponsered`) == 1)) {
          stop(paste("Error! Invalid data for `sponsered`. Must be a boolean:", `sponsered`))
        }
        self$`sponsered` <- `sponsered`
      }
      if (!is.null(`listing`)) {
        stopifnot(R6::is.R6(`listing`))
        self$`listing` <- `listing`
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
    #' @return Event as a base R list.
    #' @examples
    #' # convert array of Event (x) to a data frame
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
    #' Convert Event to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EventObject <- list()
      if (!is.null(self$`sponsered`)) {
        EventObject[["sponsered"]] <-
          self$`sponsered`
      }
      if (!is.null(self$`listing`)) {
        EventObject[["listing"]] <-
          self$extractSimpleType(self$`listing`)
      }
      return(EventObject)
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
    #' Deserialize JSON string into an instance of Event
    #'
    #' @param input_json the JSON input
    #' @return the instance of Event
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sponsered`)) {
        self$`sponsered` <- this_object$`sponsered`
      }
      if (!is.null(this_object$`listing`)) {
        `listing_object` <- Listing$new()
        `listing_object`$fromJSON(jsonlite::toJSON(this_object$`listing`, auto_unbox = TRUE, digits = NA))
        self$`listing` <- `listing_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Event in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Event
    #'
    #' @param input_json the JSON input
    #' @return the instance of Event
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sponsered` <- this_object$`sponsered`
      self$`listing` <- Listing$new()$fromJSON(jsonlite::toJSON(this_object$`listing`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Event and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Event
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
# Event$unlock()
#
## Below is an example to define the print function
# Event$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Event$lock()

