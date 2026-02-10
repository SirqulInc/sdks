#' Create a new EventAttendanceResponse
#'
#' @description
#' EventAttendanceResponse Class
#'
#' @docType class
#' @title EventAttendanceResponse
#' @description EventAttendanceResponse Class
#' @format An \code{R6Class} generator object
#' @field event  \link{OfferShortResponse} [optional]
#' @field affiliatedCategories  list(\link{CategoryResponse}) [optional]
#' @field attendee  \link{AccountShortResponse} [optional]
#' @field friend  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EventAttendanceResponse <- R6::R6Class(
  "EventAttendanceResponse",
  public = list(
    `event` = NULL,
    `affiliatedCategories` = NULL,
    `attendee` = NULL,
    `friend` = NULL,

    #' @description
    #' Initialize a new EventAttendanceResponse class.
    #'
    #' @param event event
    #' @param affiliatedCategories affiliatedCategories
    #' @param attendee attendee
    #' @param friend friend
    #' @param ... Other optional arguments.
    initialize = function(`event` = NULL, `affiliatedCategories` = NULL, `attendee` = NULL, `friend` = NULL, ...) {
      if (!is.null(`event`)) {
        stopifnot(R6::is.R6(`event`))
        self$`event` <- `event`
      }
      if (!is.null(`affiliatedCategories`)) {
        stopifnot(is.vector(`affiliatedCategories`), length(`affiliatedCategories`) != 0)
        sapply(`affiliatedCategories`, function(x) stopifnot(R6::is.R6(x)))
        self$`affiliatedCategories` <- `affiliatedCategories`
      }
      if (!is.null(`attendee`)) {
        stopifnot(R6::is.R6(`attendee`))
        self$`attendee` <- `attendee`
      }
      if (!is.null(`friend`)) {
        if (!(is.logical(`friend`) && length(`friend`) == 1)) {
          stop(paste("Error! Invalid data for `friend`. Must be a boolean:", `friend`))
        }
        self$`friend` <- `friend`
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
    #' @return EventAttendanceResponse as a base R list.
    #' @examples
    #' # convert array of EventAttendanceResponse (x) to a data frame
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
    #' Convert EventAttendanceResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EventAttendanceResponseObject <- list()
      if (!is.null(self$`event`)) {
        EventAttendanceResponseObject[["event"]] <-
          self$extractSimpleType(self$`event`)
      }
      if (!is.null(self$`affiliatedCategories`)) {
        EventAttendanceResponseObject[["affiliatedCategories"]] <-
          self$extractSimpleType(self$`affiliatedCategories`)
      }
      if (!is.null(self$`attendee`)) {
        EventAttendanceResponseObject[["attendee"]] <-
          self$extractSimpleType(self$`attendee`)
      }
      if (!is.null(self$`friend`)) {
        EventAttendanceResponseObject[["friend"]] <-
          self$`friend`
      }
      return(EventAttendanceResponseObject)
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
    #' Deserialize JSON string into an instance of EventAttendanceResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of EventAttendanceResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event`)) {
        `event_object` <- OfferShortResponse$new()
        `event_object`$fromJSON(jsonlite::toJSON(this_object$`event`, auto_unbox = TRUE, digits = NA))
        self$`event` <- `event_object`
      }
      if (!is.null(this_object$`affiliatedCategories`)) {
        self$`affiliatedCategories` <- ApiClient$new()$deserializeObj(this_object$`affiliatedCategories`, "array[CategoryResponse]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`attendee`)) {
        `attendee_object` <- AccountShortResponse$new()
        `attendee_object`$fromJSON(jsonlite::toJSON(this_object$`attendee`, auto_unbox = TRUE, digits = NA))
        self$`attendee` <- `attendee_object`
      }
      if (!is.null(this_object$`friend`)) {
        self$`friend` <- this_object$`friend`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EventAttendanceResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EventAttendanceResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of EventAttendanceResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event` <- OfferShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`event`, auto_unbox = TRUE, digits = NA))
      self$`affiliatedCategories` <- ApiClient$new()$deserializeObj(this_object$`affiliatedCategories`, "array[CategoryResponse]", loadNamespace("openapi"))
      self$`attendee` <- AccountShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`attendee`, auto_unbox = TRUE, digits = NA))
      self$`friend` <- this_object$`friend`
      self
    },

    #' @description
    #' Validate JSON input with respect to EventAttendanceResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EventAttendanceResponse
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
# EventAttendanceResponse$unlock()
#
## Below is an example to define the print function
# EventAttendanceResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EventAttendanceResponse$lock()

