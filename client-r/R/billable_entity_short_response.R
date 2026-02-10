#' Create a new BillableEntityShortResponse
#'
#' @description
#' BillableEntityShortResponse Class
#'
#' @docType class
#' @title BillableEntityShortResponse
#' @description BillableEntityShortResponse Class
#' @format An \code{R6Class} generator object
#' @field billableEntityId  integer [optional]
#' @field name  character [optional]
#' @field responsible  \link{ProfileShortResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BillableEntityShortResponse <- R6::R6Class(
  "BillableEntityShortResponse",
  public = list(
    `billableEntityId` = NULL,
    `name` = NULL,
    `responsible` = NULL,

    #' @description
    #' Initialize a new BillableEntityShortResponse class.
    #'
    #' @param billableEntityId billableEntityId
    #' @param name name
    #' @param responsible responsible
    #' @param ... Other optional arguments.
    initialize = function(`billableEntityId` = NULL, `name` = NULL, `responsible` = NULL, ...) {
      if (!is.null(`billableEntityId`)) {
        if (!(is.numeric(`billableEntityId`) && length(`billableEntityId`) == 1)) {
          stop(paste("Error! Invalid data for `billableEntityId`. Must be an integer:", `billableEntityId`))
        }
        self$`billableEntityId` <- `billableEntityId`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`responsible`)) {
        stopifnot(R6::is.R6(`responsible`))
        self$`responsible` <- `responsible`
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
    #' @return BillableEntityShortResponse as a base R list.
    #' @examples
    #' # convert array of BillableEntityShortResponse (x) to a data frame
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
    #' Convert BillableEntityShortResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BillableEntityShortResponseObject <- list()
      if (!is.null(self$`billableEntityId`)) {
        BillableEntityShortResponseObject[["billableEntityId"]] <-
          self$`billableEntityId`
      }
      if (!is.null(self$`name`)) {
        BillableEntityShortResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`responsible`)) {
        BillableEntityShortResponseObject[["responsible"]] <-
          self$extractSimpleType(self$`responsible`)
      }
      return(BillableEntityShortResponseObject)
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
    #' Deserialize JSON string into an instance of BillableEntityShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BillableEntityShortResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`billableEntityId`)) {
        self$`billableEntityId` <- this_object$`billableEntityId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`responsible`)) {
        `responsible_object` <- ProfileShortResponse$new()
        `responsible_object`$fromJSON(jsonlite::toJSON(this_object$`responsible`, auto_unbox = TRUE, digits = NA))
        self$`responsible` <- `responsible_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BillableEntityShortResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BillableEntityShortResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BillableEntityShortResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`billableEntityId` <- this_object$`billableEntityId`
      self$`name` <- this_object$`name`
      self$`responsible` <- ProfileShortResponse$new()$fromJSON(jsonlite::toJSON(this_object$`responsible`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to BillableEntityShortResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BillableEntityShortResponse
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
# BillableEntityShortResponse$unlock()
#
## Below is an example to define the print function
# BillableEntityShortResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BillableEntityShortResponse$lock()

